; Constants
osbyte_acknowledge_escape           = 126
osbyte_enter_language               = 142
osbyte_inkey                        = 129
osbyte_read_high_order_address      = 130
osbyte_read_himem                   = 132
osbyte_read_os_version              = 0
osbyte_read_oshwm                   = 131
osbyte_read_write_last_break_type   = 253
osbyte_read_write_tab_char          = 219
osbyte_select_output_stream         = 3
osfind_close                        = 0
osword_read_io_memory               = 5
osword_read_line                    = 0
our_osbyte_a                        = 163
our_osbyte_x                        = 192

; Memory locations
l0000       = &0000
l0001       = &0001
l0002       = &0002
l0003       = &0003
l0004       = &0004
l0005       = &0005
l0006       = &0006
l0007       = &0007
l0008       = &0008
l0009       = &0009
l000a       = &000a
l000b       = &000b
l000c       = &000c
l000d       = &000d
l000e       = &000e
l000f       = &000f
l0010       = &0010
l0011       = &0011
l0012       = &0012
l0013       = &0013
l0014       = &0014
l0015       = &0015
l0016       = &0016
l0017       = &0017
l0018       = &0018
l0019       = &0019
l001a       = &001a
l001b       = &001b
l001c       = &001c
l001e       = &001e
l001f       = &001f
l0020       = &0020
l0022       = &0022
l0024       = &0024
l0025       = &0025
l0026       = &0026
l0027       = &0027
l0028       = &0028
l0029       = &0029
l002a       = &002a
l002b       = &002b
l002c       = &002c
l002d       = &002d
l002f       = &002f
l0030       = &0030
l0031       = &0031
l0032       = &0032
l0033       = &0033
l0035       = &0035
l0036       = &0036
l0037       = &0037
l0038       = &0038
l0039       = &0039
l003a       = &003a
l003e       = &003e
l003f       = &003f
l0040       = &0040
l0041       = &0041
l0042       = &0042
l0043       = &0043
l0044       = &0044
l0045       = &0045
l004b       = &004b
l0053       = &0053
osbyte_a    = &00ef
osbyte_x    = &00f0
osbyte_y    = &00f1
os_text_ptr = &00f2
romsel_copy = &00f4
l00fd       = &00fd
l00fe       = &00fe
l00ff       = &00ff
l0100       = &0100
brkv        = &0202
l0400       = &0400
l0401       = &0401
l0402       = &0402
l0403       = &0403
l0404       = &0404
l0405       = &0405
l0407       = &0407
l0408       = &0408
l040a       = &040a
l040b       = &040b
l040d       = &040d
l040e       = &040e
l0410       = &0410
l0411       = &0411
l0412       = &0412
l0413       = &0413
l0414       = &0414
l0415       = &0415
l0416       = &0416
l0417       = &0417
l0418       = &0418
l041a       = &041a
l0420       = &0420
l0519       = &0519
l051a       = &051a
l061a       = &061a
l061b       = &061b
l061c       = &061c
l061d       = &061d
l0624       = &0624
l0625       = &0625
l0626       = &0626
l0627       = &0627
l062e       = &062e
l062f       = &062f
l0632       = &0632
l063a       = &063a
l0642       = &0642
l064a       = &064a
l0655       = &0655
l0656       = &0656
l0657       = &0657
l0658       = &0658
l0659       = &0659
l065a       = &065a
l065b       = &065b
l065c       = &065c
l0f03       = &0f03
l208d       = &208d
l6e69       = &6e69
l7420       = &7420
le8e8       = &e8e8
lf461       = &f461
osfind      = &ffce
osargs      = &ffda
osfile      = &ffdd
osrdch      = &ffe0
osasci      = &ffe3
osnewl      = &ffe7
oswrch      = &ffee
osword      = &fff1
osbyte      = &fff4
oscli       = &fff7

    org &8000

; Sideways ROM header
.rom_header
.language_entry
.pydis_start
    jmp language_handler                                              ; 8000: 4c 29 82    L).

.service_entry
    jmp service_handler                                               ; 8003: 4c 18 80    L..

.rom_type
    equb &c2                                                          ; 8006: c2          .
.copyright_offset
    equb copyright - rom_header                                       ; 8007: 14          .
.binary_version
    equb &0a                                                          ; 8008: 0a          .
.title
    equs "Pascal"                                                     ; 8009: 50 61 73... Pas
.version
    equb 0                                                            ; 800f: 00          .
    equs "1.10"                                                       ; 8010: 31 2e 31... 1.1
.copyright
    equb 0                                                            ; 8014: 00          .
    equs "(C)"                                                        ; 8015: 28 43 29    (C)

.service_handler
    cmp #4                                                            ; 8018: c9 04       ..
    beq unrecognised_command_handler                                  ; 801a: f0 27       .'
    cmp #7                                                            ; 801c: c9 07       ..
    beq unrecognised_osbyte_handler                                   ; 801e: f0 45       .E
    cmp #9                                                            ; 8020: c9 09       ..
    bne rts                                                           ; 8022: d0 11       ..
; *HELP handler
    tya                                                               ; 8024: 98          .
    pha                                                               ; 8025: 48          H
    ldy #&0c                                                          ; 8026: a0 0c       ..
.loop_c8028
    lda l8036,y                                                       ; 8028: b9 36 80    .6.
    jsr osasci                                                        ; 802b: 20 e3 ff     ..            ; Write character
    dey                                                               ; 802e: 88          .
    bpl loop_c8028                                                    ; 802f: 10 f7       ..
    pla                                                               ; 8031: 68          h
    tay                                                               ; 8032: a8          .
    lda #9                                                            ; 8033: a9 09       ..
.rts
    rts                                                               ; 8035: 60          `

.l8036
    equb &0d                                                          ; 8036: 0d          .
    equs "01.1 "                                                      ; 8037: 30 31 2e... 01.
.l803c
    equs "LACSAP"                                                     ; 803c: 4c 41 43... LAC
    equb &0d                                                          ; 8042: 0d          .

.unrecognised_command_handler
    tya                                                               ; 8043: 98          .
    pha                                                               ; 8044: 48          H
    ldx #5                                                            ; 8045: a2 05       ..
.loop_c8047
    lda (os_text_ptr),y                                               ; 8047: b1 f2       ..
    cmp #&2e ; '.'                                                    ; 8049: c9 2e       ..
    beq pascal_command_handler                                        ; 804b: f0 3e       .>
    and #&df                                                          ; 804d: 29 df       ).
    cmp l803c,x                                                       ; 804f: dd 3c 80    .<.
    bne c805e                                                         ; 8052: d0 0a       ..
    iny                                                               ; 8054: c8          .
    dex                                                               ; 8055: ca          .
    bpl loop_c8047                                                    ; 8056: 10 ef       ..
    lda (os_text_ptr),y                                               ; 8058: b1 f2       ..
    cmp #&21 ; '!'                                                    ; 805a: c9 21       .!
    bcc pascal_command_handler                                        ; 805c: 90 2d       .-
.c805e
    pla                                                               ; 805e: 68          h
    tay                                                               ; 805f: a8          .
    lda #4                                                            ; 8060: a9 04       ..
    ldx romsel_copy                                                   ; 8062: a6 f4       ..
    rts                                                               ; 8064: 60          `

.unrecognised_osbyte_handler
    lda osbyte_a                                                      ; 8065: a5 ef       ..
    cmp #our_osbyte_a                                                 ; 8067: c9 a3       ..
    bne unrecognised_osbyte_handler_done                              ; 8069: d0 27       .'
    lda osbyte_x                                                      ; 806b: a5 f0       ..
    cmp #our_osbyte_x                                                 ; 806d: c9 c0       ..
    bne unrecognised_osbyte_handler_done                              ; 806f: d0 21       .!
    lda osbyte_y                                                      ; 8071: a5 f1       ..
    beq unrecognised_osbyte_handler_done                              ; 8073: f0 1d       ..
    tax                                                               ; 8075: aa          .
    lda osbyte_163_192_x_minus_1_table - 1,x                          ; 8076: bd 94 80    ...
    tax                                                               ; 8079: aa          .
    ldy #3                                                            ; 807a: a0 03       ..
    lda #osbyte_read_write_last_break_type                            ; 807c: a9 fd       ..
    jsr osbyte                                                        ; 807e: 20 f4 ff     ..            ; Read/Write type of last reset
    lda #osbyte_select_output_stream                                  ; 8081: a9 03       ..
    ldx #%00010110                                                    ; 8083: a2 16       ..
    jsr osbyte                                                        ; 8085: 20 f4 ff     ..            ; Select output stream based on X: disable RS232 output; disable VDU driver; disable printer output; disable printer despite CTRL-B/C state; disable SPOOLed output; enable printer output even without VDU 1 first
    stx l0100                                                         ; 8088: 8e 00 01    ...            ; X is the previous output stream status byte
.pascal_command_handler
    lda #osbyte_enter_language                                        ; 808b: a9 8e       ..
    ldx romsel_copy                                                   ; 808d: a6 f4       ..             ; X=ROM number
    jmp osbyte                                                        ; 808f: 4c f4 ff    L..            ; Enter language ROM X

.unrecognised_osbyte_handler_done
    lda #7                                                            ; 8092: a9 07       ..
    rts                                                               ; 8094: 60          `

.osbyte_163_192_x_minus_1_table
    equb &80, &c0, &e0                                                ; 8095: 80 c0 e0    ...

.brkv_handler
    ldx #&ff                                                          ; 8098: a2 ff       ..
    txs                                                               ; 809a: 9a          .
    ldx l0416                                                         ; 809b: ae 16 04    ...
    cpx #2                                                            ; 809e: e0 02       ..
    bne c80a5                                                         ; 80a0: d0 03       ..
    jsr sub_cb2f5                                                     ; 80a2: 20 f5 b2     ..
.c80a5
    jsr sub_c80e5                                                     ; 80a5: 20 e5 80     ..
    ldx l0416                                                         ; 80a8: ae 16 04    ...
    beq c80dc                                                         ; 80ab: f0 2f       ./
    dex                                                               ; 80ad: ca          .
    beq c80e2                                                         ; 80ae: f0 32       .2
    dex                                                               ; 80b0: ca          .
    beq c80b6                                                         ; 80b1: f0 03       ..
    jmp cb752                                                         ; 80b3: 4c 52 b7    LR.

.c80b6
    ldy #0                                                            ; 80b6: a0 00       ..
    lda (l00fd),y                                                     ; 80b8: b1 fd       ..
    bne c80bf                                                         ; 80ba: d0 03       ..
    jmp cb741                                                         ; 80bc: 4c 41 b7    LA.

.c80bf
    jsr sub_cb1eb                                                     ; 80bf: 20 eb b1     ..
    jsr sub_cb284                                                     ; 80c2: 20 84 b2     ..
    ora l208d                                                         ; 80c5: 0d 8d 20    ..
    stx l7420                                                         ; 80c8: 8e 20 74    . t
    equb &ef                                                          ; 80cb: ef          .
    equs "continu"                                                    ; 80cc: 63 6f 6e... con
    equb &e5, &8d, &ea, &20,   7, &b2, &4c, &d6, &80                  ; 80d3: e5 8d ea... ...

.c80dc
    inc l0416                                                         ; 80dc: ee 16 04    ...
    jsr sub_c90dd                                                     ; 80df: 20 dd 90     ..
.c80e2
    jmp c8344                                                         ; 80e2: 4c 44 83    LD.

.sub_c80e5
    ldx l00fd                                                         ; 80e5: a6 fd       ..
    ldy l00fe                                                         ; 80e7: a4 fe       ..
.sub_c80e9
    jsr osnewl                                                        ; 80e9: 20 e7 ff     ..            ; Write newline (characters 10 and 13)
    lda #0                                                            ; 80ec: a9 00       ..
    jsr sub_c817a                                                     ; 80ee: 20 7a 81     z.
    lda l0416                                                         ; 80f1: ad 16 04    ...
    bne c8101                                                         ; 80f4: d0 0b       ..
    lda l065b                                                         ; 80f6: ad 5b 06    .[.
    ora l065c                                                         ; 80f9: 0d 5c 06    .\.
    beq c8101                                                         ; 80fc: f0 03       ..
    jsr sub_c8104                                                     ; 80fe: 20 04 81     ..
.c8101
    jmp osnewl                                                        ; 8101: 4c e7 ff    L..            ; Write newline (characters 10 and 13)

.sub_c8104
    jsr sub_cb284                                                     ; 8104: 20 84 b2     ..
    jsr lf461                                                         ; 8107: 20 61 f4     a.
    jmp (l6e69)                                                       ; 810a: 6c 69 6e    lin

    equb &e5, &ea, &ae, &5b,   6, &ac, &5c,   6, &20, &0c, &b3, &20   ; 810d: e5 ea ae... ...
    equb &84, &b2, &20, &69, &ee, &ea, &a9,   0, &85, &16, &85,   8   ; 8119: 84 b2 20... ..
    equb &85,   9, &a4, &16, &18, &a5, &1e, &71, &1c, &85, &0c, &aa   ; 8125: 85 09 a4... ...
    equb &c8, &a5, &1f, &71, &1c, &85, &0d, &b0, &31, &e4,   2, &e5   ; 8131: c8 a5 1f... ...
    equb   3, &b0, &25, &a0,   1, &b1, &0c, &65, &0c, &85, &10, &a9   ; 813d: 03 b0 25... ..%
    equb   0, &65, &0d, &85, &11, &a0,   3, &b1, &10, &a0,   6, &d1   ; 8149: 00 65 0d... .e.
    equb &1a, &d0, &0d, &a4, &0d, &98, &e4,   8, &e5,   9, &90,   4   ; 8155: 1a d0 0d... ...
    equb &86,   8, &84,   9, &e6, &16, &e6, &16, &d0, &bc, &a0,   1   ; 8161: 86 08 84... ...
    equb &b1,   8, &aa, &c8, &b1,   8, &20, &ee, &ff, &ca, &d0, &f7   ; 816d: b1 08 aa... ...

.loop_c8179
    rts                                                               ; 8179: 60          `

.sub_c817a
    sta l0014                                                         ; 817a: 85 14       ..
    stx l0006                                                         ; 817c: 86 06       ..
    sty l0007                                                         ; 817e: 84 07       ..
.c8180
    inc l0006                                                         ; 8180: e6 06       ..
    bne c8186                                                         ; 8182: d0 02       ..
    inc l0007                                                         ; 8184: e6 07       ..
.c8186
    ldy #0                                                            ; 8186: a0 00       ..
    lda (l0006),y                                                     ; 8188: b1 06       ..
    cmp l0014                                                         ; 818a: c5 14       ..
    beq loop_c8179                                                    ; 818c: f0 eb       ..
    tax                                                               ; 818e: aa          .
    bpl c81bc                                                         ; 818f: 10 2b       .+
    ldx #&ff                                                          ; 8191: a2 ff       ..
    and #&7f                                                          ; 8193: 29 7f       ).
    beq c81a7                                                         ; 8195: f0 10       ..
    cmp #&20 ; ' '                                                    ; 8197: c9 20       .
    bcs c81b7                                                         ; 8199: b0 1c       ..
    sta l0016                                                         ; 819b: 85 16       ..
.c819d
    inx                                                               ; 819d: e8          .
    lda l81c2,x                                                       ; 819e: bd c2 81    ...
    bpl c819d                                                         ; 81a1: 10 fa       ..
    dec l0016                                                         ; 81a3: c6 16       ..
    bne c819d                                                         ; 81a5: d0 f6       ..
.c81a7
    inx                                                               ; 81a7: e8          .
    lda l81c2,x                                                       ; 81a8: bd c2 81    ...
    and #&7f                                                          ; 81ab: 29 7f       ).
    jsr oswrch                                                        ; 81ad: 20 ee ff     ..            ; Write character
    lda l81c2,x                                                       ; 81b0: bd c2 81    ...
    bpl c81a7                                                         ; 81b3: 10 f2       ..
    bmi c8180                                                         ; 81b5: 30 c9       0.
.c81b7
    jsr oswrch                                                        ; 81b7: 20 ee ff     ..            ; Write character
    lda #&20 ; ' '                                                    ; 81ba: a9 20       .
.c81bc
    jsr osasci                                                        ; 81bc: 20 e3 ff     ..            ; Write character 32
    jmp c8180                                                         ; 81bf: 4c 80 81    L..

.l81c2
    equb &4e, &6f, &a0                                                ; 81c2: 4e 6f a0    No.
    equs "onl"                                                        ; 81c5: 6f 6e 6c    onl
    equb &f9                                                          ; 81c8: f9          .
    equs "Bad"                                                        ; 81c9: 42 61 64    Bad
    equb &a0                                                          ; 81cc: a0          .
    equs "variabl"                                                    ; 81cd: 76 61 72... var
    equb &e5                                                          ; 81d4: e5          .
    equs "Undefined"                                                  ; 81d5: 55 6e 64... Und
    equb &a0                                                          ; 81de: a0          .
    equs "overflo"                                                    ; 81df: 6f 76 65... ove
    equb &f7                                                          ; 81e6: f7          .
    equs "fil"                                                        ; 81e7: 66 69 6c    fil
    equb &e5                                                          ; 81ea: e5          .
    equs "rang"                                                       ; 81eb: 72 61 6e... ran
    equb &e5                                                          ; 81ef: e5          .
    equs "ope"                                                        ; 81f0: 6f 70 65    ope
    equb &ee                                                          ; 81f3: ee          .
    equs "Field"                                                      ; 81f4: 46 69 65... Fie
    equb &a0                                                          ; 81f9: a0          .
    equs "tex"                                                        ; 81fa: 74 65 78    tex
    equb &f4                                                          ; 81fd: f4          .
    equs "Not"                                                        ; 81fe: 4e 6f 74    Not
    equb &a0                                                          ; 8201: a0          .
    equs "numbe"                                                      ; 8202: 6e 75 6d... num
    equb &f2                                                          ; 8207: f2          .
    equs "********"                                                   ; 8208: 2a 2a 2a... ***
    equb &aa                                                          ; 8210: aa          .
    equs "Escap"                                                      ; 8211: 45 73 63... Esc
    equb &e5                                                          ; 8216: e5          .
    equs "foun"                                                       ; 8217: 66 6f 75... fou
    equb &e4                                                          ; 821b: e4          .
    equs "eplac"                                                      ; 821c: 65 70 6c... epl
    equb &e5                                                          ; 8221: e5          .
    equs "Insert"                                                     ; 8222: 49 6e 73... Ins
    equb &a0                                                          ; 8228: a0          .

.language_handler
    cli                                                               ; 8229: 58          X
    cld                                                               ; 822a: d8          .
    lda #<brkv_handler                                                ; 822b: a9 98       ..
    sta brkv                                                          ; 822d: 8d 02 02    ...
    lda #>brkv_handler                                                ; 8230: a9 80       ..
    sta brkv+1                                                        ; 8232: 8d 03 02    ...
; Set last break type to 0 and get old value in X
    ldx #0                                                            ; 8235: a2 00       ..
    ldy #3                                                            ; 8237: a0 03       ..
    lda #osbyte_read_write_last_break_type                            ; 8239: a9 fd       ..
    jsr osbyte                                                        ; 823b: 20 f4 ff     ..            ; Read/Write type of last reset
; Branch if b7 of original last break type clear
    txa                                                               ; 823e: 8a          .              ; X=value of type of last reset
    bpl real_language_entry                                           ; 823f: 10 66       .f
    pha                                                               ; 8241: 48          H
    jsr sub_ca493                                                     ; 8242: 20 93 a4     ..
    lda #1                                                            ; 8245: a9 01       ..
    sta l003f                                                         ; 8247: 85 3f       .?
    jsr sub_c8482                                                     ; 8249: 20 82 84     ..
    tax                                                               ; 824c: aa          .
    lda #osbyte_select_output_stream                                  ; 824d: a9 03       ..
    jsr osbyte                                                        ; 824f: 20 f4 ff     ..            ; Select output stream based on X
    pla                                                               ; 8252: 68          h
; Branch if b6 of original last break type clear
    rol a                                                             ; 8253: 2a          *
    bpl real_language_entry                                           ; 8254: 10 51       .Q
; Branch if b5 of original last break type clear
    rol a                                                             ; 8256: 2a          *
    bpl c8265                                                         ; 8257: 10 0c       ..
    jsr sub_c9184                                                     ; 8259: 20 84 91     ..
    jsr sub_c80e9                                                     ; 825c: 20 e9 80     ..
    jsr sub_c90dd                                                     ; 825f: 20 dd 90     ..
    jmp c8344                                                         ; 8262: 4c 44 83    LD.

.c8265
    lda l0411                                                         ; 8265: ad 11 04    ...
    beq c82a4                                                         ; 8268: f0 3a       .:
    ldx l0410                                                         ; 826a: ae 10 04    ...
    lda l040a,x                                                       ; 826d: bd 0a 04    ...
    sta l0405,x                                                       ; 8270: 9d 05 04    ...
    sta l000e                                                         ; 8273: 85 0e       ..
    lda l040d,x                                                       ; 8275: bd 0d 04    ...
    sta l0408,x                                                       ; 8278: 9d 08 04    ...
    sta l000f                                                         ; 827b: 85 0f       ..
    ldy #&76 ; 'v'                                                    ; 827d: a0 76       .v
    lda (l0018),y                                                     ; 827f: b1 18       ..
    sta l000a                                                         ; 8281: 85 0a       ..
    iny                                                               ; 8283: c8          .
    lda (l0018),y                                                     ; 8284: b1 18       ..
    sta l000b                                                         ; 8286: 85 0b       ..
    iny                                                               ; 8288: c8          .
    lda (l0018),y                                                     ; 8289: b1 18       ..
    tax                                                               ; 828b: aa          .
    iny                                                               ; 828c: c8          .
    lda (l0018),y                                                     ; 828d: b1 18       ..
    tay                                                               ; 828f: a8          .
    jsr some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes    ; 8290: 20 d5 89     ..
    ldx l0410                                                         ; 8293: ae 10 04    ...
    inx                                                               ; 8296: e8          .
    stx l0411                                                         ; 8297: 8e 11 04    ...
    lda l000e                                                         ; 829a: a5 0e       ..
    sta l040a,x                                                       ; 829c: 9d 0a 04    ...
    lda l000f                                                         ; 829f: a5 0f       ..
    sta l040d,x                                                       ; 82a1: 9d 0d 04    ...
.c82a4
    jmp c8344                                                         ; 82a4: 4c 44 83    LD.

.real_language_entry
    lda #osbyte_read_os_version                                       ; 82a7: a9 00       ..
    ldx #1                                                            ; 82a9: a2 01       ..

    jsr osbyte                                                        ; 82ab: 20 f4 ff     ..            ; Read OS version number into X
    ; X is the OS version number:
    ;     X=0, OS 1.00 (Early BBC B or Electron OS 1.00)
    ;     X=1, OS 1.20 or American OS
    ;     X=2, OS 2.00 (BBC B+)
    ;     X=3, OS 3.2/3.5 (Master 128)
    ;     X=4, OS 4.0 (Master Econet Terminal)
    ;     X=5, OS 5.0 (Master Compact)
    cpx #3                                                            ; 82ae: e0 03       ..
    bcs c82c1                                                         ; 82b0: b0 0f       ..
    lda #osbyte_inkey                                                 ; 82b2: a9 81       ..
    ldx #0                                                            ; 82b4: a2 00       ..
    ldy #&fe                                                          ; 82b6: a0 fe       ..
    jsr osbyte                                                        ; 82b8: 20 f4 ff     ..            ; Read the machine type

    ; X is the machine type:
    ;     X=0, BBC microcomputer OS 0.10
    ;     X=1, Acorn Electron OS 1.00
    ;     X=255, BBC microcomputer OS 1.00 or 1.20
    ;     X=254, BBC microcomputer OS A1.0 (USA)
    ;     X=253, Master 128 OS 3.20 or 3.50
    ;     X=251, BBC B+ OS 2.00
    ;     X=250, Acorn Business Computer OS 1.00 or 2.00
    ;     X=247, Master Econet Terminal OS 4.00
    ;     X=245, Master Compact OS 5.10
    cpx #1                                                            ; 82bb: e0 01       ..
    beq c82c1                                                         ; 82bd: f0 02       ..
    ldx #0                                                            ; 82bf: a2 00       ..
.c82c1
    stx l0417                                                         ; 82c1: 8e 17 04    ...
    lda #osbyte_read_high_order_address                               ; 82c4: a9 82       ..
    jsr osbyte                                                        ; 82c6: 20 f4 ff     ..            ; Read the filing system 'machine high order address'
    stx l0400                                                         ; 82c9: 8e 00 04    ...            ; X and Y contain the machine high order address (low, high)
    sty l0401                                                         ; 82cc: 8c 01 04    ...
    lda #osbyte_read_oshwm                                            ; 82cf: a9 83       ..
    jsr osbyte                                                        ; 82d1: 20 f4 ff     ..            ; Read top of operating system RAM address (OSHWM)
    stx l0004                                                         ; 82d4: 86 04       ..             ; X and Y contain the address of OSHWM (low, high)
    sty l0005                                                         ; 82d6: 84 05       ..
    stx l0404                                                         ; 82d8: 8e 04 04    ...
    sty l0407                                                         ; 82db: 8c 07 04    ...
    stx l040a                                                         ; 82de: 8e 0a 04    ...
    sty l040d                                                         ; 82e1: 8c 0d 04    ...
    stx l0405                                                         ; 82e4: 8e 05 04    ...
    sty l0408                                                         ; 82e7: 8c 08 04    ...
    jsr sub_c855d                                                     ; 82ea: 20 5d 85     ].
    ldx #0                                                            ; 82ed: a2 00       ..
    stx l0418                                                         ; 82ef: 8e 18 04    ...
    jsr sub_ca493                                                     ; 82f2: 20 93 a4     ..
    lda #&f2                                                          ; 82f5: a9 f2       ..
    sta l003e                                                         ; 82f7: 85 3e       .>
    jsr sub_c8482                                                     ; 82f9: 20 82 84     ..
    pha                                                               ; 82fc: 48          H
    jsr sub_c8482                                                     ; 82fd: 20 82 84     ..
    sta l003f                                                         ; 8300: 85 3f       .?
    pla                                                               ; 8302: 68          h
    sta l003e                                                         ; 8303: 85 3e       .>
.loop_c8305
    jsr sub_c8482                                                     ; 8305: 20 82 84     ..
    cmp #&20 ; ' '                                                    ; 8308: c9 20       .
    bne c831a                                                         ; 830a: d0 0e       ..
    jsr sub_c8482                                                     ; 830c: 20 82 84     ..
    cmp #&40 ; '@'                                                    ; 830f: c9 40       .@
    bne c831a                                                         ; 8311: d0 07       ..
    jsr sub_c8482                                                     ; 8313: 20 82 84     ..
    cmp #&0d                                                          ; 8316: c9 0d       ..
    beq c8324                                                         ; 8318: f0 0a       ..
.c831a
    cmp #&0d                                                          ; 831a: c9 0d       ..
    bne loop_c8305                                                    ; 831c: d0 e7       ..
    jsr sub_c860a                                                     ; 831e: 20 0a 86     ..
    jmp c8344                                                         ; 8321: 4c 44 83    LD.

.c8324
    ldy #0                                                            ; 8324: a0 00       ..
    sty l0029                                                         ; 8326: 84 29       .)
    lda l0001                                                         ; 8328: a5 01       ..
    sta l002a                                                         ; 832a: 85 2a       .*
.c832c
    lda (l0029),y                                                     ; 832c: b1 29       .)
    beq c8337                                                         ; 832e: f0 07       ..
    iny                                                               ; 8330: c8          .
    bne c832c                                                         ; 8331: d0 f9       ..
    inc l002a                                                         ; 8333: e6 2a       .*
    bne c832c                                                         ; 8335: d0 f5       ..
.c8337
    clc                                                               ; 8337: 18          .
    tya                                                               ; 8338: 98          .
    adc l0029                                                         ; 8339: 65 29       e)
    sta l0029                                                         ; 833b: 85 29       .)
    bcc c8341                                                         ; 833d: 90 02       ..
    inc l002a                                                         ; 833f: e6 2a       .*
.c8341
    jsr sub_cb77e                                                     ; 8341: 20 7e b7     ~.
.c8344
    ldx #&ff                                                          ; 8344: a2 ff       ..
    txs                                                               ; 8346: 9a          .
    ldx #1                                                            ; 8347: a2 01       ..
    stx l0416                                                         ; 8349: 8e 16 04    ...
.c834c
    lda #&25 ; '%'                                                    ; 834c: a9 25       .%
    jsr oswrch                                                        ; 834e: 20 ee ff     ..            ; Write character 37
    jsr sub_c8494                                                     ; 8351: 20 94 84     ..
    beq c834c                                                         ; 8354: f0 f6       ..
    cmp #&2a ; '*'                                                    ; 8356: c9 2a       .*
    bne c8364                                                         ; 8358: d0 0a       ..
    ldx #<(l051a)                                                     ; 835a: a2 1a       ..
    ldy #>(l051a)                                                     ; 835c: a0 05       ..
    jsr oscli                                                         ; 835e: 20 f7 ff     ..
    jmp c834c                                                         ; 8361: 4c 4c 83    LL.

.c8364
    lda #&40 ; '@'                                                    ; 8364: a9 40       .@
    sta l0008                                                         ; 8366: 85 08       ..
    lda #&84                                                          ; 8368: a9 84       ..
    sta l0009                                                         ; 836a: 85 09       ..
.c836c
    sty l0015                                                         ; 836c: 84 15       ..
    lda l8466,y                                                       ; 836e: b9 66 84    .f.
    beq c83b4                                                         ; 8371: f0 41       .A
    tax                                                               ; 8373: aa          .
    ldy #&ff                                                          ; 8374: a0 ff       ..
.loop_c8376
    iny                                                               ; 8376: c8          .
    lda (l000c),y                                                     ; 8377: b1 0c       ..
    cmp #&2e ; '.'                                                    ; 8379: c9 2e       ..
    beq c839e                                                         ; 837b: f0 21       .!
    and #&df                                                          ; 837d: 29 df       ).
    cmp (l0008),y                                                     ; 837f: d1 08       ..
    bne c838d                                                         ; 8381: d0 0a       ..
    dex                                                               ; 8383: ca          .
    bne loop_c8376                                                    ; 8384: d0 f0       ..
    iny                                                               ; 8386: c8          .
    lda (l000c),y                                                     ; 8387: b1 0c       ..
    cmp #&21 ; '!'                                                    ; 8389: c9 21       .!
    bcc c839f                                                         ; 838b: 90 12       ..
.c838d
    ldy l0015                                                         ; 838d: a4 15       ..
    clc                                                               ; 838f: 18          .
    lda l0008                                                         ; 8390: a5 08       ..
    adc l8466,y                                                       ; 8392: 79 66 84    yf.
    sta l0008                                                         ; 8395: 85 08       ..
    bcc c839b                                                         ; 8397: 90 02       ..
    inc l0009                                                         ; 8399: e6 09       ..
.c839b
    iny                                                               ; 839b: c8          .
    bne c836c                                                         ; 839c: d0 ce       ..
.c839e
    iny                                                               ; 839e: c8          .
.c839f
    jsr c84bb                                                         ; 839f: 20 bb 84     ..
    ldx l0015                                                         ; 83a2: a6 15       ..
    lda l8470,x                                                       ; 83a4: bd 70 84    .p.
    sta l0008                                                         ; 83a7: 85 08       ..
    lda l8479,x                                                       ; 83a9: bd 79 84    .y.
    sta l0009                                                         ; 83ac: 85 09       ..
    jsr sub_c87e2                                                     ; 83ae: 20 e2 87     ..
    jmp c834c                                                         ; 83b1: 4c 4c 83    LL.

.c83b4
    jsr sub_c999a                                                     ; 83b4: 20 9a 99     ..
    bcs c83c4                                                         ; 83b7: b0 0b       ..
    brk                                                               ; 83b9: 00          .

    equb   1, &82                                                     ; 83ba: 01 82       ..
    equs "command"                                                    ; 83bc: 63 6f 6d... com
    equb 0                                                            ; 83c3: 00          .

.c83c4
    jsr sub_c857a                                                     ; 83c4: 20 7a 85     z.
    ldy l0017                                                         ; 83c7: a4 17       ..
    dey                                                               ; 83c9: 88          .
    ldx #&ff                                                          ; 83ca: a2 ff       ..
.loop_c83cc
    inx                                                               ; 83cc: e8          .
.c83cd
    iny                                                               ; 83cd: c8          .
    lda l051a,y                                                       ; 83ce: b9 1a 05    ...
    cmp #&22 ; '"'                                                    ; 83d1: c9 22       ."
    beq loop_c83cc                                                    ; 83d3: f0 f7       ..
    cmp #&20 ; ' '                                                    ; 83d5: c9 20       .
    bcc c83df                                                         ; 83d7: 90 06       ..
    bne c83cd                                                         ; 83d9: d0 f2       ..
    txa                                                               ; 83db: 8a          .
    ror a                                                             ; 83dc: 6a          j
    bcs c83cd                                                         ; 83dd: b0 ee       ..
.c83df
    jsr sub_c84b3                                                     ; 83df: 20 b3 84     ..
    lda l0411                                                         ; 83e2: ad 11 04    ...
    beq c8412                                                         ; 83e5: f0 2b       .+
    lda l0402                                                         ; 83e7: ad 02 04    ...
    sta l062e                                                         ; 83ea: 8d 2e 06    ...
    lda l0403                                                         ; 83ed: ad 03 04    ...
    sta l062f                                                         ; 83f0: 8d 2f 06    ./.
    ldx l0411                                                         ; 83f3: ae 11 04    ...
    lda l0404,x                                                       ; 83f6: bd 04 04    ...
    sta l001e                                                         ; 83f9: 85 1e       ..
    lda l0407,x                                                       ; 83fb: bd 07 04    ...
    sta l001f                                                         ; 83fe: 85 1f       ..
    lda l040a,x                                                       ; 8400: bd 0a 04    ...
    sta l0018                                                         ; 8403: 85 18       ..
    lda l040d,x                                                       ; 8405: bd 0d 04    ...
    sta l0019                                                         ; 8408: 85 19       ..
    ldx #0                                                            ; 840a: a2 00       ..
    stx l0659                                                         ; 840c: 8e 59 06    .Y.
    jmp c87a3                                                         ; 840f: 4c a3 87    L..

.c8412
    brk                                                               ; 8412: 00          .

    equb   3, &80                                                     ; 8413: 03 80       ..
    equs "code"                                                       ; 8415: 63 6f 64... cod
    equb   0, &ac, &11,   4, &f0, &f3, &b9,   4,   4, &8d, &24,   6   ; 8419: 00 ac 11... ...
    equb &b9,   7,   4, &8d, &25,   6, &be, &0a,   4, &b9, &0d,   4   ; 8425: b9 07 04... ...
    equb &a8, &8e, &28,   6, &8c, &29,   6, &a9,   0, &20, &89, &91   ; 8431: a8 8e 28... ..(
    equb &4c, &dd, &ff                                                ; 843d: 4c dd ff    L..
    equs "CLOSECOMPILEEDITGOLOADMODERUNSAVETRACE"                     ; 8440: 43 4c 4f... CLO
.l8466
    equb 5, 7, 4, 2, 4, 4, 3, 4, 5, 0                                 ; 8466: 05 07 04... ...
.l8470
    equb &eb, &88,   5, &e2, &7a,   8, &c4, &1a, &ff                  ; 8470: eb 88 05... ...
.l8479
    equb &85, &86, &af, &83, &85, &85, &83, &84, &84                  ; 8479: 85 86 af... ...

.sub_c8482
    lda #osword_read_io_memory                                        ; 8482: a9 05       ..
    ldx #<(l003e)                                                     ; 8484: a2 3e       .>
    ldy #>(l003e)                                                     ; 8486: a0 00       ..
    jsr osword                                                        ; 8488: 20 f1 ff     ..            ; Read byte of I/O processor memory
    inc l003e                                                         ; 848b: e6 3e       .>
    bne c8491                                                         ; 848d: d0 02       ..
    inc l003f                                                         ; 848f: e6 3f       .?
.c8491
    lda l0042                                                         ; 8491: a5 42       .B
    rts                                                               ; 8493: 60          `

.sub_c8494
    jsr sub_c996e                                                     ; 8494: 20 6e 99     n.
    tya                                                               ; 8497: 98          .
    beq c84a4                                                         ; 8498: f0 0a       ..
.loop_c849a
    lda l0519,y                                                       ; 849a: b9 19 05    ...
    cmp #&20 ; ' '                                                    ; 849d: c9 20       .
    bne c84a4                                                         ; 849f: d0 03       ..
    dey                                                               ; 84a1: 88          .
    bne loop_c849a                                                    ; 84a2: d0 f6       ..
.c84a4
    lda #&0d                                                          ; 84a4: a9 0d       ..
    sta l051a,y                                                       ; 84a6: 99 1a 05    ...
    ldy #0                                                            ; 84a9: a0 00       ..
    jsr sub_c84b3                                                     ; 84ab: 20 b3 84     ..
    lda (l000c),y                                                     ; 84ae: b1 0c       ..
    cmp #&0d                                                          ; 84b0: c9 0d       ..
    rts                                                               ; 84b2: 60          `

.sub_c84b3
    lda #&1a                                                          ; 84b3: a9 1a       ..
    sta l000c                                                         ; 84b5: 85 0c       ..
    lda #5                                                            ; 84b7: a9 05       ..
    sta l000d                                                         ; 84b9: 85 0d       ..
.c84bb
    lda (l000c),y                                                     ; 84bb: b1 0c       ..
    cmp #&20 ; ' '                                                    ; 84bd: c9 20       .
    bne c84c4                                                         ; 84bf: d0 03       ..
    iny                                                               ; 84c1: c8          .
    bne c84bb                                                         ; 84c2: d0 f7       ..
.c84c4
    clc                                                               ; 84c4: 18          .
    tya                                                               ; 84c5: 98          .
    adc l000c                                                         ; 84c6: 65 0c       e.
    sta l000c                                                         ; 84c8: 85 0c       ..
    sta l061a                                                         ; 84ca: 8d 1a 06    ...
    ldy #0                                                            ; 84cd: a0 00       ..
    tya                                                               ; 84cf: 98          .
    adc l000d                                                         ; 84d0: 65 0d       e.
    sta l000d                                                         ; 84d2: 85 0d       ..
    sta l061b                                                         ; 84d4: 8d 1b 06    ...
    jsr sub_c85f1                                                     ; 84d7: 20 f1 85     ..
    sec                                                               ; 84da: 38          8
    lda l061a                                                         ; 84db: ad 1a 06    ...
    sbc #&1a                                                          ; 84de: e9 1a       ..
    sta l0017                                                         ; 84e0: 85 17       ..
    rts                                                               ; 84e2: 60          `

    equb &b1, &0c, &99, &1a,   4, &c8, &d0, &f8, &a9,   1, &20, &aa   ; 84e3: b1 0c 99... ...
    equb &9d, &a4, &16, &b9, &19,   4, &c9, &0d, &d0,   3, &a5        ; 84ef: 9d a4 16... ...
    equs "j`L"                                                        ; 84fa: 6a 60 4c    j`L
    equb &b9, &83, &20, &e3, &84, &29,   3, &8d, &18,   4, &60, &20   ; 84fd: b9 83 20... ..
    equb &e3, &84, &aa, &ac, &11,   4, &d0,   3, &ac, &10,   4, &b9   ; 8509: e3 84 aa... ...
    equb &0a,   4, &8d, &2c,   6, &b9, &0d,   4, &8d, &2d,   6, &86   ; 8515: 0a 04 8d... ...
    equb &14, &ad,   0,   4, &f0, &0e, &a9, &85, &20, &f4, &ff, &ec   ; 8521: 14 ad 00... ...
    equb &2c,   6, &98, &ed, &2d,   6, &90, &34, &a9, &16, &20, &ee   ; 852d: 2c 06 98... ,..
    equb &ff, &a5, &14, &20, &ee, &ff, &ad, &17,   4, &c9,   1, &d0   ; 8539: ff a5 14... ...
    equb &17, &a5, &14, &29,   7, &c9,   7, &d0, &0f, &20, &84, &b2   ; 8545: 17 a5 14... ...
    equb &1c,   0, &18, &27, &10, &ea, &a2,   0, &a0, &74, &d0,   5   ; 8551: 1c 00 18... ...

.sub_c855d
    lda #osbyte_read_himem                                            ; 855d: a9 84       ..
    jsr osbyte                                                        ; 855f: 20 f4 ff     ..            ; Read top of user memory (HIMEM)
    stx l0402                                                         ; 8562: 8e 02 04    ...            ; X and Y contain the address of HIMEM (low, high)
    sty l0403                                                         ; 8565: 8c 03 04    ...
    rts                                                               ; 8568: 60          `

    equb   0,   2, &82                                                ; 8569: 00 02 82    ...
    equs "mode"                                                       ; 856c: 6d 6f 64... mod
    equb   0, &20, &88, &85                                           ; 8570: 00 20 88... . .

.c8574
    ldx #1                                                            ; 8574: a2 01       ..
.c8576
    ldy #0                                                            ; 8576: a0 00       ..
    beq c8581                                                         ; 8578: f0 07       ..
.sub_c857a
    jsr sub_c8588                                                     ; 857a: 20 88 85     ..
    ldx #0                                                            ; 857d: a2 00       ..
    ldy #1                                                            ; 857f: a0 01       ..
.c8581
    stx l0410                                                         ; 8581: 8e 10 04    ...
    sty l0411                                                         ; 8584: 8c 11 04    ...
    rts                                                               ; 8587: 60          `

.sub_c8588
    jsr sub_c85fc                                                     ; 8588: 20 fc 85     ..
    lda l0004                                                         ; 858b: a5 04       ..
    sta l0008                                                         ; 858d: 85 08       ..
    lda l0005                                                         ; 858f: a5 05       ..
    jsr sub_c859b                                                     ; 8591: 20 9b 85     ..
    stx l040b                                                         ; 8594: 8e 0b 04    ...
    sty l040e                                                         ; 8597: 8c 0e 04    ...
    rts                                                               ; 859a: 60          `

.sub_c859b
    sta l0009                                                         ; 859b: 85 09       ..
    stx l000a                                                         ; 859d: 86 0a       ..
    sty l000b                                                         ; 859f: 84 0b       ..
    jsr sub_c999a                                                     ; 85a1: 20 9a 99     ..
    bcc c85b5                                                         ; 85a4: 90 0f       ..
    lda #5                                                            ; 85a6: a9 05       ..
    jsr sub_c9189                                                     ; 85a8: 20 89 91     ..
    jsr osfile                                                        ; 85ab: 20 dd ff     ..
    cmp #1                                                            ; 85ae: c9 01       ..
    bne c85b5                                                         ; 85b0: d0 03       ..
    jsr sub_c85ca                                                     ; 85b2: 20 ca 85     ..
.c85b5
    jsr sub_c85f1                                                     ; 85b5: 20 f1 85     ..
    lda l0008                                                         ; 85b8: a5 08       ..
    sta l061c                                                         ; 85ba: 8d 1c 06    ...
    lda l0009                                                         ; 85bd: a5 09       ..
    sta l061d                                                         ; 85bf: 8d 1d 06    ...
    lda #&ff                                                          ; 85c2: a9 ff       ..
    jsr sub_c9189                                                     ; 85c4: 20 89 91     ..
    jsr osfile                                                        ; 85c7: 20 dd ff     ..
.sub_c85ca
    lda l0626                                                         ; 85ca: ad 26 06    .&.
    ora l0627                                                         ; 85cd: 0d 27 06    .'.
    bne c85e8                                                         ; 85d0: d0 16       ..
    clc                                                               ; 85d2: 18          .
    lda l0008                                                         ; 85d3: a5 08       ..
    adc l0624                                                         ; 85d5: 6d 24 06    m$.
    tax                                                               ; 85d8: aa          .
    lda l0009                                                         ; 85d9: a5 09       ..
    adc l0625                                                         ; 85db: 6d 25 06    m%.
    tay                                                               ; 85de: a8          .
    bcs c85e8                                                         ; 85df: b0 07       ..
    cpx l000a                                                         ; 85e1: e4 0a       ..
    sbc l000b                                                         ; 85e3: e5 0b       ..
    bcs c85e8                                                         ; 85e5: b0 01       ..
    rts                                                               ; 85e7: 60          `

.c85e8
    jmp c9816                                                         ; 85e8: 4c 16 98    L..

    equb &a9,   0, &a8, &4c, &ce, &ff                                 ; 85eb: a9 00 a8... ...

.sub_c85f1
    lda #0                                                            ; 85f1: a9 00       ..
    ldx #&0f                                                          ; 85f3: a2 0f       ..
.loop_c85f5
    sta l061c,x                                                       ; 85f5: 9d 1c 06    ...
    dex                                                               ; 85f8: ca          .
    bpl loop_c85f5                                                    ; 85f9: 10 fa       ..
    rts                                                               ; 85fb: 60          `

.sub_c85fc
    sec                                                               ; 85fc: 38          8
    lda l0402                                                         ; 85fd: ad 02 04    ...
    sbc #2                                                            ; 8600: e9 02       ..
    tax                                                               ; 8602: aa          .
    lda l0403                                                         ; 8603: ad 03 04    ...
    sbc #0                                                            ; 8606: e9 00       ..
    tay                                                               ; 8608: a8          .
    rts                                                               ; 8609: 60          `

.sub_c860a
    lda #0                                                            ; 860a: a9 00       ..
    sta l0415                                                         ; 860c: 8d 15 04    ...
    lda l0416                                                         ; 860f: ad 16 04    ...
    cmp #2                                                            ; 8612: c9 02       ..
    bcc c8639                                                         ; 8614: 90 23       .#
    jsr sub_cafd9                                                     ; 8616: 20 d9 af     ..
    cpx l0000                                                         ; 8619: e4 00       ..
    sbc l0001                                                         ; 861b: e5 01       ..
    bcc c8655                                                         ; 861d: 90 36       .6
    ldx l0002                                                         ; 861f: a6 02       ..
    cpx l0027                                                         ; 8621: e4 27       .'
    lda l0003                                                         ; 8623: a5 03       ..
    sbc l0028                                                         ; 8625: e5 28       .(
    bcc c8655                                                         ; 8627: 90 2c       .,
    cpx l0000                                                         ; 8629: e4 00       ..
    lda l0003                                                         ; 862b: a5 03       ..
    sbc l0001                                                         ; 862d: e5 01       ..
    beq c8633                                                         ; 862f: f0 02       ..
    bcs c8655                                                         ; 8631: b0 22       ."
.c8633
    jsr sub_cb711                                                     ; 8633: 20 11 b7     ..
    jsr sub_cb77e                                                     ; 8636: 20 7e b7     ~.
.c8639
    ldx l040b                                                         ; 8639: ae 0b 04    ...
    stx l0412                                                         ; 863c: 8e 12 04    ...
    cpx l0004                                                         ; 863f: e4 04       ..
    lda l040e                                                         ; 8641: ad 0e 04    ...
    sta l0413                                                         ; 8644: 8d 13 04    ...
    sbc l0005                                                         ; 8647: e5 05       ..
    bcc c8655                                                         ; 8649: 90 0a       ..
    ldy #0                                                            ; 864b: a0 00       ..
    lda (l0004),y                                                     ; 864d: b1 04       ..
    sta l0414                                                         ; 864f: 8d 14 04    ...
    inc l0415                                                         ; 8652: ee 15 04    ...
.c8655
    ldx #0                                                            ; 8655: a2 00       ..
    jmp c8576                                                         ; 8657: 4c 76 85    Lv.

    equb &ad, &15,   4, &f0, &24, &a0,   0, &8c, &15,   4, &ad, &14   ; 865a: ad 15 04... ...
    equb   4, &91,   4, &20, &fc, &85, &ec, &12,   4, &ed, &13,   4   ; 8666: 04 91 04... ...
    equb &90,   6, &ae, &12,   4, &ac, &13,   4, &8e, &0b,   4, &8c   ; 8672: 90 06 ae... ...
    equb &0e,   4, &4c, &74, &85,   0,   4, &80, &8a,   0, &a2,   0   ; 867e: 0e 04 4c... ..L
    equb &b1, &0c, &c9, &3e, &f0,   8, &c9, &7b, &f0,   4, &c9, &0d   ; 868a: b1 0c c9... ...
    equb &d0,   5, &ae, &10,   4, &f0, &e6, &8e, &10,   4, &bd, &0a   ; 8696: d0 05 ae... ...
    equb   4, &85, &18, &8d, &2c,   6, &bd, &0d,   4, &85, &19, &8d   ; 86a2: 04 85 18... ...
    equb &2d,   6, &38, &ad,   2,   4, &e9, &af, &8d, &2e,   6, &ad   ; 86ae: 2d 06 38... -.8
    equb   3,   4, &e9, &1f, &8d, &2f,   6, &20, &14, &98, &a9, &a3   ; 86ba: 03 04 e9... ...
    equb &85, &0a, &a9, &87, &85, &0b, &38, &ad, &2e,   6, &85, &0e   ; 86c6: 85 0a a9... ...
    equb &e9, &a3, &85, &4a, &ad, &2f,   6, &85, &0f, &e9, &87, &85   ; 86d2: e9 a3 85... ...
    equb &4b, &a2, &af, &a0, &1f, &20, &2b, &b4, &a0,   0, &b1, &0e   ; 86de: 4b a2 af... K..
    equb &f0, &51, &c9, &20, &f0, &1e, &c9, &60, &f0, &3c, &c9, &ff   ; 86ea: f0 51 c9... .Q.
    equb &f0, &4d, &29, &1f, &c9, &19, &f0, &10, &29, &0f, &c9, &0c   ; 86f6: f0 4d 29... .M)
    equb &b0, &0a, &c9,   8, &f0, &28, &c9, &0a, &f0, &24, &d0, &1e   ; 8702: b0 0a c9... ...
    equb &a0,   2, &b1, &0e, &c9, &80, &90, &12, &c9, &c0, &b0, &0e   ; 870e: a0 02 b1... ...
    equb &88, &b1, &0e, &65, &4a, &91, &0e, &c8, &b1, &0e, &65, &4b   ; 871a: 88 b1 0e... ...
    equb &91, &0e, &a9,   2, &d0,   6, &a9,   1, &d0,   2, &a9,   0   ; 8726: 91 0e a9... ...
    equb &38, &65, &0e, &85, &0e, &90, &ad, &e6, &0f, &d0, &a9, &c8   ; 8732: 38 65 0e... 8e.
    equb &b1, &0e, &d0, &fb, &98, &d0, &ed, &e6, &0e, &d0,   2, &e6   ; 873e: b1 0e d0... ...
    equb &0f, &18, &a9, &0c, &65, &4a, &85, &0c, &a9, &a6, &65, &4b   ; 874a: 0f 18 a9... ...
    equb &85, &0d, &a2,   2, &a0,   0, &18, &b1, &0e, &65, &4a, &91   ; 8756: 85 0d a2... ...
    equb &0e, &b1, &0c, &65, &4b, &91, &0c, &c8, &d0,   4, &e6, &0f   ; 8762: 0e b1 0c... ...
    equb &e6, &0d, &c0,   5, &d0, &e8, &ca, &d0, &e5, &a0,   0, &8c   ; 876e: e6 0d c0... ...
    equb &11,   4, &a9, &0d, &91, &18, &c8, &8c, &59,   6, &a9,   4   ; 877a: 11 04 a9... ...
    equb &91, &18, &a9, &70, &85, &1e, &a9, &86, &85, &1f, &a2, &97   ; 8786: 91 18 a9... ...
    equb &a0, &87, &4c, &f7, &ff                                      ; 8792: a0 87 4c... ..L
    equs "fx163,192,0"                                                ; 8797: 66 78 31... fx1
    equb &0d                                                          ; 87a2: 0d          .

.c87a3
    ldx #0                                                            ; 87a3: a2 00       ..
    stx l0416                                                         ; 87a5: 8e 16 04    ...
    ldx #0                                                            ; 87a8: a2 00       ..
    stx l065b                                                         ; 87aa: 8e 5b 06    .[.
    stx l065c                                                         ; 87ad: 8e 5c 06    .\.
    inx                                                               ; 87b0: e8          .
    stx l065a                                                         ; 87b1: 8e 5a 06    .Z.
    lda l001e                                                         ; 87b4: a5 1e       ..
    sta l0002                                                         ; 87b6: 85 02       ..
    lda l001f                                                         ; 87b8: a5 1f       ..
    sta l0003                                                         ; 87ba: 85 03       ..
    bne c87c7                                                         ; 87bc: d0 09       ..
.loop_c87be
    clc                                                               ; 87be: 18          .
    adc l0002                                                         ; 87bf: 65 02       e.
    sta l0002                                                         ; 87c1: 85 02       ..
    bcc c87c7                                                         ; 87c3: 90 02       ..
    inc l0003                                                         ; 87c5: e6 03       ..
.c87c7
    ldy #0                                                            ; 87c7: a0 00       ..
    lda (l0002),y                                                     ; 87c9: b1 02       ..
    tax                                                               ; 87cb: aa          .
    lda la507,x                                                       ; 87cc: bd 07 a5    ...
    sta l0008                                                         ; 87cf: 85 08       ..
    lda la60c,x                                                       ; 87d1: bd 0c a6    ...
    sta l0009                                                         ; 87d4: 85 09       ..
    jsr sub_c87e2                                                     ; 87d6: 20 e2 87     ..
    bne loop_c87be                                                    ; 87d9: d0 e3       ..
    bit l00ff                                                         ; 87db: 24 ff       $.
    bpl c87c7                                                         ; 87dd: 10 e8       ..
    jmp c9976                                                         ; 87df: 4c 76 99    Lv.

.sub_c87e2
    jmp (l0008)                                                       ; 87e2: 6c 08 00    l..

    equb &85, &4c, &a0,   1, &b1,   2, &a6, &20, &18, &75, &21, &85   ; 87e5: 85 4c a0... .L.
    equb   8, &a9,   0, &75, &29, &85,   9, &60, &85, &4c, &a6, &20   ; 87f1: 08 a9 00... ...
    equb &18, &a0,   1, &b5, &21, &71,   2, &85,   8, &c8, &b5, &29   ; 87fd: 18 a0 01... ...
    equb &71,   2, &85,   9, &60, &20, &fb, &87, &a2,   3, &d0, &0c   ; 8809: 71 02 85... q..
    equb &20, &e2, &9a, &a2,   1, &d0,   5, &20, &e7, &87, &a2,   2   ; 8815: 20 e2 9a...  ..
    equb &a0,   0, &b1,   8, &c8, &84, &4c, &d1,   8, &d0, &5d, &c9   ; 8821: a0 00 b1... ...
    equb   0, &d0, &3b,   0, &0c                                      ; 882d: 00 d0 3b... ..;
    equs "Pointer"                                                    ; 8832: 50 6f 69... Poi
    equb   0, &bd,   1, &a7, &20, &f9, &87, &a2,   3, &d0, &27, &bd   ; 8839: 00 bd 01... ...
    equb &1c, &a7, &85, &4c, &20, &e2, &9a, &a2,   1, &d0, &1b, &bd   ; 8845: 1c a7 85... ...
    equb &34, &a7, &85, &4c, &20, &9c, &9a, &a6, &4c, &e8, &e8, &d0   ; 8851: 34 a7 85... 4..
    equb &29, &20, &11, &8a, &a2,   9, &bd, &2b, &a7, &20, &e5, &87   ; 885d: 29 20 11... ) .
    equb &a2,   2, &a4, &4c, &ad, &5a,   6, &f0, &17, &10,   3, &98   ; 8869: a2 02 a4... ...
    equb &f0, &12, &b1,   8, &91,   0, &c9, &b8, &d0, &0e, &88, &10   ; 8875: f0 12 b1... ...
    equb &f5,   0, &12, &84, &83,   0, &a4, &4c, &b1,   8, &91,   0   ; 8881: f5 00 12... ...
    equb &88, &10, &f9, &38, &a5,   0, &65, &4c, &85,   0, &90,   2   ; 888d: 88 10 f9... ...
    equb &e6,   1, &8a, &60, &20, &1e, &8a, &20, &fb, &87, &a0,   3   ; 8899: e6 01 8a... ...
    equb &b1,   2, &aa, &ca, &86                                      ; 88a5: b1 02 aa... ...
    equs "L $"                                                        ; 88aa: 4c 20 24    L $
    equb &96, &aa, &a8, &b1,   2, &c9, &ef, &d0, &d1, &20, &b2, &ae   ; 88ad: 96 aa a8... ...
    equb &aa, &d0, &cb, &c8, &b1,   2, &85, &12, &a9,   2, &20, &aa   ; 88b9: aa d0 cb... ...
    equb &9a, &a0, &ff, &c8, &b1,   8, &91,   0, &c4, &12, &90, &f7   ; 88c5: 9a a0 ff... ...
    equb &a9,   0, &c0, &20, &f0,   5, &91,   0, &c8, &d0, &f7, &20   ; 88d1: a9 00 c0... ...
    equb &f4, &99, &a6, &12, &e8, &e8, &8a, &60, &bd, &fc, &a6, &20   ; 88dd: f4 99 a6... ...
    equb &f9, &87, &a2,   3, &d0, &27, &bd, &17, &a7, &85, &4c, &20   ; 88e9: f9 87 a2... ...
    equb &e2, &9a, &a2,   1, &d0, &1b, &bd, &2f, &a7, &85, &4c, &20   ; 88f5: e2 9a a2... ...
    equb &9c, &9a, &a6                                                ; 8901: 9c 9a a6    ...

.unrecognised_osbyte_handler_rts
    jmp le8e8                                                         ; 8904: 4c e8 e8    L..

    equb &d0, &0d, &20, &11, &8a, &a2, &0f, &bd, &26, &a7, &20, &e5   ; 8907: d0 0d 20... ..
    equb &87, &a2,   2, &a9,   0, &a0,   3, &91,   0, &88, &c4, &4c   ; 8913: 87 a2 02... ...
    equb &d0, &f9, &b1,   8, &91,   0, &88, &10, &f9, &20, &e4, &99   ; 891f: d0 f9 b1... ...
    equb &8a, &60, &18, &a5,   0, &e5, &4c, &85,   0, &85, &0a, &a5   ; 892b: 8a 60 18... .`.
    equb   1, &e9,   0, &85,   1, &85, &0b, &60, &bd, &f9, &a6, &20   ; 8937: 01 e9 00... ...
    equb &f9, &87, &20, &2d, &89, &a2,   3, &d0, &1a, &bd, &13, &a7   ; 8943: f9 87 20... ..
    equb &85                                                          ; 894f: 85          .
    equs "L -"                                                        ; 8950: 4c 20 2d    L -
    equb &89, &20, &e2, &9a, &a2,   1, &d0, &0b, &bd, &23, &a7, &20   ; 8953: 89 20 e2... . .
    equb &e5, &87, &20, &2d, &89, &a2,   2, &a4, &4c, &b1, &0a, &91   ; 895f: e5 87 20... ..
    equb   8, &88, &10, &f9, &8a, &60, &bd, &1e, &a7, &20, &e5, &87   ; 896b: 08 88 10... ...
    equb &20, &68, &9a, &a2,   2, &d0, &e8, &bd, &f4, &a6, &20, &f9   ; 8977: 20 68 9a...  h.
    equb &87, &20, &68, &9a, &a2,   3, &d0, &db, &bd, &0e, &a7, &85   ; 8983: 87 20 68... . h
    equs "L h"                                                        ; 898f: 4c 20 68    L h
    equb &9a, &20, &e2, &9a, &a2,   1, &d0, &cc, &20, &f9, &9a, &20   ; 8992: 9a 20 e2... . .
    equb &a6, &89, &a9,   3, &60, &20,   5, &9b, &20, &c4, &9a, &18   ; 899e: a6 89 a9... ...
    equb &a5,   0, &85, &0e, &65, &12, &85,   0, &a5,   1, &85, &0f   ; 89aa: a5 00 85... ...
    equb &65, &13, &85,   1, &d0, &13, &60, &20, &f9, &9a, &20, &c9   ; 89b6: 65 13 85... e..
    equb &89, &a9,   3, &60, &20,   5, &9b, &20, &c4, &9a, &20, &d3   ; 89c2: 89 a9 03... ...
    equb &9a, &20, &d9, &89, &a9,   2, &60                            ; 89ce: 9a 20 d9... . .

.some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes
    stx l0012                                                         ; 89d5: 86 12       ..
    sty l0013                                                         ; 89d7: 84 13       ..
    ldx l0013                                                         ; 89d9: a6 13       ..
    inx                                                               ; 89db: e8          .
; Set l0014=-l0012=-(X on entry), unless the result is zero in which case jump to the
; test at the end of the copy loop.
    sec                                                               ; 89dc: 38          8
    lda #0                                                            ; 89dd: a9 00       ..
    sbc l0012                                                         ; 89df: e5 12       ..
    tay                                                               ; 89e1: a8          .
    beq bulk_copy_loop_x_test                                         ; 89e2: f0 23       .#
    sta l0014                                                         ; 89e4: 85 14       ..
; Subtract 8-bit value at l0014 from 16-bit value at l000a
    sec                                                               ; 89e6: 38          8
    lda l000a                                                         ; 89e7: a5 0a       ..
    sbc l0014                                                         ; 89e9: e5 14       ..
    sta l000a                                                         ; 89eb: 85 0a       ..
    bcs c89f2                                                         ; 89ed: b0 03       ..
    dec l000b                                                         ; 89ef: c6 0b       ..
    sec                                                               ; 89f1: 38          8
; Subtract 8-bit value at l0014 from 16-bit value at l000e
.c89f2
    lda l000e                                                         ; 89f2: a5 0e       ..
    sbc l0014                                                         ; 89f4: e5 14       ..
    sta l000e                                                         ; 89f6: 85 0e       ..
    bcs bulk_copy_from_l000a_to_l000e                                 ; 89f8: b0 02       ..
    dec l000f                                                         ; 89fa: c6 0f       ..
.bulk_copy_from_l000a_to_l000e
    lda (l000a),y                                                     ; 89fc: b1 0a       ..
    sta (l000e),y                                                     ; 89fe: 91 0e       ..
    iny                                                               ; 8a00: c8          .
    bne bulk_copy_from_l000a_to_l000e                                 ; 8a01: d0 f9       ..
    inc l000b                                                         ; 8a03: e6 0b       ..
    inc l000f                                                         ; 8a05: e6 0f       ..
.bulk_copy_loop_x_test
    dex                                                               ; 8a07: ca          .
    bne bulk_copy_from_l000a_to_l000e                                 ; 8a08: d0 f2       ..
    rts                                                               ; 8a0a: 60          `

    equb &20, &1e, &8a, &a9,   1, &60, &84, &20, &a9,   1, &60, &c8   ; 8a0b: 20 1e 8a...  ..
    equb &b1,   2, &85, &20, &a9,   2, &60, &a0,   6, &b1, &1a, &85   ; 8a17: b1 02 85... ...
    equs " ` B"                                                       ; 8a23: 20 60 20...  `
    equb &9a, &18, &c8, &b1,   2, &a0,   0, &71, &0a, &91, &0a, &98   ; 8a27: 9a 18 c8... ...
    equb &c8, &71, &0a, &91, &0a, &a9,   2                            ; 8a33: c8 71 0a... .q.
    equs "` F"                                                        ; 8a3a: 60 20 46    ` F
    equb &9a, &18, &c8, &b1,   2, &c8, &71, &0a, &91, &0a, &b1,   2   ; 8a3d: 9a 18 c8... ...
    equb &c8, &71, &0a, &91, &0a, &a9,   3                            ; 8a49: c8 71 0a... .q.
    equs "` ;"                                                        ; 8a50: 60 20 3b    ` ;
    equb &95, &20, &e7, &87, &20, &d5, &99, &a9,   2, &60, &20, &fb   ; 8a53: 95 20 e7... . .
    equb &87, &20, &d5, &99, &a9,   3, &60, &20, &f9, &9a, &a2,   3   ; 8a5f: 87 20 d5... . .
    equb &d0,   5, &20,   5, &9b, &a2,   2, &8a, &20, &aa, &9a, &20   ; 8a6b: d0 05 20... ..
    equb &d5, &99, &18, &a5,   2, &65, &12, &85,   2, &a5,   3, &65   ; 8a77: d5 99 18... ...
    equb &13, &85,   3, &8a, &60, &20, &e2, &9a, &20, &27, &92, &a0   ; 8a83: 13 85 03... ...
    equb   4, &b1,   8, &29, &40, &d0, &19,   0, &14, &84             ; 8a8f: 04 b1 08... ...
    equs "buffe"                                                      ; 8a99: 62 75 66... buf
    equb &f2, &83,   0, &20, &e2, &9a, &20, &27, &92, &a0,   4, &b1   ; 8a9e: f2 83 00... ...
    equb   8,   9, &40, &91,   8, &18, &a5,   8, &69,   5, &85,   8   ; 8aaa: 08 09 40... ..@
    equb &90,   2, &e6,   9, &20, &d5, &99, &a9,   1, &60, &20, &c3   ; 8ab6: 90 02 e6... ...
    equb &8a, &84,   8, &84,   9, &4c, &ba, &8a, &20, &1d, &9a, &a9   ; 8ac2: 8a 84 08... ...
    equb   1, &20, &1a, &9b, &a9,   1                                 ; 8ace: 01 20 1a... . .
    equs "` ;"                                                        ; 8ad4: 60 20 3b    ` ;
    equb &95, &a2,   0, &20, &50, &88, &a9, &24, &a2,   2, &4c, &64   ; 8ad7: 95 a2 00... ...
    equb &95, &a2, &0a, &20, &63, &88, &a0,   1, &20, &25, &8a, &a9   ; 8ae3: 95 a2 0a... ...
    equb   3                                                          ; 8aef: 03          .
    equs "` ;"                                                        ; 8af0: 60 20 3b    ` ;
    equb &95, &a2,   5, &20, &fb, &88, &20, &a0, &9a, &a2,   3, &4c   ; 8af3: 95 a2 05... ...
    equb &60, &95, &20, &11, &8a, &a9, &26, &20, &eb, &87, &a0,   0   ; 8aff: 60 95 20... `.
    equb &f0,   7, &a9,   9, &20, &eb, &87, &a0,   1, &84, &4c, &a2   ; 8b0b: f0 07 a9... ...
    equb   1, &4c, &89, &88, &20, &11, &9a, &b1,   0, &c8, &d1,   2   ; 8b17: 01 4c 89... .L.
    equb &20, &50, &8e, &a9,   2, &60, &a9, &13, &85, &12, &84, &13   ; 8b23: 20 50 8e...  P.
    equb &20, &a6, &89, &a9,   1, &60, &20, &1e, &8a, &20, &f1, &9a   ; 8b2f: 20 a6 89...  ..
    equb &f0, &e9, &a0,   0, &20, &3b, &95, &a2,   5, &20, &fb, &88   ; 8b3b: f0 e9 a0... ...
    equb &a9,   1, &a2,   2, &4c, &64, &95, &20, &3b, &95, &a9, &25   ; 8b47: a9 01 a2... ...
    equb &a2,   1, &4c, &64, &95, &a0, &ff, &c8, &c0,   3, &b0, &0a   ; 8b53: a2 01 4c... ..L
    equb &b1, &0a, &69,   1, &91, &0a, &b0, &f3, &b8, &60, &b1, &0a   ; 8b5f: b1 0a 69... ..i
    equb &69,   0, &91, &0a, &60, &a0, &ff, &c8, &c0,   3, &b0, &0a   ; 8b6b: 69 00 91... i..
    equb &b1, &0a, &e9,   0, &91, &0a, &90, &f3, &b8, &60, &b1, &0a   ; 8b77: b1 0a e9... ...
    equb &e9,   1, &91, &0a                                           ; 8b83: e9 01 91... ...
    equs "` h"                                                        ; 8b87: 60 20 68    ` h
    equb &9a, &a0,   3, &b1, &0a, &99, &6a,   0, &88, &10, &f8, &60   ; 8b8a: 9a a0 03... ...
    equb &a0,   3, &b1, &0a, &99, &46,   0, &88, &10, &f8,   5, &48   ; 8b96: a0 03 b1... ...
    equb   5, &47,   5                                                ; 8ba2: 05 47 05    .G.
    equs "F$I`"                                                       ; 8ba5: 46 24 49... F$I
    equb &a5, &6d, &8d, &61,   6, &10,   3, &20, &3c, &8c, &a5, &49   ; 8ba9: a5 6d 8d... .m.
    equb &10, &f1, &4d, &61,   6, &8d, &61,   6, &a9, &46, &d0, &7d   ; 8bb5: 10 f1 4d... ..M
    equb &a9, &4a, &d0, &79,   0, &15                                 ; 8bc1: a9 4a d0... .J.
    equs "Divisio"                                                    ; 8bc7: 44 69 76... Div
    equb &ee, &62, &f9                                                ; 8bce: ee 62 f9    .b.
    equs "zero"                                                       ; 8bd1: 7a 65 72... zer
    equb   0, &a5, &46,   5, &47,   5, &48,   5, &49, &f0, &e5, &20   ; 8bd5: 00 a5 46... ..F
    equb &a9, &8b, &a9,   0, &85, &4a, &85, &4b, &85, &4c, &85, &4d   ; 8be1: a9 8b a9... ...
    equb &a2, &20,   6                                                ; 8bed: a2 20 06    . .
    equs "j&k&l&m"                                                    ; 8bf0: 6a 26 6b... j&k
    equb &b0, &0d, &ca, &d0, &f3, &f0, &57,   6                       ; 8bf7: b0 0d ca... ...
    equs "j&k&l&m&J&K&L&M8"                                           ; 8bff: 6a 26 6b... j&k
    equb &a5, &4a, &e5, &46, &85, &0c, &a5, &4b, &e5, &47, &85, &0d   ; 8c0f: a5 4a e5... .J.
    equb &a5, &4c, &e5, &48, &a8, &a5, &4d, &e5, &49, &90, &0e, &85   ; 8c1b: a5 4c e5... .L.
    equb &4d, &84, &4c, &a5, &0d, &85, &4b, &a5, &0c, &85, &4a, &e6   ; 8c27: 4d 84 4c... M.L
    equb &6a, &ca, &d0, &c7, &ad, &61,   6, &10, &19, &a9, &6a, &85   ; 8c33: 6a ca d0... j..
    equb &0c, &a9,   0, &85, &0d, &38, &a2,   4, &a0,   0, &a9,   0   ; 8c3f: 0c a9 00... ...
    equb &f1, &0c, &91, &0c, &c8, &ca, &d0, &f6                       ; 8c4b: f1 0c 91... ...
    equs "pf`"                                                        ; 8c53: 70 66 60    pf`
    equb   0, &17, &82                                                ; 8c56: 00 17 82    ...
    equs "MOD"                                                        ; 8c59: 4d 4f 44    MOD
    equb   0, &a5, &49, &30, &f5, &20, &d6, &8b, &20, &13, &8d,   5   ; 8c5c: 00 a5 49... ..I
    equb &6b,   5, &6c,   5, &6d, &f0, &1c, &ad, &61,   6, &10, &17   ; 8c68: 6b 05 6c... k.l
    equb &20, &3c, &8c, &18, &a2,   4, &a0,   0, &b9, &6a,   0, &79   ; 8c74: 20 3c 8c...  <.
    equb &46,   0, &99, &6a,   0, &c8, &ca, &d0, &f3                  ; 8c80: 46 00 99... F..
    equs "p0` "                                                       ; 8c89: 70 30 60... p0`
    equb &a9, &8b, &a5, &46, &c5, &6a, &a5, &47, &e5, &6b, &a5, &48   ; 8c8d: a9 8b a5... ...
    equb &e5, &6c, &a5, &49, &e5, &6d, &b0, &0f, &a0,   3, &b9, &6a   ; 8c99: e5 6c a5... .l.
    equb   0, &b6, &46, &96, &6a, &99, &46,   0, &88, &10, &f3, &a0   ; 8ca5: 00 b6 46... ..F
    equb   3, &b9, &6a,   0, &d0, &0f, &88, &10, &f8, &60,   0, &0f   ; 8cb1: 03 b9 6a... ..j
    equs "Intege"                                                     ; 8cbd: 49 6e 74... Int
    equb &f2, &85,   0, &be, &27, &a7, &a0,   0, &84, &4b, &84, &4c   ; 8cc3: f2 85 00... ...
    equb &84, &4d, &2a, &b0, &0d, &ca, &d0, &fa,   6                  ; 8ccf: 84 4d 2a... .M*
    equs "F&G&H&I0"                                                   ; 8cd8: 46 26 47... F&G
    equb &da                                                          ; 8ce0: da          .
    equs "fmflfkfj"                                                   ; 8ce1: 66 6d 66... fmf
    equb &90, &17, &18, &98, &65, &46, &a8, &a5                       ; 8ce9: 90 17 18... ...
    equs "KeG"                                                        ; 8cf1: 4b 65 47    KeG
    equb &85, &4b, &a5                                                ; 8cf4: 85 4b a5    .K.
    equs "LeH"                                                        ; 8cf7: 4c 65 48    LeH
    equb &85, &4c, &a5                                                ; 8cfa: 85 4c a5    .L.
    equs "MeI"                                                        ; 8cfd: 4d 65 49    MeI
    equb &85, &4d, &ca, &d0, &d2, &84, &4a, &a5, &4d, &30, &b0, &ad   ; 8d00: 85 4d ca... .M.
    equb &61,   6, &10,   3, &20, &c1, &8b, &a0,   3, &b9, &4a,   0   ; 8d0c: 61 06 10... a..
    equb &99, &6a,   0, &88, &10, &f7, &60, &38, &a2,   4, &a0,   0   ; 8d18: 99 6a 00... .j.
    equb &b9, &6a,   0, &f9, &46,   0, &99, &6a,   0, &c8, &ca, &d0   ; 8d24: b9 6a 00... .j.
    equb &f3, &70, &88, &60, &bd, &95, &a5, &85,   8, &bd, &9a, &a6   ; 8d30: f3 70 88... .p.
    equb &85,   9, &20, &68, &9a, &20, &96, &8b, &20, &46, &9a, &20   ; 8d3c: 85 09 20... ..
    equb &8b, &8b, &20, &e2, &87, &20, &96, &9d, &a9,   1, &60, &20   ; 8d48: 8b 8b 20... ..
    equb &8a, &9a, &e0, &c6, &d0,   6, &a0,   3, &b1, &0c, &10,   3   ; 8d54: 8a 9a e0... ...
    equb &20, &44, &8c, &a9,   1                                      ; 8d60: 20 44 8c...  D.
    equs "` F"                                                        ; 8d65: 60 20 46    ` F
    equb &9a, &20, &96, &8b, &20, &8b, &8b, &20, &8c, &8c, &20, &96   ; 8d68: 9a 20 96... . .
    equb &9d, &a9,   1                                                ; 8d74: 9d a9 01    ...
    equs "` 5"                                                        ; 8d77: 60 20 35    ` 5
    equb &9a, &b1, &0a, &11,   0, &91, &0a, &88, &10, &f7, &a9,   1   ; 8d7a: 9a b1 0a... ...
    equs "` 5"                                                        ; 8d86: 60 20 35    ` 5
    equb &9a, &b1,   0, &49, &ff, &31, &0a, &91, &0a, &88, &10, &f5   ; 8d89: 9a b1 00... ...
    equb &a9,   1                                                     ; 8d95: a9 01       ..
    equs "` 5"                                                        ; 8d97: 60 20 35    ` 5
    equb &9a, &b1, &0a, &31,   0, &91, &0a, &88, &10, &f7, &a9,   1   ; 8d9a: 9a b1 0a... ...
    equs "` >"                                                        ; 8da6: 60 20 3e    ` >
    equb &9a, &38, &b1, &0a, &e9,   1, &91, &0a, &90, &25, &a9,   1   ; 8da9: 9a 38 b1... .8.
    equs "` >"                                                        ; 8db5: 60 20 3e    ` >
    equb &9a, &18, &b1, &0a, &69,   1, &91, &0a, &b0, &16, &a9,   1   ; 8db8: 9a 18 b1... ...
    equs "` F"                                                        ; 8dc4: 60 20 46    ` F
    equb &9a, &20, &58, &8b, &70, &0b, &a9,   1                       ; 8dc7: 9a 20 58... . X
    equs "` F"                                                        ; 8dcf: 60 20 46    ` F
    equb &9a, &20, &70, &8b, &50, &f5,   0, &0d                       ; 8dd2: 9a 20 70... . p
    equs "Sub"                                                        ; 8dda: 53 75 62    Sub
    equb &87,   0, &98, &a0,   3, &91,   0, &88, &10, &fb, &a9,   3   ; 8ddd: 87 00 98... ...
    equb &20, &fe, &99, &a9,   1, &60, &20, &b4, &9c, &b0,   6, &20   ; 8de9: 20 fe 99...  ..
    equb &f8, &99, &a9,   1, &60,   0, &16, &43, &48, &d2, &87,   0   ; 8df5: f8 99 a9... ...
    equb &20, &19, &9a, &b1,   0, &29,   1, &10, &3c, &20, &15, &9a   ; 8e01: 20 19 9a...  ..
    equb &b1,   0, &c8, &31,   0, &10, &36, &20, &15, &9a, &b1,   0   ; 8e0d: b1 00 c8... ...
    equb &c8, &11,   0, &10, &2c, &20, &11, &9a, &b1,   0, &49,   1   ; 8e19: c8 11 00... ...
    equb &10, &23, &bd, &bd, &a6, &8d, &63,   6, &20, &15, &9a, &b1   ; 8e25: 10 23 bd... .#.
    equb   0, &c8, &d1,   0, &f0,   6, &b0,   8, &a9,   4, &d0,   6   ; 8e31: 00 c8 d1... ...
    equb &a9,   2, &d0,   2, &a9,   1, &2d, &63,   6, &f0, &0a, &a9   ; 8e3d: a9 02 d0... ...
    equb   1, &20, &f8, &99, &a9,   1, &60, &f0, &f6, &a9,   0, &f0   ; 8e49: 01 20 f8... . .
    equb &f4, &bd, &b7, &a6, &8d, &63,   6, &20, &88, &8b, &a5, &6a   ; 8e55: f4 bd b7... ...
    equb &c5, &6c, &d0, &dc, &a5, &6b, &c5                            ; 8e61: c5 6c d0... .l.
    equs "mL5"                                                        ; 8e68: 6d 4c 35    mL5
    equb &8e, &bd, &a9, &a6, &8d, &63,   6, &20,   8, &9a, &b1,   0   ; 8e6b: 8e bd a9... ...
    equb &51, &0a, &d0, &c6, &88, &10, &f7, &30, &bd, &20,   8, &9a   ; 8e77: 51 0a d0... Q..
    equb &b1, &0a, &49, &ff, &31,   0, &d0, &c7, &88, &10, &f5, &30   ; 8e83: b1 0a 49... ..I
    equb &b8, &20,   8, &9a, &b1,   0, &49, &ff, &31, &0a, &d0, &b7   ; 8e8f: b8 20 08... . .
    equb &88, &10, &f5, &30, &a8, &bd, &b5, &a6, &8d, &63,   6, &20   ; 8e9b: 88 10 f5... ...
    equb &68, &9a, &20, &8a, &9a, &20, &19, &9a, &20, &b5, &8e, &4c   ; 8ea7: 68 9a 20... h.
    equb &35, &8e, &a0,   3, &b1, &0c, &51, &0a, &8d, &61,   6, &b1   ; 8eb3: 35 8e a0... 5..
    equb &0c, &d1, &0a, &d0,   5, &88, &10, &f7, &c8                  ; 8ebf: 0c d1 0a... ...
    equs "`jMa"                                                       ; 8ec8: 60 6a 4d... `jM
    equb   6, &2a, &a9,   1, &60, &bd, &a5, &a6, &8d, &63,   6, &20   ; 8ecc: 06 2a a9... .*.
    equb &f9, &9a, &20, &88, &8b, &a0,   0, &b1, &6a, &d1, &6c, &d0   ; 8ed8: f9 9a 20... ..
    equb &11, &c8, &d0,   6, &e6, &6b, &e6, &6d, &c6, &13, &c4, &12   ; 8ee4: 11 c8 d0... ...
    equb &d0, &ed, &a5, &13, &d0, &e9, &20, &35, &8e, &a9,   3        ; 8ef0: d0 ed a5... ...
    equs "` p"                                                        ; 8efb: 60 20 70    ` p
    equb &9a, &20, &f1, &9a, &4c, &10, &8f, &20, &70, &9a, &20, &b4   ; 8efe: 9a 20 f1... . .
    equb &9c, &90,   3, &4c, &52, &8e, &aa, &20, &99, &8f, &4c, &46   ; 8f0a: 9c 90 03... ...
    equb &8e, &20, &b4, &9c, &aa, &b0, &0f, &90, &26, &20, &b4, &9c   ; 8f16: 8e 20 b4... . .
    equb &aa, &b0,   7, &20, &b4, &9c, &b0,   2, &90, &19,   0, &0e   ; 8f22: aa b0 07... ...
    equb &53, &65, &f4                                                ; 8f2e: 53 65 f4    Se.
    equs "value"                                                      ; 8f31: 76 61 6c... val
    equb   0, &20, &f1, &9a, &aa, &4c, &45, &8f, &20, &f1, &9a, &aa   ; 8f36: 00 20 f1... . .
    equb &20, &f1, &9a, &85, &46, &86, &47, &a9,   0, &a0, &1f, &91   ; 8f42: 20 f1 9a...  ..
    equb   0, &88, &10, &fb, &a5, &47, &c5, &46, &90, &3b, &a5        ; 8f4e: 00 88 10... ...
    equs "FJJJ"                                                       ; 8f59: 46 4a 4a... FJJ
    equb &85, &48, &a5                                                ; 8f5d: 85 48 a5    .H.
    equs "GJJJ"                                                       ; 8f60: 47 4a 4a... GJJ
    equb &85, &49, &38, &e5, &48, &aa, &a9, &ff, &a4, &48, &91,   0   ; 8f64: 85 49 38... .I8
    equb &c8, &ca, &10, &fa, &a5, &46, &29,   7, &aa, &bd, &17, &a7   ; 8f70: c8 ca 10... ...
    equb &a4, &48, &31,   0, &91,   0, &a5, &47, &29,   7, &aa, &bd   ; 8f7c: a4 48 31... .H1
    equb &17, &a7, &0a, &49, &ff, &a4, &49, &31,   0, &91,   0, &20   ; 8f88: 17 a7 0a... ...
    equb &f4, &99, &a9,   1, &60, &8a, &29,   7, &a8, &b9, &1f, &a7   ; 8f94: f4 99 a9... ...
    equb &48, &8a                                                     ; 8fa0: 48 8a       H.
    equs "JJJ"                                                        ; 8fa2: 4a 4a 4a    JJJ
    equb &a8, &68, &31, &0a, &60, &ad, &56,   6, &85, &14, &a2,   8   ; 8fa5: a8 68 31... .h1
    equb &ca,   6, &14, &b0,   3, &d0, &f9, &60, &a5,   8, &dd, &32   ; 8fb1: ca 06 14... ...
    equb   6, &d0, &f1, &a5,   9, &dd, &3a,   6, &d0, &ea             ; 8fbd: 06 d0 f1... ...
    equs "` R"                                                        ; 8fc7: 60 20 52    ` R
    equb &90, &a6, &47, &d0,   5, &20, &70, &91, &d0,   5, &20, &5a   ; 8fca: 90 a6 47... ..G
    equb &91, &f0,   8, &a9, &40, &20, &ce, &ff, &aa, &f0,   4, &a2   ; 8fd6: 91 f0 08... ...
    equb &e0, &d0, &26,   0, &1c                                      ; 8fe2: e0 d0 26... ..&
    equs "Fil"                                                        ; 8fe7: 46 69 6c    Fil
    equb &e5, &6e, &6f, &f4, &8f,   0, &20, &52, &90, &a6, &47, &d0   ; 8fea: e5 6e 6f... .no
    equb   5, &20, &70, &91, &d0,   5, &20, &5a, &91, &f0,   8, &a9   ; 8ff6: 05 20 70... . p
    equb &80, &20, &ce, &ff, &aa, &f0, &dc, &a2, &30, &a0,   3, &91   ; 9002: 80 20 ce... . .
    equb   8, &c8, &8a, &91,   8, &20, &aa, &8f, &b0, &16, &ad, &56   ; 900e: 08 c8 8a... ...
    equb   6, &c9, &ff, &f0, &28, &a2,   8, &ca, &0a, &b0, &fc, &ad   ; 901a: 06 c9 ff... ...
    equb &56,   6, &1d, &1f, &a7, &8d, &56,   6, &a5,   8, &9d, &32   ; 9026: 56 06 1d... V..
    equb   6, &a5,   9, &9d, &3a,   6, &a0,   0, &b1,   8, &9d, &42   ; 9032: 06 a5 09... ...
    equb   6, &a0,   3, &b1,   8, &9d, &4a,   6, &60,   0, &1d, &54   ; 903e: 06 a0 03... ...
    equb &6f, &ef                                                     ; 904a: 6f ef       o.
    equs "man"                                                        ; 904c: 6d 61 6e    man
    equb &f9, &88,   0, &84, &47, &98, &f0,   3, &20, &d3, &9a, &20   ; 904f: f9 88 00... ...
    equb &e2, &9a, &a0,   3, &b1,   2, &88, &91,   8, &b1,   2, &88   ; 905b: e2 9a a0... ...
    equb &91,   8, &b1,   2, &85, &46, &20, &aa, &8f, &90, &12, &a0   ; 9067: 91 08 b1... ...
    equb   3, &b1,   8, &20, &37, &91, &a5, &47, &f0,   7, &a0,   0   ; 9073: 03 b1 08... ...
    equb &b1,   8, &20, &3f, &91, &a9,   0, &a6, &47, &d0, &24, &20   ; 907f: b1 08 20... ..
    equb &aa, &8f, &90,   6, &a0,   0, &b1,   8, &d0, &1d, &ad, &55   ; 908b: aa 8f 90... ...
    equb   6, &c9, &ff, &f0, &ab, &a2, &ff, &e8, &4a, &b0, &fc, &ad   ; 9097: 06 c9 ff... ...
    equb &55,   6, &1d, &1f, &a7, &8d, &55,   6, &bd, &1f, &a7, &a0   ; 90a3: 55 06 1d... U..
    equb   0, &91,   8, &60, &a0,   0, &a9,   4, &e0, &a6, &d0, &1c   ; 90af: 00 91 08... ...
    equb &f0,   8, &a0,   1, &a9,   5, &e0, &a7, &d0, &12, &48, &20   ; 90bb: f0 08 a0... ...
    equb &c8, &8f, &a5, &46, &d0,   5, &20, &a7, &92                  ; 90c7: c8 8f a5... ...
    equs "h` L"                                                       ; 90d0: 68 60 20... h`
    equb &94                                                          ; 90d4: 94          .
    equs "h`H "                                                       ; 90d5: 68 60 48... h`H
    equb &f0, &8f, &68, &60                                           ; 90d9: f0 8f 68... ..h

.sub_c90dd
    lda #0                                                            ; 90dd: a9 00       ..
    beq c90e5                                                         ; 90df: f0 04       ..
    ldx l001a                                                         ; 90e1: a6 1a       ..
    lda l001b                                                         ; 90e3: a5 1b       ..
.c90e5
    stx l000c                                                         ; 90e5: 86 0c       ..
    sta l000d                                                         ; 90e7: 85 0d       ..
    lda l0656                                                         ; 90e9: ad 56 06    .V.
    sta l0014                                                         ; 90ec: 85 14       ..
    ldx #8                                                            ; 90ee: a2 08       ..
    stx l0016                                                         ; 90f0: 86 16       ..
.c90f2
    dec l0016                                                         ; 90f2: c6 16       ..
    asl l0014                                                         ; 90f4: 06 14       ..
    bcs c90fd                                                         ; 90f6: b0 05       ..
    bne c90f2                                                         ; 90f8: d0 f8       ..
    lda #1                                                            ; 90fa: a9 01       ..
    rts                                                               ; 90fc: 60          `

.c90fd
    ldx l0016                                                         ; 90fd: a6 16       ..
    lda l000d                                                         ; 90ff: a5 0d       ..
    beq c911d                                                         ; 9101: f0 1a       ..
    lda l0632,x                                                       ; 9103: bd 32 06    .2.
    cmp l000c                                                         ; 9106: c5 0c       ..
    lda l063a,x                                                       ; 9108: bd 3a 06    .:.
    sbc l000d                                                         ; 910b: e5 0d       ..
    bcc c90f2                                                         ; 910d: 90 e3       ..
    lda l062e                                                         ; 910f: ad 2e 06    ...
    cmp l0632,x                                                       ; 9112: dd 32 06    .2.
    lda l062f                                                         ; 9115: ad 2f 06    ./.
    sbc l063a,x                                                       ; 9118: fd 3a 06    .:.
    bcc c90f2                                                         ; 911b: 90 d5       ..
.c911d
    lda l0656                                                         ; 911d: ad 56 06    .V.
    eor la71f,x                                                       ; 9120: 5d 1f a7    ]..
    sta l0656                                                         ; 9123: 8d 56 06    .V.
    lda l0642,x                                                       ; 9126: bd 42 06    .B.
    pha                                                               ; 9129: 48          H
    lda l064a,x                                                       ; 912a: bd 4a 06    .J.
    jsr sub_c9137                                                     ; 912d: 20 37 91     7.
    pla                                                               ; 9130: 68          h
    jsr sub_c913f                                                     ; 9131: 20 3f 91     ?.
    jmp c90f2                                                         ; 9134: 4c f2 90    L..

.sub_c9137
    beq c916a                                                         ; 9137: f0 31       .1
    tay                                                               ; 9139: a8          .
    lda #osfind_close                                                 ; 913a: a9 00       ..
    jmp osfind                                                        ; 913c: 4c ce ff    L..            ; Close one or all files

.sub_c913f
    tax                                                               ; 913f: aa          .
    beq c916a                                                         ; 9140: f0 28       .(
    eor l0655                                                         ; 9142: 4d 55 06    MU.
    sta l0655                                                         ; 9145: 8d 55 06    .U.
    txa                                                               ; 9148: 8a          .
    jsr sub_c9170                                                     ; 9149: 20 70 91     p.
    stx l061a                                                         ; 914c: 8e 1a 06    ...
    sty l061b                                                         ; 914f: 8c 1b 06    ...
    lda #6                                                            ; 9152: a9 06       ..
    jsr sub_c9189                                                     ; 9154: 20 89 91     ..
    jmp osfile                                                        ; 9157: 4c dd ff    L..

    equb &a0,   4, &20, &7a, &9d, &ad, &1a,   4, &c9, &0d, &d0, &1e   ; 915a: a0 04 20... ..
    equb &a5, &46, &d0,   1                                           ; 9166: a5 46 d0... .F.

.c916a
    rts                                                               ; 916a: 60          `

    equb   0, &1e, &8b, &8a,   0                                      ; 916b: 00 1e 8b... ...

.sub_c9170
    ldx #&2f ; '/'                                                    ; 9170: a2 2f       ./
.loop_c9172
    inx                                                               ; 9172: e8          .
    lsr a                                                             ; 9173: 4a          J
    bcc loop_c9172                                                    ; 9174: 90 fc       ..
    ldy #7                                                            ; 9176: a0 07       ..
.loop_c9178
    lda la73e,y                                                       ; 9178: b9 3e a7    .>.
    sta l041a,y                                                       ; 917b: 99 1a 04    ...
    dey                                                               ; 917e: 88          .
    bpl loop_c9178                                                    ; 917f: 10 f7       ..
    stx l0420                                                         ; 9181: 8e 20 04    . .
.sub_c9184
    ldx #&1a                                                          ; 9184: a2 1a       ..
    ldy #4                                                            ; 9186: a0 04       ..
    rts                                                               ; 9188: 60          `

.sub_c9189
    ldx #&1a                                                          ; 9189: a2 1a       ..
    ldy #6                                                            ; 918b: a0 06       ..
    rts                                                               ; 918d: 60          `

    equb &a0,   7, &b1, &1a, &85,   8, &c8, &b1, &1a, &85,   9, &60   ; 918e: a0 07 b1... ...
    equb &18, &a5,   8, &69,   5, &85, &0a, &a5,   9, &69,   0, &85   ; 919a: 18 a5 08... ...
    equb &0b, &60, &20, &8e, &91, &20, &9a, &91, &20, &27, &92, &a0   ; 91a6: 0b 60 20... .`
    equb   4, &b1,   8, &29, &80, &f0, &0d, &b1,   8, &29, &10, &d0   ; 91b2: 04 b1 08... ...
    equb   1, &60,   0                                                ; 91be: 01 60 00    .`.
    equs "!EOF"                                                       ; 91c1: 21 45 4f... !EO
    equb 0, 0                                                         ; 91c5: 00 00       ..
    equs " Writ"                                                      ; 91c7: 20 57 72...  Wr
    equb &e5, &81,   0, &20, &9a, &91, &20, &e2, &91, &b1,   8, &29   ; 91cc: e5 81 00... ...
    equb &40, &f0,   1, &60, &4c, &96, &8a, &20, &8e, &91, &20, &aa   ; 91d8: 40 f0 01... @..
    equb &8f, &90, &11, &a0,   4, &b1,   8, &29, &80, &d0,   1, &60   ; 91e4: 8f 90 11... ...
    equb   0, &1f                                                     ; 91f0: 00 1f       ..
    equs "Rea"                                                        ; 91f2: 52 65 61    Rea
    equb &e4, &81,   0,   0, &13, &84, &86,   0, &20, &13, &92, &8d   ; 91f5: e4 81 00... ...
    equb &57,   6, &a9,   1, &60, &20, &13, &92, &c9, &31, &b0, &0e   ; 9201: 57 06 a9... W..
    equb &8d, &58,   6, &a9,   1, &60, &20, &b4, &9c, &b0,   3, &f0   ; 920d: 8d 58 06... .X.
    equb   1, &60,   0, &22, &89                                      ; 9219: 01 60 00... .`.
    equs "width"                                                      ; 921e: 77 69 64... wid
    equb   0, &20, &e2, &9a, &20, &aa, &8f, &90, &cc, &a0,   4, &b1   ; 9223: 00 20 e2... . .
    equb   8, &29,   4, &f0, &33, &b1,   8, &49,   4, &91,   8, &a0   ; 922f: 08 29 04... .).
    equb   4, &b1,   8, &29,   8, &d0, &38, &88, &b1,   8, &d0        ; 923b: 04 b1 08... ...
    equs "! X"                                                        ; 9246: 21 20 58    ! X
    equb &99, &c9, &80, &f0, &20, &aa, &a0,   4, &b1,   8, &29, &df   ; 9249: 99 c9 80... ...
    equb &91,   8, &e0, &0d, &d0,   8, &b1,   8,   9, &20, &91,   8   ; 9255: 91 08 e0... ...
    equb &a2, &20, &c8, &8a, &91,   8, &60, &a8, &20, &d7, &ff, &90   ; 9261: a2 20 c8... . .
    equb &e0, &a0,   4, &b1,   8,   9,   8, &91,   8, &29, &20, &f0   ; 926d: e0 a0 04... ...
    equb &e1, &b1,   8, &49, &70, &91,   8, &a9,   0, &60, &20, &a8   ; 9279: e1 b1 08... ...
    equb &91, &a0,   4, &b1,   8, &29, &20, &d0, &19, &20, &3a, &92   ; 9285: 91 a0 04... ...
    equb &4c, &86, &92, &20, &e2, &9a, &20, &ab, &91, &4c, &a7, &92   ; 9291: 4c 86 92... L..
    equb &20, &a8, &91, &a0,   0, &b1, &0a, &20, &f8, &99, &a0,   3   ; 929d: 20 a8 91...  ..
    equb &b1,   8, &d0, &0a, &c8, &b1,   8,   9,   4, &91,   8, &a9   ; 92a9: b1 08 d0... ...
    equb   1                                                          ; 92b5: 01          .
    equs "` :"                                                        ; 92b6: 60 20 3a    ` :
    equb &92, &a9,   1, &60, &20, &a8, &91, &a9,   0, &20, &aa, &9d   ; 92b9: 92 a9 01... ...
    equb &20, &90, &9d, &a9,   1, &60, &20, &a8, &91, &a9,   0, &20   ; 92c5: 20 90 9d...  ..
    equb &c3, &9d, &20, &a1, &9d, &a9,   1, &60, &aa, &a0,   4, &b1   ; 92d1: c3 9d 20... ..
    equb   8, &29, &9f, &91,   8, &88, &b1,   8, &d0,   4, &8a, &4c   ; 92dd: 08 29 9f... .).
    equb &ee, &ff, &a8, &8a, &4c, &d4, &ff, &20, &e2, &9a, &20, &cf   ; 92e9: ee ff a8... ...
    equb &91, &a0,   0, &b1, &0a, &20, &d9, &92, &a9,   1, &60, &ad   ; 92f5: 91 a0 00... ...
    equb &57,   6, &d0,   3, &8c, &57,   6, &60, &20, &df, &91, &a0   ; 9301: 57 06 d0... W..
    equb &0c, &20,   0, &93, &20, &88, &8b, &20, &ea, &a3, &a2,   1   ; 930d: 0c 20 00... . .
    equb &a9,   0, &20, &3c, &9f, &20, &84, &91, &4c, &40, &93, &20   ; 9319: a9 00 20... ..
    equb &df, &91, &a0,   1, &20,   0, &93, &20, &11, &9a, &a6,   0   ; 9325: df 91 a0... ...
    equb &a4,   1, &a9,   1, &cd, &57,   6, &90,   3, &ad, &57,   6   ; 9331: a4 01 a9... ...
    equb &8d, &5f,   6, &86, &0a, &84, &0b, &ad, &5f,   6, &cd, &57   ; 933d: 8d 5f 06... ._.
    equb   6, &b0, &0a, &a9, &20, &20, &d9, &92, &ce, &57,   6, &d0   ; 9349: 06 b0 0a... ...
    equb &ee, &a0,   0, &84, &16, &8c, &57,   6, &8c, &58,   6, &a4   ; 9355: ee a0 00... ...
    equb &16, &b1, &0a, &20, &d9, &92, &e6, &16, &ce, &5f,   6, &d0   ; 9361: 16 b1 0a... ...
    equb &f2, &a9,   1, &60, &20, &df, &91, &20, &c4, &9a, &a0,   1   ; 936d: f2 a9 01... ...
    equb &20, &fb, &9a, &f0, &13, &ad, &57,   6, &d0, &14, &a0,   0   ; 9379: 20 fb 9a...  ..
    equb &b1, &0a, &20, &d9, &92, &20, &ba, &94, &d0, &f4, &f0, &0d   ; 9385: b1 0a 20... ..
    equb &a4, &12, &20,   0, &93, &98, &a6, &0a, &a4, &0b, &20, &35   ; 9391: a4 12 20... ..
    equb &93, &a9,   3, &60, &20, &df, &91, &a0,   3, &b1,   8, &d0   ; 939d: 93 a9 03... ...
    equb   5, &a9, &0a, &20, &d9, &92, &a9, &0d, &20, &d9, &92, &a0   ; 93a9: 05 a9 0a... ...
    equb   4, &b1,   8,   9, &20, &91,   8, &a9,   1, &60, &20, &e2   ; 93b5: 04 b1 08... ...
    equb &9a, &20, &e2, &91, &b1,   8, &29, &20, &d0,   3, &20, &a4   ; 93c1: 9a 20 e2... . .
    equb &93, &a9, &0c, &20, &d9, &92, &a9,   1                       ; 93cd: 93 a9 0c... ...
    equs "` $"                                                        ; 93d5: 60 20 24    ` $
    equb &92, &a0,   4, &b1,   8, &29, &10, &d0,   7, &b1,   8        ; 93d8: 92 a0 04... ...
    equs ") LF"                                                       ; 93e3: 29 20 4c... ) L
    equb &8e, &4c, &c0, &91, &20, &24, &92, &a0,   4, &b1,   8, &29   ; 93e7: 8e 4c c0... .L.
    equb &10, &4c, &46, &8e, &20, &e2, &9a, &20, &ab, &91, &4c, &4f   ; 93f3: 10 4c 46... .LF
    equb &94, &20, &a8, &91, &a0,   1, &b1,   8, &aa, &a8, &88, &b1   ; 93ff: 94 20 a8... . .
    equb &0a, &91,   0, &88, &10, &f9, &8a, &20, &fe, &99, &4c, &4f   ; 940b: 0a 91 00... ...
    equb &94, &bd, &a3, &a6, &85, &4c, &20, &a8, &91, &a9,   0, &a0   ; 9417: 94 bd a3... ...
    equb   3, &91,   0, &88, &c4, &4c, &d0, &f9, &b1, &0a, &91,   0   ; 9423: 03 91 00... ...
    equb &88, &10, &f9, &20, &e4, &99, &4c, &4f, &94, &20, &d3, &9a   ; 942f: 88 10 f9... ...
    equb &20, &a8, &91, &a0,   1, &b1,   8, &85, &12, &c8, &b1,   8   ; 943b: 20 a8 91...  ..
    equb &85, &13, &20, &d9, &89, &20, &9a, &91, &20, &a8, &94, &20   ; 9447: 85 13 20... ..
    equb &d7, &ff, &b0,   9, &81, &0a, &20, &ba, &94, &d0, &f4, &f0   ; 9453: d7 ff b0... ...
    equb   8, &a0,   4, &b1,   8, &49, &50, &91,   8, &a9,   1, &60   ; 945f: 08 a0 04... ...
    equb &20, &e2, &9a, &20, &cf, &91, &4c, &90, &94, &20, &df, &91   ; 946b: 20 e2 9a...  ..
    equb &a0,   1, &b1,   8, &20, &72, &9a, &4c, &90, &94, &20, &68   ; 9477: a0 01 b1... ...
    equb &9a, &20, &df, &91, &4c, &90, &94, &20, &c4, &9a, &20, &df   ; 9483: 9a 20 df... . .
    equb &91, &20, &a8, &94, &a1, &0a, &20, &d4, &ff, &20, &ba, &94   ; 948f: 91 20 a8... . .
    equb &d0, &f6, &a0,   4, &b1,   8, &29, &bf, &91,   8, &a9,   1   ; 949b: d0 f6 a0... ...
    equb &60, &a0,   1, &b1,   8, &85, &12, &c8, &b1,   8, &85, &13   ; 94a7: 60 a0 01... `..
    equb &c8, &b1,   8, &a8, &a2,   0, &60, &e6, &0a, &d0,   2, &e6   ; 94b3: c8 b1 08... ...
    equb &0b, &a5, &12, &d0,   2, &c6, &13, &c6, &12, &d0,   2, &a5   ; 94bf: 0b a5 12... ...
    equb &13, &60, &8c, &31,   6, &8c, &55,   6, &8c, &56,   6, &8c   ; 94cb: 13 60 8c... .`.
    equb &57,   6, &8c, &58,   6, &8c, &52,   6, &c8, &b1,   2, &d0   ; 94d7: 57 06 8c... W..
    equb   2, &85, &17, &18, &c8, &a5, &1e, &71,   2, &85, &1c, &c8   ; 94e3: 02 85 17... ...
    equb &a5, &1f, &71,   2, &85, &1d, &ad,   0,   4, &d0, &16, &8d   ; 94ef: a5 1f 71... ..q
    equb &30,   6, &8d,   0, &c0, &8d,   1, &c0, &8d,   2, &c0, &a9   ; 94fb: 30 06 8d... 0..
    equb &38, &8d,   3, &c0, &a9, &c0, &8d, &31,   6, &18, &a5, &18   ; 9507: 38 8d 03... 8..
    equb &85, &1a, &69,   9, &85,   0, &a5, &19, &85, &1b, &69,   0   ; 9513: 85 1a 69... ..i
    equb &85,   1, &a9,   4, &60, &20, &dd, &90, &ad, &59,   6, &d0   ; 951f: 85 01 a9... ...
    equb   3, &4c, &44, &83, &ae, &39, &95, &ac, &3a, &95, &4c, &f7   ; 952b: 03 4c 44... .LD
    equb &ff, &ad, &46, &a7, &ad, &53,   6, &91,   0, &c8, &ad, &54   ; 9537: ff ad 46... ..F
    equb   6, &91,   0, &a5,   0, &8d, &53,   6, &a5,   1, &8d, &54   ; 9543: 06 91 00... ...
    equb   6, &a9,   9, &20, &fe, &99, &a9,   1                       ; 954f: 06 a9 09... ...
    equs "` ;"                                                        ; 9557: 60 20 3b    ` ;
    equb &95, &20, &9c, &9a, &a2,   2, &a0,   0, &b1,   8, &0a, &85   ; 955a: 95 20 9c... . .
    equb &16, &ad, &53,   6, &85, &0c, &ad, &54,   6, &85, &0d, &18   ; 9566: 16 ad 53... ..S
    equb &a0,   4, &8a, &65,   2, &91, &0c, &c8, &a9,   0, &65,   3   ; 9572: a0 04 8a... ...
    equb &91, &0c, &a0,   1, &b1, &0c, &8d, &54,   6, &a5, &1b, &91   ; 957e: 91 0c a0... ...
    equb &0c, &88, &b1, &0c, &8d, &53,   6, &a5, &1a, &91, &0c, &a4   ; 958a: 0c 88 b1... ...
    equb &16, &a5, &1e, &71, &1c, &85,   2, &c8, &a5, &1f, &71, &1c   ; 9596: 16 a5 1e... ...
    equb &85,   3, &a5, &0c, &85, &1a, &a5, &0d, &85, &1b, &a9,   0   ; 95a2: 85 03 a5... ...
    equb &60, &a0,   2, &20, &fb, &9a, &c8, &b1,   2, &85, &4a, &c8   ; 95ae: 60 a0 02... `..
    equb &b1,   2, &85, &4b, &20, &d0, &95, &a9,   6, &60, &84, &4b   ; 95ba: b1 02 85... ...
    equb &a0,   2, &20,   7, &9b, &c8, &b1,   2, &85, &4a, &a0,   1   ; 95c6: a0 02 20... ..
    equb &b1,   2, &a0,   6, &91, &1a, &aa, &86, &20, &18, &a5,   0   ; 95d2: b1 02 a0... ...
    equb &65, &12, &8d, &2c,   6, &a5,   1, &65, &13, &8d, &2d,   6   ; 95de: 65 12 8d... e..
    equb &20, &1e, &98, &a0,   3, &b5, &29, &91, &1a, &88, &b5, &21   ; 95ea: 20 1e 98...  ..
    equb &91, &1a, &a5, &1a, &95, &21, &a5, &1b, &95, &29, &ad, &5a   ; 95f6: 91 1a a5... ...
    equb   6, &f0, &0f, &a6,   0, &a5,   1, &a4, &4a, &84, &12, &a4   ; 9602: 06 f0 0f... ...
    equb &4b, &84, &13, &20, &ac, &99, &18, &a5,   0, &65, &4a, &85   ; 960e: 4b 84 13... K..
    equb   0, &a5,   1, &65, &4b, &85,   1, &a9,   4, &60, &a5, &1a   ; 961a: 00 a5 01... ...
    equb &85,   0, &a5, &1b, &85,   1, &a0,   6, &b1, &1a, &aa, &88   ; 9626: 85 00 a5... ...
    equb &b1, &1a, &85,   3, &88, &b1, &1a, &85,   2, &88, &b1, &1a   ; 9632: b1 1a 85... ...
    equb &95, &29, &88, &b1, &1a, &95, &21, &88, &b1,   0, &85, &1b   ; 963e: 95 29 88... .).
    equb &88, &b1,   0, &85, &1a, &a0,   6, &b1, &1a, &85, &20, &a9   ; 964a: 88 b1 00... ...
    equb   0                                                          ; 9656: 00          .
    equs "` s"                                                        ; 9657: 60 20 73    ` s
    equb &96, &a0,   2, &b1, &0a, &aa, &c8, &d1, &0a                  ; 965a: 96 a0 02... ...
    equs "` R"                                                        ; 9663: 60 20 52    ` R
    equb &9a, &20, &76, &96, &20, &8a, &9a, &20, &4e, &9a, &4c, &b5   ; 9666: 9a 20 76... . v
    equb &8e, &20, &46, &9a, &20, &1e, &8a, &a0,   1, &b1, &0a, &85   ; 9672: 8e 20 46... . F
    equb   9, &88, &b1, &0a, &85,   8                                 ; 967e: 09 88 b1... ...
    equs "` R"                                                        ; 9684: 60 20 52    ` R
    equb &9a, &20, &1e, &8a, &a0,   1, &b1, &0a, &aa, &88, &b1, &0a   ; 9687: 9a 20 1e... . .
    equb &85, &0a, &86, &0b, &4c, &8a, &9a, &20, &58, &96, &f0,   2   ; 9693: 85 0a 86... ...
    equb &b0, &1e, &a0,   0, &8a, &91,   8, &a9,   3                  ; 969f: b0 1e a0... ...
    equs "` d"                                                        ; 96a8: 60 20 64    ` d
    equb &96, &90, &1e, &a0,   3, &b1, &0a, &91,   8, &88, &10, &f9   ; 96ab: 96 90 1e... ...
    equb &a9,   3                                                     ; 96b7: a9 03       ..
    equs "` X"                                                        ; 96b9: 60 20 58    ` X
    equb &96, &b0, &e2, &20,   9, &97, &4c, &35, &97, &20, &64, &96   ; 96bc: 96 b0 e2... ...
    equb &90, &e4, &f0, &e2, &20, &1c, &97, &4c, &35, &97, &20, &73   ; 96c8: 90 e4 f0... ...
    equb &96, &18, &b1,   8, &69,   1, &91,   8, &b0, &2b, &a0,   3   ; 96d4: 96 18 b1... ...
    equb &d1, &0a, &90, &51, &f0, &4f, &d0, &21, &20, &85, &96, &20   ; 96e0: d1 0a 90... ...
    equb &58, &8b                                                     ; 96ec: 58 8b       X.
    equs "p, "                                                        ; 96ee: 70 2c 20    p,
    equb &b5, &8e, &b0, &40, &90                                      ; 96f1: b5 8e b0... ...
    equs "% s"                                                        ; 96f6: 25 20 73    % s
    equb &96, &38, &b1,   8, &e9,   1, &91,   8, &90,   6, &a0,   3   ; 96f9: 96 38 b1... .8.
    equb &d1, &0a, &b0, &2c, &a9,   1, &d0, &11, &20, &85, &96, &20   ; 9705: d1 0a b0... ...
    equb &70, &8b, &70,   7, &20, &b5, &8e, &90, &1b, &f0, &19, &a9   ; 9711: 70 8b 70... p.p
    equb   4, &aa, &0a, &20, &27, &9a, &20, &e2, &9a, &8a, &a8, &a9   ; 971d: 04 aa 0a... ...
    equb &b8, &88, &91,   8, &d0, &fb, &a9,   3, &60, &20, &1e, &8a   ; 9729: b8 88 91... ...
    equb &a0,   2, &b1,   2, &aa, &88, &b1,   2, &18, &65, &1e, &85   ; 9735: a0 02 b1... ...
    equb   2, &8a, &65, &1f, &85,   3, &a9,   0, &60, &20, &1e, &8a   ; 9741: 02 8a 65... ..e
    equb &20, &f1, &9a, &f0, &e3, &a9,   3, &60, &20, &1e, &8a, &a0   ; 974d: 20 f1 9a...  ..
    equb   1, &a2,   0, &b1,   2, &10,   1, &ca, &18, &65,   2, &85   ; 9759: 01 a2 00... ...
    equb   2, &8a, &65,   3, &85,   3, &a9,   0, &60, &20, &1e, &8a   ; 9765: 02 8a 65... ..e
    equb &20, &f1, &9a, &f0, &e2, &a9,   2, &60, &a0,   3, &b1,   2   ; 9771: 20 f1 9a...  ..
    equb &85, &20, &aa, &18, &c8, &b5, &21, &85, &1a, &71,   2, &85   ; 977d: 85 20 aa... . .
    equb   0, &c8, &b5, &29, &85, &1b, &71,   2, &85,   1, &a6,   0   ; 9789: 00 c8 b5... ...
    equb &20, &e5, &90, &d0, &9b, &18, &a5, &12, &69,   3, &29, &fc   ; 9795: 20 e5 90...  ..
    equb &85, &12, &90,   2, &e6, &13, &a9, &30, &85,   8, &a2,   6   ; 97a1: 85 12 90... ...
    equb &a5,   8, &85, &10, &86, &11, &a0,   0, &b1, &10, &85,   8   ; 97ad: a5 08 85... ...
    equb &c8, &b1, &10, &aa, &f0, &42, &86,   9, &c8, &b1,   8, &c5   ; 97b9: c8 b1 10... ...
    equb &12, &c8, &b1,   8, &e5, &13, &90, &e0, &d0, &16, &88, &b1   ; 97c5: 12 c8 b1... ...
    equb   8, &c5, &12, &d0, &0f, &88, &b1,   8, &91, &10, &88, &b1   ; 97d1: 08 c5 12... ...
    equb   8, &91, &10, &a6,   8, &a4,   9, &60, &38, &a0,   2, &b1   ; 97dd: 08 91 10... ...
    equb   8, &e5, &12, &91,   8, &aa, &c8, &b1,   8, &e5, &13, &91   ; 97e9: 08 e5 12... ...
    equb   8, &a8, &18, &8a, &65,   8, &aa, &98, &65,   9, &a8, &60   ; 97f5: 08 a8 18... ...
    equb &38, &ad, &2e,   6, &e5, &12, &8d, &2e,   6, &aa, &ad, &2f   ; 9801: 38 ad 2e... 8..
    equb   6, &e5, &13, &8d, &2f,   6, &a8, &b0, &0a                  ; 980d: 06 e5 13... ...

.c9816
    brk                                                               ; 9816: 00          .

    equb &0a, &80                                                     ; 9817: 0a 80       ..
    equs "room"                                                       ; 9819: 72 6f 6f... roo
    equb   0, &b0, &f6, &ad, &2e,   6, &cd, &2c,   6, &ad, &2f,   6   ; 981d: 00 b0 f6... ...
    equb &ed, &2d,   6, &90, &e8, &60, &18, &a5, &12, &69,   3, &29   ; 9829: ed 2d 06... .-.
    equb &fc, &85, &12, &90,   2, &e6, &13, &a9, &30, &85, &4a, &a2   ; 9835: fc 85 12... ...
    equb   6, &a5, &4a, &85, &10, &86, &11, &a0,   0, &b1, &10, &85   ; 9841: 06 a5 4a... ..J
    equb &4a, &c5,   8, &c8, &b1, &10, &85, &4b, &f0, &30, &aa, &e5   ; 984d: 4a c5 08... J..
    equb   9, &90, &e6, &18, &a5,   8, &65, &12, &aa, &a5,   9, &65   ; 9859: 09 90 e6... ...
    equb &13, &e4, &4a, &e5, &4b, &90, &1b, &18, &c8, &a5, &12, &71   ; 9865: 13 e4 4a... ..J
    equb &4a, &85, &12, &c8, &a5, &13, &71, &4a, &85, &13, &a0,   0   ; 9871: 4a 85 12... J..
    equb &b1, &4a, &aa, &c8, &b1, &4a, &86, &4a, &85, &4b, &a0,   0   ; 987d: b1 4a aa... .J.
    equb &a5,   8, &91, &10, &a5, &4a, &91,   8, &c8, &a5,   9, &91   ; 9889: a5 08 91... ...
    equb &10, &a5, &4b, &91,   8, &c8, &a5, &12, &91,   8, &c8, &a5   ; 9895: 10 a5 4b... ..K
    equb &13, &91,   8, &a5, &11, &c9,   8, &90, &61, &18, &a0,   2   ; 98a1: 13 91 08... ...
    equb &a5, &10, &71, &10, &aa, &c8, &a5, &11, &71, &10, &e4,   8   ; 98ad: a5 10 71... ..q
    equb &e5,   9, &90, &1a, &a0,   0, &b1,   8, &91, &10, &c8, &b1   ; 98b9: e5 09 90... ...
    equb   8, &91, &10, &18, &c8, &b1, &10, &71,   8, &91, &10, &c8   ; 98c5: 08 91 10... ...
    equb &b1, &10, &71,   8, &91, &10, &ad, &30,   6, &cd, &2e,   6   ; 98d1: b1 10 71... ..q
    equb &d0, &2c, &ae, &31,   6, &ec, &2f,   6, &d0, &24, &85, &4a   ; 98dd: d0 2c ae... .,.
    equb &86, &4b, &a0,   0, &b1, &4a, &8d, &30,   6, &c8, &b1, &4a   ; 98e9: 86 4b a0... .K.
    equb &8d, &31,   6, &18, &c8, &b1                                 ; 98f5: 8d 31 06... .1.
    equs "Jm."                                                        ; 98fb: 4a 6d 2e    Jm.
    equb   6, &8d, &2e,   6, &c8, &b1                                 ; 98fe: 06 8d 2e... ...
    equs "Jm/"                                                        ; 9904: 4a 6d 2f    Jm/
    equb   6, &8d, &2f,   6, &60, &20, &f9, &9a, &20, &18, &99, &a9   ; 9907: 06 8d 2f... ../
    equb   3, &60, &20,   5, &9b, &20, &d3, &9a, &20, &9a, &97, &98   ; 9913: 03 60 20... .`
    equb &48, &a0,   1, &91, &0e, &88, &8a, &91, &0e, &68, &ac, &5a   ; 991f: 48 a0 01... H..
    equb   6, &f0,   3, &20, &ac, &99, &a9,   2, &60, &20, &f9, &9a   ; 992b: 06 f0 03... ...
    equb &20, &40, &99, &a9,   3, &60, &20,   5, &9b, &20, &e2, &9a   ; 9937: 20 40 99...  @.
    equb &a5,   9, &f0, &0e, &c5,   8, &d0,   4, &c9, &b8, &f0,   6   ; 9943: a5 09 f0... ...
    equb &20, &2f, &98, &a9,   2                                      ; 994f: 20 2f 98...  /.
    equs "`L0"                                                        ; 9954: 60 4c 30    `L0
    equb &88, &a6, &17, &d0,   5, &20, &6e, &99, &a2,   0, &bd, &1a   ; 9957: 88 a6 17... ...
    equb   5, &e8, &c9, &0d, &d0,   2, &a2,   0, &86, &17, &60        ; 9963: 05 e8 c9... ...

.sub_c996e
    jsr sub_c998c                                                     ; 996e: 20 8c 99     ..
.c9971
    bit l00ff                                                         ; 9971: 24 ff       $.
    bmi c9976                                                         ; 9973: 30 01       0.
    rts                                                               ; 9975: 60          `

.c9976
    lda #osbyte_acknowledge_escape                                    ; 9976: a9 7e       .~
    jsr osbyte                                                        ; 9978: 20 f4 ff     ..            ; Clear escape condition and perform escape effects
    lda l0416                                                         ; 997b: ad 16 04    ...
    cmp #2                                                            ; 997e: c9 02       ..
    bcc c9988                                                         ; 9980: 90 06       ..
    jsr sub_cb7cc                                                     ; 9982: 20 cc b7     ..
    jmp caf8d                                                         ; 9985: 4c 8d af    L..

.c9988
    brk                                                               ; 9988: 00          .

    equb &11, &8e,   0                                                ; 9989: 11 8e 00    ...

.sub_c998c
    lda #osword_read_line                                             ; 998c: a9 00       ..
    ldx l9998                                                         ; 998e: ae 98 99    ...
    ldy l9999                                                         ; 9991: ac 99 99    ...
    jmp osword                                                        ; 9994: 4c f1 ff    L..            ; Read line from input stream (exits with C=1 if ESCAPE pressed)

    equb &ad                                                          ; 9997: ad          .
.l9998
    equb &39                                                          ; 9998: 39          9
.l9999
    equb &a7                                                          ; 9999: a7          .

.sub_c999a
    ldy #0                                                            ; 999a: a0 00       ..
    tya                                                               ; 999c: 98          .
    jsr osargs                                                        ; 999d: 20 da ff     ..            ; Get filing system number (A=0, Y=0)
    ; A is the filing system number:
    ;     A=0, no filing system selected
    ;     A=1, 1200 baud CFS
    ;     A=2, 300 baud CFS
    ;     A=3, ROM filing system
    ;     A=4, Disc filing system
    ;     A=5, Network filing system
    ;     A=6, Teletext filing system
    ;     A=7, IEEE filing system
    ;     A=8, ADFS
    ;     A=9, Host filing system
    ;     A=10, Videodisc filing system
    cmp #4                                                            ; 99a0: c9 04       ..             ; A=filing system number
    rts                                                               ; 99a2: 60          `

    equb &c8, &b1,   2, &8d, &5a,   6, &a9,   2, &60, &86, &0a, &85   ; 99a3: c8 b1 02... ...
    equb &0b, &a6, &13, &e8, &38, &a9,   0, &e5, &12, &a8, &f0, &16   ; 99af: 0b a6 13... ...
    equb &85, &14, &38, &a5, &0a, &e5, &14, &85, &0a, &b0,   2, &c6   ; 99bb: 85 14 38... ..8
    equb &0b, &a9, &b8, &91, &0a, &c8, &d0, &fb, &e6, &0b, &ca, &d0   ; 99c7: 0b a9 b8... ...
    equb &f4, &60, &a0,   1, &a5,   9, &91,   0, &88, &a5,   8, &91   ; 99d3: f4 60 a0... .`.
    equb   0, &a9,   2, &d0, &1a, &a9,   4, &d0, &16, &a9,   5, &d0   ; 99df: 00 a9 02... ...
    equb &12, &a9,   6, &d0, &0e, &a9, &10, &d0, &0a, &a9, &20, &d0   ; 99eb: 12 a9 06... ...
    equb   6, &a0,   0, &91,   0, &a9,   1, &18, &65,   0, &85,   0   ; 99f7: 06 a0 00... ...
    equb &90,   2, &e6,   1, &60, &a0, &1f, &20, &70, &9a, &a9, &20   ; 9a03: 90 02 e6... ...
    equb &d0, &16, &a9,   1, &d0, &12, &a9,   2, &d0, &0e, &a9,   4   ; 9a0f: d0 16 a9... ...
    equb &d0, &0a, &a9,   8, &d0,   6, &a9, &0a, &d0,   2, &a9, &10   ; 9a1b: d0 0a a9... ...
    equb &85, &14, &38, &a5,   0, &e5, &14, &85,   0, &b0,   2, &c6   ; 9a27: 85 14 38... ..8
    equb   1, &60, &a0, &1f, &20, &0d, &9a, &a9, &20, &d0, &16, &a9   ; 9a33: 01 60 a0... .`.
    equb   1, &d0, &12, &a9,   2, &d0, &0e, &a9,   4, &d0, &0a, &a9   ; 9a3f: 01 d0 12... ...
    equb   5, &d0,   6, &a9,   8, &d0,   2, &a9, &0a, &85, &14, &38   ; 9a4b: 05 d0 06... ...
    equb &a5,   0, &e5, &14, &85, &0a, &a5,   1, &e9,   0, &85, &0b   ; 9a57: a5 00 e5... ...
    equb &60, &a9,   2, &d0, &0a, &a9,   4, &d0,   6, &a9,   5, &d0   ; 9a63: 60 a9 02... `..
    equb   2, &a9, &20, &85, &14, &38, &a5,   0, &e5, &14, &85,   0   ; 9a6f: 02 a9 20... ..
    equb &85, &0a, &a5,   1, &e9,   0, &85,   1, &85, &0b, &60, &a9   ; 9a7b: 85 0a a5... ...
    equb   1, &d0,   2, &a9,   4, &85, &14, &38, &a5,   0, &e5, &14   ; 9a87: 01 d0 02... ...
    equb &85, &0c, &a5,   1, &e9,   0, &85, &0d, &60, &a9,   1, &d0   ; 9a93: 85 0c a5... ...
    equb &0a, &a9,   2, &d0,   6, &a9,   4, &d0,   2, &a9,   5, &18   ; 9a9f: 0a a9 02... ...
    equb &65,   2, &85,   8, &a9,   0, &65,   3, &85,   9, &60, &18   ; 9aab: 65 02 85... e..
    equb &a5,   2, &69,   1, &85, &0a, &a5,   3, &69,   0, &85, &0b   ; 9ab7: a5 02 69... ..i
    equb &60, &20, &15, &9a, &a0,   1, &b1,   0, &85, &0b, &88, &b1   ; 9ac3: 60 20 15... ` .
    equb   0, &85, &0a, &60, &20, &15, &9a, &a0,   1, &b1,   0, &85   ; 9acf: 00 85 0a... ...
    equb &0f, &88, &b1,   0, &85, &0e, &60, &20, &15, &9a, &a0,   1   ; 9adb: 0f 88 b1... ...
    equb &b1,   0, &85,   9, &88, &b1,   0, &85,   8, &60, &20, &11   ; 9ae7: b1 00 85... ...
    equb &9a, &a0,   0, &b1,   0, &60, &a0,   1, &b1,   2, &85, &12   ; 9af3: 9a a0 00... ...
    equb &c8, &b1,   2, &85, &13, &60, &a0,   1, &b1,   2, &85, &12   ; 9aff: c8 b1 02... ...
    equb &a9,   0, &85, &13, &60, &a0,   1, &b1,   2, &20, &27, &9a   ; 9b0b: a9 00 85... ...
    equb &c8, &b1,   2, &85, &15, &a0,   0, &b1,   0, &85,   8, &c8   ; 9b17: c8 b1 02... ...
    equb &b1,   0, &85,   9, &c8, &b1,   0, &85, &0a, &c8, &b1,   0   ; 9b23: b1 00 85... ...
    equb &85, &0b, &c8, &84, &16, &a0,   2, &b1, &0a, &c9,   1, &d0   ; 9b2f: 85 0b c8... ...
    equb   6, &a0,   4, &b1, &0a, &b0,   5, &a4, &16, &c8, &b1,   0   ; 9b3b: 06 a0 04... ...
    equb &48, &a4, &16, &b1,   0, &a0,   3, &f1, &0a, &aa, &c8, &68   ; 9b47: 48 a4 16... H..
    equb &f1, &0a, &20, &7f, &9b, &18, &8a, &65,   8, &85,   8, &98   ; 9b53: f1 0a 20... ..
    equb &65,   9, &85,   9, &a0,   2, &a5, &16, &71, &0a, &85, &16   ; 9b5f: 65 09 85... e..
    equb &a5, &0a, &69, &0b, &85, &0a, &90,   2, &e6, &0b, &c6, &15   ; 9b6b: a5 0a 69... ..i
    equb &d0, &bb, &20, &d5, &99, &a9,   3, &60, &86, &48, &85, &49   ; 9b77: d0 bb 20... ..
    equb &a0,   0, &b1, &0a, &aa, &c8, &b1, &0a, &d0, &26, &e0,   6   ; 9b83: a0 00 b1... ...
    equb &b0, &22, &8a, &a6, &48, &a4, &49, &c9,   2, &90, &18, &c9   ; 9b8f: b0 22 8a... .".
    equb   4, &90,   4,   6                                           ; 9b9b: 04 90 04... ...
    equs "H&I"                                                        ; 9b9f: 48 26 49    H&I
    equb 6                                                            ; 9ba2: 06          .
    equs "H&I)"                                                       ; 9ba3: 48 26 49... H&I
    equb   1, &f0, &e8, &8a, &65, &48, &aa, &98, &65, &49, &a8, &60   ; 9ba7: 01 f0 e8... ...
    equb &86, &46, &85, &47, &a2,   0, &a0,   0                       ; 9bb3: 86 46 85... .F.
    equs "fIfH"                                                       ; 9bbb: 66 49 66... fIf
    equb &90,   9, &18, &8a, &65, &46, &aa, &98, &65, &47, &a8,   6   ; 9bbf: 90 09 18... ...
    equs "F&G"                                                        ; 9bcb: 46 26 47    F&G
    equb &a5, &48,   5, &49, &d0, &e7, &60, &20, &a4, &9a, &20, &f1   ; 9bce: a5 48 05... .H.
    equb &9a, &85, &14, &a0,   3, &b1,   2, &aa, &a0,   0, &a5, &14   ; 9bda: 9a 85 14... ...
    equb &d1,   8, &f0, &10, &18, &a5,   8, &69,   3, &85,   8, &90   ; 9be6: d1 08 f0... ...
    equb   2, &e6,   9, &ca, &d0, &ec, &f0, &42, &a0,   2, &d0, &1e   ; 9bf2: 02 e6 09... ...
    equb &20, &a8, &9a, &20, &88, &8b, &a0,   3, &b1,   2, &aa, &c8   ; 9bfe: 20 a8 9a...  ..
    equb &b1,   2, &85, &16, &a0,   3, &b9, &6a,   0, &d1,   8, &d0   ; 9c0a: b1 02 85... ...
    equb &0e, &88, &10, &f6, &a0,   5, &b1,   8, &aa, &88, &b1,   8   ; 9c16: 0e 88 10... ...
    equb &4c, &3d, &97, &18, &a5,   8, &69,   6, &85,   8, &90,   2   ; 9c22: 4c 3d 97... L=.
    equb &e6,   9, &8a, &d0,   2, &c6, &16, &ca, &d0, &d6, &a5, &17   ; 9c2e: e6 09 8a... ...
    equb &d0, &d2, &a0,   1, &b1,   2, &c8, &11,   2, &f0,   3, &4c   ; 9c3a: d0 d2 a0... ...
    equb &35, &97,   0, &0b                                           ; 9c46: 35 97 00... 5..
    equs "Cas"                                                        ; 9c4a: 43 61 73    Cas
    equb &e5                                                          ; 9c4d: e5          .
    equs "index"                                                      ; 9c4e: 69 6e 64... ind
    equb   0, &20, &a8, &9a, &20, &f1, &9a, &38, &a0,   3, &f1,   2   ; 9c53: 00 20 a8... . .
    equb &90, &db, &c8, &d1,   2, &b0, &d6, &90, &35, &a9,   9, &20   ; 9c5f: 90 db c8... ...
    equb &aa, &9a, &20, &88, &8b, &38, &a2,   4, &a0,   3, &b9, &67   ; 9c6b: aa 9a 20... ..
    equb   0, &f1,   2, &99, &67,   0, &c8, &ca, &d0, &f4, &70, &b9   ; 9c77: 00 f1 02... ...
    equb   5, &6c, &d0, &b5, &a0,   7, &a5, &6a, &d1,   2, &c8, &a5   ; 9c83: 05 6c d0... .l.
    equb &6b, &f1,   2, &b0, &a8, &a5, &6b, &0a, &65,   9, &85,   9   ; 9c8f: 6b f1 02... k..
    equb &a5, &6a, &0a, &a8, &90,   2, &e6,   9, &b1,   8, &85, &14   ; 9c9b: a5 6a 0a... .j.
    equb &c8, &b1,   8, &aa,   5, &14, &f0, &8d, &a5, &14, &4c, &3d   ; 9ca7: c8 b1 08... ...
    equb &97, &20, &19, &9a, &a0,   3, &b1,   0, &d0,   7, &88, &d0   ; 9cb3: 97 20 19... . .
    equb &f9, &b1,   0, &18                                           ; 9cbf: f9 b1 00... ...
    equs "`8` 5"                                                      ; 9cc3: 60 38 60... `8`
    equb &97, &a5,   2, &85, &1e, &a5,   3, &85, &1f, &a9,   0, &60   ; 9cc8: 97 a5 02... ...
    equb &20, &1d, &9a, &a0, &0c, &d0,   5, &20, &15, &9a, &a0,   9   ; 9cd4: 20 1d 9a...  ..
    equb &84, &16, &20, &88, &8b, &20, &3b, &9d, &a0,   8, &b1,   0   ; 9ce0: 84 16 20... ..
    equb &aa, &a4, &16, &b1,   0, &a8, &a5, &6a, &20, &e2, &87, &85   ; 9cec: aa a4 16... ...
    equb &6a, &86, &6b, &84, &6c,   8, &68, &85, &6d, &20, &90, &9d   ; 9cf8: 6a 86 6b... j.k
    equb &a9,   1, &60, &38, &ad, &2e,   6, &ed, &2c,   6, &aa, &ad   ; 9d04: a9 01 60... ..`
    equb &2f,   6, &ed, &2d,   6, &a8, &4c, &1f, &9d, &20, &4a, &9d   ; 9d10: 2f 06 ed... /..
    equb &20, &9a, &97, &a9,   0, &86, &6a, &84, &6b, &85, &6c, &85   ; 9d1c: 20 9a 97...  ..
    equb &6d, &20, &90, &9d, &a9,   1                                 ; 9d28: 6d 20 90... m .
    equs "` J"                                                        ; 9d2e: 60 20 4a    ` J
    equb &9d, &20, &3b, &9d, &20, &2f, &98, &a9,   1, &60, &20, &19   ; 9d31: 9d 20 3b... . ;
    equb &9a, &a0,   0, &b1,   0, &85,   8, &c8, &b1,   0, &85,   9   ; 9d3d: 9a a0 00... ...
    equb &60, &20, &19, &9a, &a0,   0, &b1,   0, &85, &12, &c8, &b1   ; 9d49: 60 20 19... ` .
    equb   0, &85, &13                                                ; 9d55: 00 85 13    ...
    equs "` u"                                                        ; 9d58: 60 20 75    ` u
    equb &9d, &a9,   1, &20, &aa, &9d, &20, &90, &9d, &a9,   2        ; 9d5b: 9d a9 01... ...
    equs "` u"                                                        ; 9d66: 60 20 75    ` u
    equb &9d, &a9,   1, &20, &c3, &9d, &20, &a1, &9d, &a9,   2, &60   ; 9d69: 9d a9 01... ...
    equb &20, &d3, &9a, &a0,   1, &b1,   2, &a8, &a9, &0d, &99, &1a   ; 9d75: 20 d3 9a...  ..
    equb   4, &88, &c0, &ff, &f0,   8, &b1, &0e, &99, &1a,   4, &4c   ; 9d81: 04 88 c0... ...
    equb &82, &9d, &60, &20, &e4, &99, &20, &46, &9a, &a0,   3, &b9   ; 9d8d: 82 9d 60... ..`
    equb &6a,   0, &91, &0a, &88, &10, &f8, &60, &20, &e8, &99, &20   ; 9d99: 6a 00 91... j..
    equb &4a, &9a, &4c, &df, &a2, &a2,   0, &20, &c5, &9d, &20, &71   ; 9da5: 4a 9a 4c... J.L
    equb &a3, &a5, &41, &85, &6d, &a5, &42, &85, &6c, &a5, &43, &85   ; 9db1: a3 a5 41... ..A
    equb &6b, &a5, &44, &85, &6a, &60, &a2,   1, &8d, &66,   6, &8e   ; 9dbd: 6b a5 44... k.D
    equb &65,   6, &20, &93, &a4, &85, &16, &8d, &61,   6, &85, &35   ; 9dc9: 65 06 20... e.
    equb &85, &36, &8d, &64,   6, &a8, &b1, &0a, &ae, &66,   6, &f0   ; 9dd5: 85 36 8d... .6.
    equb   3, &20, &f3, &9e, &c9, &20, &f0, &f9, &c9, &2b, &f0,   7   ; 9de1: 03 20 f3... . .
    equb &c9, &2d, &d0,   6, &ee, &61,   6, &20, &f3, &9e, &a8, &c9   ; 9ded: c9 2d d0... .-.
    equb &3a, &b0, &38, &e9, &2f, &90, &34, &ee, &64,   6, &a6, &41   ; 9df9: 3a b0 38... :.8
    equb &e0, &18, &90, &0a, &a6, &35, &d0, &e7, &e6                  ; 9e05: e0 18 90... ...
    equs "607"                                                        ; 9e0e: 36 30 37    607
    equb &b0, &e1, &a6, &35, &f0,   4, &c6, &36, &10, &35, &20, &9a   ; 9e11: b0 e1 a6... ...
    equb &a0, &65, &45, &85, &45, &90, &d0, &e6, &44, &d0, &cc, &e6   ; 9e1d: a0 65 45... .eE
    equb &43, &d0, &c8, &e6, &42, &d0, &c4, &e6, &41, &d0, &c0, &ad   ; 9e29: 43 d0 c8... C..
    equb &64,   6, &f0, &1f, &ae, &65,   6, &d0, &1f, &a5, &42, &29   ; 9e35: 64 06 f0... d..
    equb &80,   5, &41, &d0,   7, &f0, &76, &ae, &65,   6, &d0,   3   ; 9e41: 80 05 41... ..A
    equb &4c, &bb, &8c,   0, &10                                      ; 9e4d: 4c bb 8c... L..
    equs "Rea"                                                        ; 9e52: 52 65 61    Rea
    equb &ec, &85,   0,   0, &1b, &82, &8c,   0, &a9,   0, &8d, &64   ; 9e55: ec 85 00... ...
    equb   6, &a6, &35, &d0,   6, &e6, &35, &c0, &2e, &f0, &88, &c0   ; 9e61: 06 a6 35... ..5
    equb &65, &f0,   4, &c0, &45, &d0, &4a, &85, &0c, &8d, &62,   6   ; 9e6d: 65 f0 04... e..
    equb &20, &f3, &9e, &c9, &2b, &f0,   7, &c9, &2d, &d0,   6, &ee   ; 9e79: 20 f3 9e...  ..
    equb &62,   6, &20, &f3, &9e, &c9, &3a, &b0, &1a, &e9, &2f, &90   ; 9e85: 62 06 20... b.
    equb &16, &ee, &64,   6, &85, &14, &a5, &0c, &c9, &1a, &b0, &b3   ; 9e91: 16 ee 64... ..d
    equb &0a, &0a, &65, &0c, &0a, &65, &14, &85, &0c, &90, &df, &ad   ; 9e9d: 0a 0a 65... ..e
    equb &64,   6, &f0, &ab, &18, &a5, &0c, &ae, &62,   6, &f0,   3   ; 9ea9: 64 06 f0... d..
    equb &38, &49, &ff, &65, &36, &85, &36, &70, &92, &20, &d6, &a4   ; 9eb5: 38 49 ff... 8I.
    equb &f0, &2f, &a9, &a8, &85                                      ; 9ec1: f0 2f a9... ./.
    equs "@ ("                                                        ; 9ec6: 40 20 28    @ (
    equb &a4, &a5, &36, &30, &0b, &f0, &10, &20,   2, &a2, &c6, &36   ; 9ec9: a4 a5 36... ..6
    equb &d0, &f9, &f0,   7, &20, &27, &a2, &e6, &36, &d0, &f9, &20   ; 9ed5: d0 f9 f0... ...
    equb &73, &a4, &ae, &61,   6, &f0, &0a, &a5, &41, &f0,   6, &a5   ; 9ee1: 73 a4 ae... s..
    equb &3e, &49, &80, &85, &3e, &60, &ad, &66,   6, &d0,   3, &4c   ; 9eed: 3e 49 80... >I.
    equb &3a, &92, &a4, &16, &b9, &1a,   4, &e6, &16, &60, &a5        ; 9ef9: 3a 92 a4... :..
    equs "EeM"                                                        ; 9f04: 45 65 4d    EeM
    equb &85, &45, &a5                                                ; 9f07: 85 45 a5    .E.
    equs "DeL"                                                        ; 9f0a: 44 65 4c    DeL
    equb &85, &44, &a5                                                ; 9f0d: 85 44 a5    .D.
    equs "CeK"                                                        ; 9f10: 43 65 4b    CeK
    equb &85, &43, &a5                                                ; 9f13: 85 43 a5    .C.
    equs "BeJ"                                                        ; 9f16: 42 65 4a    BeJ
    equb &85, &42, &a5                                                ; 9f19: 85 42 a5    .B.
    equs "AeI"                                                        ; 9f1c: 41 65 49    AeI
    equb &85                                                          ; 9f1f: 85          .
    equs "A` J"                                                       ; 9f20: 41 60 20... A`
    equb &9a, &20, &a0, &a2, &f0, &0f, &e0, &c8, &f0,   4, &a5, &3e   ; 9f24: 9a 20 a0... . .
    equb &10,   7, &c8, &b1, &0a, &49, &80, &91, &0a, &a9,   1, &60   ; 9f30: 10 07 c8... ...
    equb &8e, &5d,   6, &8d, &60,   6, &a9,   0, &8d, &5f,   6, &85   ; 9f3c: 8e 5d 06... .].
    equb &37, &a9, &2d, &a6, &3e, &30,   7, &ae, &5d,   6, &d0,   7   ; 9f48: 37 a9 2d... 7.-
    equb &a9, &20, &85                                                ; 9f54: a9 20 85    . .
    equs "> }"                                                        ; 9f57: 3e 20 7d    > }
    equb &a0, &a6, &41, &d0,   3, &4c, &e5, &9f, &a5, &40, &c9, &81   ; 9f5a: a0 a6 41... ..A
    equb &b0, &0d, &20,   2, &a2, &c6                                 ; 9f66: b0 0d 20... ..
    equs "7Lb"                                                        ; 9f6c: 37 4c 62    7Lb
    equb &9f, &20, &fa, &a4, &d0, &0f, &c9, &84, &90, &10, &d0,   6   ; 9f6f: 9f 20 fa... . .
    equb &a5, &41, &c9, &a0, &90,   8, &20, &27, &a2, &e6             ; 9f7b: a5 41 c9... .A.
    equs "7Lb"                                                        ; 9f85: 37 4c 62    7Lb
    equb &9f, &a5, &45, &85, &33, &20, &d7, &a2, &20, &93, &a4, &a9   ; 9f88: 9f a5 45... ..E
    equb &a0, &85, &41, &a9, &83, &85, &40, &a5, &37, &ae, &5d,   6   ; 9f94: a0 85 41... ..A
    equb &d0,   1, &8a                                                ; 9fa0: d0 01 8a    ...
    equs "8m`"                                                        ; 9fa3: 38 6d 60    8m`
    equb   6, &c9, &0b, &90,   2, &a9, &0a, &8d, &68,   6, &aa, &f0   ; 9fa6: 06 c9 0b... ...
    equb   6, &20, &27, &a2, &ca, &d0, &fa, &20, &68, &a3, &20,   4   ; 9fb2: 06 20 27... . '
    equb &a3, &a5, &33, &85, &4d, &20, &0e, &a1, &a5, &40, &c9, &84   ; 9fbe: a3 a5 33... ..3
    equb &b0, &0e                                                     ; 9fca: b0 0e       ..
    equs "fAfBfCfDfE"                                                 ; 9fcc: 66 41 66... fAf
    equb &e6, &40, &d0, &ec, &a5, &41, &c9, &a0, &b0, &90, &ad, &68   ; 9fd6: e6 40 d0... .@.
    equb   6, &d0, &0c, &20, &93, &a4, &85, &37, &ae, &60,   6, &e8   ; 9fe2: 06 d0 0c... ...
    equb &8e, &68,   6, &a9,   0, &ae, &5d,   6, &f0,   7, &a6, &37   ; 9fee: 8e 68 06... .h.
    equb &10,   3, &38, &e5, &37, &8d, &6b,   6, &a9,   1, &ae, &5d   ; 9ffa: 10 03 38... ..8
    equb   6, &f0,   6, &a6, &37, &30,   2, &e8, &8a, &8d, &6a,   6   ; a006: 06 f0 06... ...
    equb &18, &6d, &60,   6, &8d, &69,   6, &ad, &6b,   6, &f0, &0b   ; a012: 18 6d 60... .m`
    equb &a9                                                          ; a01e: a9          .
    equs "0 }"                                                        ; a01f: 30 20 7d    0 }
    equb &a0, &ce, &6b,   6, &4c, &3c, &a0, &ad, &68,   6, &f0,   9   ; a022: a0 ce 6b... ..k
    equb &20, &8b, &a0, &ce, &68,   6, &4c, &3c, &a0, &a9             ; a02e: 20 8b a0...  ..
    equs "0 }"                                                        ; a038: 30 20 7d    0 }
    equb &a0, &ce, &69,   6, &f0, &0d, &ce, &6a,   6, &d0, &d3, &a9   ; a03b: a0 ce 69... ..i
    equs ". }"                                                        ; a047: 2e 20 7d    . }
    equb &a0, &4c, &19, &a0, &ad, &5d,   6, &d0, &37, &a9             ; a04a: a0 4c 19... .L.
    equs "e }"                                                        ; a054: 65 20 7d    e }
    equb &a0, &a9, &2b, &a4, &37, &10,   2, &a9                       ; a057: a0 a9 2b... ..+
    equs "- }"                                                        ; a05f: 2d 20 7d    - }
    equb &a0, &98, &10,   5, &38, &a9,   0, &e5, &37, &a2, &ff, &38   ; a062: a0 98 10... ...
    equb &e8, &e9, &0a, &b0, &fb, &69, &0a, &48, &8a, &20, &7b, &a0   ; a06e: e8 e9 0a... ...
    equb &68,   9, &30, &86, &69, &ae, &5f,   6, &9d, &1a,   4, &a6   ; a07a: 68 09 30... h.0
    equb &69, &ee, &5f,   6, &60, &a5                                 ; a086: 69 ee 5f... i._
    equs "AJJJJ {"                                                    ; a08c: 41 4a 4a... AJJ
    equb &a0, &a5, &41, &29, &0f, &85, &41, &48, &a6, &44, &a5, &41   ; a093: a0 a5 41... ..A
    equb &48, &a5, &42, &48, &a5, &43, &48, &a5, &45, &0a             ; a09f: 48 a5 42... H.B
    equs "&D&C&B&A"                                                   ; a0a9: 26 44 26... &D&
    equb &0a                                                          ; a0b1: 0a          .
    equs "&D&C&B&AeE"                                                 ; a0b2: 26 44 26... &D&
    equb &85, &45, &8a, &65, &44, &85                                 ; a0bc: 85 45 8a... .E.
    equs "DheC"                                                       ; a0c2: 44 68 65... Dhe
    equb &85                                                          ; a0c6: 85          .
    equs "CheB"                                                       ; a0c7: 43 68 65... Che
    equb &85                                                          ; a0cb: 85          .
    equs "BheA"                                                       ; a0cc: 42 68 65... Bhe
    equb 6                                                            ; a0d0: 06          .
    equs "E&D&C&B*"                                                   ; a0d1: 45 26 44... E&D
    equb &85                                                          ; a0d9: 85          .
    equs "Ah` "                                                       ; a0da: 41 68 60... Ah`
    equb   4, &a3, &20, &df, &a2, &a5, &46, &85, &3e, &a5, &48, &85   ; a0de: 04 a3 20... ..
    equb &40, &a5, &49, &85, &41, &a5, &4a, &85, &42, &a5, &4b, &85   ; a0ea: 40 a5 49... @.I
    equb &43, &a5, &4c, &85, &44, &a5, &4d, &85                       ; a0f6: 43 a5 4c... C.L
    equs "E` "                                                        ; a0fe: 45 60 20    E`
    equb &e8, &9e, &20,   4, &a3, &f0, &f7, &20, &0e, &a1, &4c, &73   ; a101: e8 9e 20... ..
    equb &a4, &a5, &41, &f0, &d1, &a0,   0, &38, &a5, &40, &e5, &48   ; a10d: a4 a5 41... ..A
    equb &f0, &72, &90, &35, &c9, &25, &b0, &de                       ; a119: f0 72 90... .r.
    equs "H)8"                                                        ; a121: 48 29 38    H)8
    equb &f0, &17, &38, &a6, &4c, &86, &4d, &a6, &4b, &86, &4c, &a6   ; a124: f0 17 38... ..8
    equb &4a, &86, &4b, &a6, &49, &86, &4a, &84, &49, &e9,   8, &d0   ; a130: 4a 86 4b... J.K
    equb &ea, &68, &29,   7, &f0, &4b, &aa                            ; a13c: ea 68 29... .h)
    equs "FIfJfKfLfM"                                                 ; a143: 46 49 66... FIf
    equb &ca, &d0, &f3, &f0, &3b, &49, &ff, &69,   1, &c9, &25, &b0   ; a14d: ca d0 f3... ...
    equb &89                                                          ; a159: 89          .
    equs "H)8"                                                        ; a15a: 48 29 38    H)8
    equb &f0, &17, &38, &a6, &44, &86, &45, &a6, &43, &86, &44, &a6   ; a15d: f0 17 38... ..8
    equb &42, &86, &43, &a6, &41, &86, &42, &84, &41, &e9,   8, &d0   ; a169: 42 86 43... B.C
    equb &ea, &68, &29,   7, &f0, &0e, &aa                            ; a175: ea 68 29... .h)
    equs "FAfBfCfDfE"                                                 ; a17c: 46 41 66... FAf
    equb &ca, &d0, &f3, &a5, &48, &85, &40, &a5                       ; a186: ca d0 f3... ...
    equs ">EF"                                                        ; a18e: 3e 45 46    >EF
    equb &10, &49, &a5, &41, &c5, &49, &d0, &1b, &a5, &42, &c5, &4a   ; a191: 10 49 a5... .I.
    equb &d0, &15, &a5, &43, &c5, &4b, &d0, &0f, &a5, &44, &c5, &4c   ; a19d: d0 15 a5... ...
    equb &d0,   9, &a5, &45, &c5, &4d, &d0,   3, &4c, &93, &a4, &b0   ; a1a9: d0 09 a5... ...
    equb &2a, &38, &a5, &4d, &e5, &45, &85, &45, &a5, &4c, &e5, &44   ; a1b5: 2a 38 a5... *8.
    equb &85, &44, &a5, &4b, &e5, &43, &85, &43, &a5, &4a, &e5, &42   ; a1c1: 85 44 a5... .D.
    equb &85, &42, &a5, &49, &e5, &41, &85, &41, &a5, &46, &85        ; a1cd: 85 42 a5... .B.
    equs ">L("                                                        ; a1d8: 3e 4c 28    >L(
    equb &a4, &18, &4c, &11, &a2, &38, &a5, &45, &e5, &4d, &85, &45   ; a1db: a4 18 4c... ..L
    equb &a5, &44, &e5, &4c, &85, &44, &a5, &43, &e5, &4b, &85, &43   ; a1e7: a5 44 e5... .D.
    equb &a5, &42, &e5, &4a, &85, &42, &a5, &41, &e5, &49, &85        ; a1f3: a5 42 e5... .B.
    equs "AL("                                                        ; a1fe: 41 4c 28    AL(
    equb &a4, &18, &a5, &40, &69,   3, &85                            ; a201: a4 18 a5... ...
    equs "@&? N"                                                      ; a208: 40 26 3f... @&?
    equb &a3, &20, &51, &a3, &20,   3, &9f, &90, &10                  ; a20d: a3 20 51... . Q
    equs "fAfBfCfDfE"                                                 ; a216: 66 41 66... fAf
    equb &e6, &40, &d0,   2, &e6                                      ; a220: e6 40 d0... .@.
    equs "?`8"                                                        ; a225: 3f 60 38    ?`8
    equb &a5, &40, &e9,   4, &85, &40, &b0,   2, &c6                  ; a228: a5 40 e9... .@.
    equs "? N"                                                        ; a231: 3f 20 4e    ? N
    equb &a3, &20, &11, &a2, &20, &4e, &a3, &20, &51, &a3, &20, &51   ; a234: a3 20 11... . .
    equb &a3, &20, &51, &a3, &20, &11, &a2, &a9,   0, &85, &49, &a5   ; a240: a3 20 51... . Q
    equb &41, &85, &4a, &a5, &42, &85, &4b, &a5, &43, &85, &4c, &a5   ; a24c: 41 85 4a... A.J
    equb &44, &85, &4d, &a5                                           ; a258: 44 85 4d... D.M
    equs "E* "                                                        ; a25c: 45 2a 20    E*
    equb &11, &a2, &a9,   0, &85, &49, &85, &4a, &a5, &41, &85, &4b   ; a25f: 11 a2 a9... ...
    equb &a5, &42, &85, &4c, &a5, &43, &85, &4d, &a5                  ; a26b: a5 42 85... .B.
    equs "D* "                                                        ; a274: 44 2a 20    D*
    equb &11, &a2, &a5, &42, &2a, &a5                                 ; a277: 11 a2 a5... ...
    equs "AeE"                                                        ; a27d: 41 65 45    AeE
    equb &85, &45, &90, &a2, &e6, &44, &d0, &9e, &e6, &43, &d0, &9a   ; a280: 85 45 90... .E.
    equb &e6, &42, &d0, &96, &e6, &41, &d0, &92, &4c, &14, &a2, &20   ; a28c: e6 42 d0... .B.
    equb &6c, &9a, &4c, &a0, &a2, &20, &68, &a3, &a0,   4, &b1, &0a   ; a298: 6c 9a 4c... l.L
    equb &85, &44, &88, &b1, &0a, &85, &43, &88, &b1, &0a, &85, &42   ; a2a4: 85 44 88... .D.
    equb &88, &b1, &0a, &85, &3e, &88, &b1, &0a, &85, &40, &84, &45   ; a2b0: 88 b1 0a... ...
    equb &84, &3f,   5, &3e,   5, &42,   5, &43,   5, &44, &f0,   4   ; a2bc: 84 3f 05... .?.
    equb &a5, &3e,   9, &80, &85, &41, &60, &a9, &58, &d0,   6, &a9   ; a2c8: a5 3e 09... .>.
    equb &5d, &d0,   2, &a9, &53, &85, &0a, &a9,   0, &85, &0b, &a0   ; a2d4: 5d d0 02... ]..
    equb   0, &a5, &40, &91, &0a, &c8, &a5, &3e, &29, &80, &85, &3e   ; a2e0: 00 a5 40... ..@
    equb &a5, &41, &29, &7f,   5, &3e, &91, &0a, &c8, &a5, &42, &91   ; a2ec: a5 41 29... .A)
    equb &0a, &c8, &a5, &43, &91, &0a, &c8, &a5, &44, &91, &0a, &60   ; a2f8: 0a c8 a5... ...
    equb &a0,   4, &b1, &0a, &85, &4c, &88, &b1, &0a, &85, &4b, &88   ; a304: a0 04 b1... ...
    equb &b1, &0a, &85, &4a, &88, &b1, &0a, &85, &46, &88, &84, &4d   ; a310: b1 0a 85... ...
    equb &b1, &0a, &85, &48,   5, &46,   5, &4a,   5, &4b,   5, &4c   ; a31c: b1 0a 85... ...
    equb &f0,   4, &a5, &46,   9, &80, &85, &49, &60, &a5, &3e, &85   ; a328: f0 04 a5... ...
    equb &46, &a5, &40, &85, &48, &a5, &41, &85, &49, &a5, &42, &85   ; a334: 46 a5 40... F.@
    equb &4a, &a5, &43, &85, &4b, &a5, &44, &85, &4c, &a5, &45, &85   ; a340: 4a a5 43... J.C
    equs "M` 1"                                                       ; a34c: 4d 60 20... M`
    equb &a3                                                          ; a350: a3          .
    equs "FIfJfKfLfM`"                                                ; a351: 46 49 66... FIf
    equb &a9, &62, &d0, &0a, &a9, &58, &d0,   6, &a9, &5d, &d0,   2   ; a35c: a9 62 d0... .b.
    equb &a9, &53, &85, &0a, &a9,   0, &85, &0b, &60, &a5, &40, &10   ; a368: a9 53 85... .S.
    equb &6c, &20, &e9, &a4, &20, &d6, &a4, &f0                       ; a374: 6c 20 e9... l .
    equs "FFAfBfCfDfIfJfKfL"                                          ; a37c: 46 46 41... FFA
    equb &e6, &40, &f0, &56, &a5, &40, &c9, &a0, &f0, &2c, &b0, &4e   ; a38d: e6 40 f0... .@.
    equb &c9, &99, &b0, &e0, &69,   8, &85, &40, &a5, &4b, &85, &4c   ; a399: c9 99 b0... ...
    equb &a5, &4a, &85, &4b, &a5, &49, &85, &4a, &a5, &44, &85, &49   ; a3a5: a5 4a 85... .J.
    equb &a5, &43, &85, &44, &a5, &42, &85, &43, &a5, &41, &85, &42   ; a3b1: a5 43 85... .C.
    equb &a9,   0, &85, &41, &f0, &ce, &a5, &3e, &10, &19, &38, &a9   ; a3bd: a9 00 85... ...
    equb   0, &e5, &44, &85, &44, &a9,   0, &e5, &43, &85, &43, &a9   ; a3c9: 00 e5 44... ..D
    equb   0, &e5, &42, &85, &42, &a9,   0, &e5, &41, &85             ; a3d5: 00 e5 42... ..B
    equs "A` 1"                                                       ; a3df: 41 60 20... A`
    equb &a3, &4c, &93, &a4, &4c, &bb, &8c, &a2,   0, &86, &45, &86   ; a3e3: a3 4c 93... .L.
    equb &3f, &a5, &6d, &10,   5, &20, &3c, &8c, &a2, &ff, &86, &3e   ; a3ef: 3f a5 6d... ?.m
    equb &a5, &6a, &85, &44, &a5, &6b, &85, &43, &a5, &6c, &85, &42   ; a3fb: a5 6a 85... .j.
    equb &a5, &6d, &85, &41, &a9, &a0, &85                            ; a407: a5 6d 85... .m.
    equs "@L("                                                        ; a40e: 40 4c 28    @L(
    equb &a4, &48, &20, &93, &a4, &68, &f0, &c7, &10,   7, &85, &3e   ; a411: a4 48 20... .H
    equb &38, &a9,   0, &e5, &3e, &85, &41, &a9, &88, &85, &40, &a5   ; a41d: 38 a9 00... 8..
    equb &41, &30, &b4,   5, &42,   5, &43,   5, &44,   5, &45, &f0   ; a429: 41 30 b4... A0.
    equb &69, &a5, &40, &a4, &41, &30, &a4, &d0, &21, &a6, &42, &86   ; a435: 69 a5 40... i.@
    equb &41, &a6, &43, &86, &42, &a6, &44, &86, &43, &a6, &45, &86   ; a441: 41 a6 43... A.C
    equb &44, &84, &45, &38, &e9,   8, &85, &40, &b0, &e1, &c6, &3f   ; a44d: 44 84 45... D.E
    equb &90, &dd, &a4                                                ; a459: 90 dd a4    ...
    equs "A0F"                                                        ; a45c: 41 30 46    A0F
    equb 6                                                            ; a45f: 06          .
    equs "E&D&C&B&A"                                                  ; a460: 45 26 44... E&D
    equb &e9,   0, &85, &40, &b0, &ec, &c6, &3f, &90, &e8, &a5, &45   ; a469: e9 00 85... ...
    equb &c9, &80, &90, &10, &f0,   8, &a9, &ff, &20, &7e, &a2, &4c   ; a475: c9 80 90... ...
    equb &89, &a4, &a5, &44,   9,   1, &85, &44, &a9,   0, &85, &45   ; a481: 89 a4 a5... ...
    equb &a5, &3f, &f0, &14, &10, &13                                 ; a48d: a5 3f f0... .?.

.sub_ca493
    lda #0                                                            ; a493: a9 00       ..
    sta l0041                                                         ; a495: 85 41       .A
    sta l0042                                                         ; a497: 85 42       .B
    sta l0043                                                         ; a499: 85 43       .C
    sta l0044                                                         ; a49b: 85 44       .D
    sta l0045                                                         ; a49d: 85 45       .E
    sta l003e                                                         ; a49f: 85 3e       .>
    sta l0040                                                         ; a4a1: 85 40       .@
    sta l003f                                                         ; a4a3: 85 3f       .?
    rts                                                               ; a4a5: 60          `

    equb &4c, &50, &9e, &a5, &40, &10                                 ; a4a6: 4c 50 9e... LP.
    equs "% q"                                                        ; a4ac: 25 20 71    % q
    equb &a3, &a5, &44, &85, &3a, &20, &eb, &a0, &a9, &80, &85, &40   ; a4af: a3 a5 44... ..D
    equb &a6, &41, &10, &10, &45, &3e, &85, &3e, &10,   5, &e6, &3a   ; a4bb: a6 41 10... .A.
    equb &4c, &cc, &a4, &c6, &3a, &20, &c7, &a3, &4c, &28, &a4, &a9   ; a4c7: 4c cc a4... L..
    equb   0, &85, &3a, &a5, &41,   5, &42,   5, &43,   5, &44,   5   ; a4d3: 00 85 3a... ..:
    equb &45, &f0, &bd, &a5, &3e, &30,   2, &a9,   1, &60, &a9,   0   ; a4df: 45 f0 bd... E..
    equb &85, &46, &85, &48, &85, &49, &85, &4a, &85, &4b, &85, &4c   ; a4eb: 85 46 85... .F.
    equb &85                                                          ; a4f7: 85          .
    equs "M` "                                                        ; a4f8: 4d 60 20    M`
    equb &93, &a4, &a0, &80, &84, &41, &c8, &84, &40, &98, &60, &ff   ; a4fb: 93 a4 a0... ...
.la507
    equs "PPPP"                                                       ; a507: 50 50 50... PPP
    equb &bc, &fb, &fb, &6d, &1c                                      ; a50b: bc fb fb... ...
    equs "ccccc"                                                      ; a510: 63 63 63... ccc
    equb &0e, &0e                                                     ; a515: 0e 0e       ..
    equs "T[[[[[qqDDDDD"                                              ; a517: 54 5b 5b... T[[
    equb &ef, &ef, &a3, &15                                           ; a524: ef ef a3... ...
    equs "LLLLL"                                                      ; a528: 4c 4c 4c... LLL
    equb &8b, &8b, &c6                                                ; a52d: 8b 8b c6    ...
    equs "%7>"                                                        ; a530: 25 37 3e    %7>
    equb &17, &1f, &16, &11, &0b, &66, &0e                            ; a533: 17 1f 16... ...
    equs ":::::"                                                      ; a53a: 3a 3a 3a... :::
    equb &e5, &e5                                                     ; a53f: e5 e5       ..
    equs "]?????~~"                                                   ; a541: 5d 3f 3f... ]??
    equb &10, &a2                                                     ; a549: 10 a2       ..
    equs "2JUny"                                                      ; a54b: 32 4a 55... 2JU
    equb &9a, &f6, &88, &19, &39, &aa, &f1, &a3, &3b, &bd             ; a550: 9a f6 88... ...
    equs ";''''''VV"                                                  ; a55a: 3b 27 27... ;''
    equb &a0, &a0, &a0, &a0, &a0, &a0                                 ; a563: a0 a0 a0... ...
    equs "aaaaaall"                                                   ; a569: 61 61 61... aaa
    equb &80, &90, &d1, &d1, &d1, &d1, &d1, &d1                       ; a571: 80 90 d1... ...
    equs "44444!"                                                     ; a579: 34 34 34... 444
    equb &ac, &ac, &ac, &ac                                           ; a57f: ac ac ac... ...
    equs "[$x"                                                        ; a583: 5b 24 78    [$x
    equb &87, &98, &fc, &2d,   5, &0a, &14, &1e, &83, &9d, &bf, &bd   ; a586: 87 98 fc... ...
    equb &cb,   0, &94, &f7, &f0, &6b, &18, &18, &38, &a1, &24, &7a   ; a592: cb 00 94... ...
    equb   9, &58,   6,   6, &fd                                      ; a59e: 09 58 06... .X.
    equs "qt?"                                                        ; a5a3: 71 74 3f    qt?
    equb &0d, &29, &35, &81, &81, &8a, &51, &b3, &bd, &2f, &1b, &b3   ; a5a6: 0d 29 35... .)5
    equb &bd,   1, &d6, &eb, &cd, &24, &3b, &15, &c4, &3d, &9d, &9a   ; a5b2: bd 01 d6... ...
    equb &d2, &a9, &e8, &ba, &f7, &c5, &0d,   1, &ef, &df, &b6, &a7   ; a5be: d2 a9 e8... ...
    equb &c5, &d0                                                     ; a5ca: c5 d0       ..
    equs "SSf", '"', '"'                                              ; a5cc: 53 53 66... SSf
    equb &cd, &cd, &cd, &cd, &cd, &cd, &cd, &f1, &f1                  ; a5d1: cd cd cd... ...
    equs "YgT"                                                        ; a5da: 59 67 54    YgT
    equb &d5, &68, &fe, &c5, &d6, &e1, &0c, &af, &34, &58, &d4, &c2   ; a5dd: d5 68 fe... .h.
    equb &6b, &52, &8b, &a8, &c3, &e2, &f9, &ee, &4b, &86, &60, &db   ; a5e9: 6b 52 8b... kR.
    equb &d4, &b2, &a1, &c6, &c3, &ca, &d5, &e4, &fc, &5e,   9,   7   ; a5f5: d4 b2 a1... ...
    equb &19, &52, &c0, &9e                                           ; a601: 19 52 c0... .R.
    equs "HNw"                                                        ; a605: 48 4e 77    HNw
    equb &1f, &8c, &d6, &5d                                           ; a608: 1f 8c d6... ...
.la60c
    equb &88, &88, &88, &88, &88, &88, &88, &8a, &88, &88, &88, &88   ; a60c: 88 88 88... ...
    equb &88, &88, &89, &89, &8a, &89, &89, &89, &89, &89, &89, &89   ; a618: 88 88 89... ...
    equb &88, &88, &88, &88, &88, &88, &88, &89, &88, &89, &89, &89   ; a624: 88 88 88... ...
    equb &89, &89, &89, &89, &89, &8a, &8f, &8f, &8f, &8f, &8a, &8a   ; a630: 89 89 89... ...
    equb &8a, &8a, &88, &88, &88, &88, &88, &88, &88, &88, &8a, &89   ; a63c: 8a 8a 88... ...
    equb &89, &89, &89, &89, &89, &89, &9b, &ae, &97, &97, &97, &97   ; a648: 89 89 89... ...
    equb &97, &89, &a8, &8a, &a9, &a9, &a8, &8a, &99, &ae, &89, &8a   ; a654: 97 89 a8... ...
    equb &8e, &8e, &8e, &8e, &8e, &8e, &8e, &8e, &8e, &8e, &8e, &8e   ; a660: 8e 8e 8e... ...
    equb &8e, &8e, &a9, &a9, &a9, &a9, &a9, &a9, &8e, &8e, &8e, &8e   ; a66c: 8e 8e a9... ...
    equb &8e, &8e, &8e, &8e, &8e, &8e, &8d, &8d, &8d, &8d, &8d, &aa   ; a678: 8e 8e 8e... ...
    equb &a9, &a9, &a9, &a9, &95, &96, &8d, &8d, &8d, &8e, &aa, &8f   ; a684: a9 a9 a9... ...
    equb &8e, &8e, &8e, &92, &92, &93, &92, &92, &94, &92, &93, &92   ; a690: 8e 8e 8e... ...
    equb &94, &94, &94, &94, &93, &93, &aa, &93, &aa, &a8, &92, &91   ; a69c: 94 94 94... ...
    equb &93, &94, &8b, &8b, &8b, &8b, &94, &94, &94, &8a, &90, &90   ; a6a8: 93 94 8b... ...
    equb &9d, &8b, &90, &90, &8b, &93, &93, &94, &95, &95, &99, &95   ; a6b4: 9d 8b 90... ...
    equb &99, &88, &96, &96, &96, &96, &96, &96, &96, &97, &8e, &8d   ; a6c0: 99 88 96... ...
    equb &8d, &8d, &8d, &8d, &8d, &8d, &8d, &8d, &9f, &9f, &a9, &a9   ; a6cc: 8d 8d 8d... ...
    equb &a9, &a9, &a9, &a9, &a9, &a9, &a9, &9d, &9d, &9c, &9b, &9c   ; a6d8: a9 a9 a9... ...
    equb &9b, &ad, &ae, &90, &99, &95, &99, &95, &a8, &ae, &a7, &a7   ; a6e4: 9b ad ae... ...
    equb &a7, &a7, &a7, &a7, &a7, &a7, &a8, &a8, &a8, &9c, &9c, &ae   ; a6f0: a7 a7 a7... ...
    equb &8a, &9c, &8a, &8a, &8a, &8a, &a8, &88, &89, &9d, &9d, &8e   ; a6fc: 8a 9c 8a... ...
    equb &8a, &a8, &8e, &8b, &8c, &8d, &8c, &8b, &8c,   2,   5,   6   ; a708: 8a a8 8e... ...
    equb   3,   4,   1, &ff, &fe, &fc, &f8, &f0, &e0, &c0, &80        ; a714: 03 04 01... ...
.la71f
    equb   1,   2,   4,   8, &10, &20, &40, &80,   8, &10, &18        ; a71f: 01 02 04... ...
    equs " FALSETRUE"                                                 ; a72a: 20 46 41...  FA
    equb   0,   1,   3,   4, &1f, &1a,   5, &ff, &20, &ff             ; a734: 00 01 03... ...
.la73e
    equs "pas___#"                                                    ; a73e: 70 61 73... pas
    equb &0d                                                          ; a745: 0d          .
    equs "fx163,192,2"                                                ; a746: 66 78 31... fx1
    equb &0d, &c8, &b1,   2, &aa, &0a, &0a, &20, &27, &9a, &88, &b1   ; a751: 0d c8 b1... ...
    equb   0, &20, &ee, &ff, &c8, &c8, &c8, &c8, &ca, &d0, &f4, &a9   ; a75d: 00 20 ee... . .
    equb   2, &60, &a9, &19, &20, &ee, &ff, &a9, &0c, &20, &27, &9a   ; a769: 02 60 a9... .`.
    equb &a2,   4, &bd, &86, &a7, &a8, &b1,   0, &20, &ee, &ff, &ca   ; a775: a2 04 bd... ...
    equb &10, &f4, &a9,   1, &60,   9,   8,   5,   4,   0, &20, &b4   ; a781: 10 f4 a9... ...
    equb &9c, &aa, &ad,   0,   4, &f0,   5, &ad, &31,   6, &d0, &0c   ; a78d: 9c aa ad... ...
    equb &20, &20, &85, &8e, &2e,   6, &8c, &2f,   6, &a9,   1        ; a799: 20 20 85...   .
    equs "`Li"                                                        ; a7a4: 60 4c 69    `Li
    equb &85, &a9, &10, &a8, &20, &27, &9a, &a2,   8, &88, &8a, &6a   ; a7a7: 85 a9 10... ...
    equb &b0,   2, &88, &88, &b1,   0, &9d, &19,   6, &ca, &d0, &f1   ; a7b3: b0 02 88... ...
    equb &a9,   7, &d0, &16, &a9, &38, &a8, &20, &27, &9a, &a2, &0e   ; a7bf: a9 07 d0... ...
    equb &88, &88, &88, &88, &b1,   0, &9d, &19,   6, &ca, &d0, &f4   ; a7cb: 88 88 88... ...
    equb &a9,   8, &20, &89, &91, &20, &f1, &ff, &a9,   1             ; a7d7: a9 08 20... ..
    equs "` u"                                                        ; a7e1: 60 20 75    ` u
    equb &9d, &20, &84, &91, &20, &f7, &ff, &a9,   2, &60, &a9,   1   ; a7e4: 9d 20 84... . .
    equb &20,   0, &a8, &20, &90, &9d, &a9,   1, &60, &84, &6e, &20   ; a7f0: 20 00 a8...  ..
    equb &88, &8b, &a9,   2, &a0,   0, &a2, &6a, &d0, &d6, &8c, &5f   ; a7fc: 88 8b a9... ...
    equb   6, &20, &df, &91, &a0, &0c, &20,   0, &93, &20, &88, &8b   ; a808: 06 20 df... . .
    equb &a0,   8, &20, &3a, &a8, &aa, &d0,   4, &88, &d0, &f7, &c8   ; a814: a0 08 20... ..
    equb &69, &30, &c9, &3a, &90,   2, &69,   6, &ae, &5f,   6, &9d   ; a820: 69 30 c9... i0.
    equb &1a,   4, &ee, &5f,   6, &20, &3a, &a8, &88, &d0, &e9, &4c   ; a82c: 1a 04 ee... ...
    equb &1e, &93, &a9,   0, &a2,   4                                 ; a838: 1e 93 a9... ...
    equs "&j&k&l&m*"                                                  ; a83e: 26 6a 26... &j&
    equb &ca, &d0, &f4, &60, &20, &88, &8b, &a9, &80, &a6, &6a, &a4   ; a847: ca d0 f4... ...
    equb &6b, &20, &f4, &ff, &a5, &6a, &10,   2, &a0,   0, &4c, &1f   ; a853: 6b 20 f4... k .
    equb &9d, &20, &1d, &9a, &a2,   3, &bd, &82, &a8, &a8, &b1,   0   ; a85f: 9d 20 1d... . .
    equb &9d, &1a,   6, &ca, &10, &f4, &a9,   9, &20, &d9, &a7, &ae   ; a86b: 9d 1a 06... ...
    equb &1e,   6, &a0,   0, &c9, &ff, &d0, &1b, &a8, &d0, &18,   0   ; a877: 1e 06 a0... ...
    equb   1,   4,   5, &20, &88, &8b, &a9, &81, &a6, &6a, &a4, &6b   ; a883: 01 04 05... ...
    equb &20, &f4, &ff, &98, &f0,   5, &20, &71, &99, &a2, &ff, &98   ; a88f: 20 f4 ff...  ..
    equb &4c, &21, &9d, &c8, &b1,   2, &aa, &a9,   0, &20, &b1, &a8   ; a89b: 4c 21 9d... L!.
    equb &a9,   2, &60, &c8, &b1,   2, &aa, &c8, &b1,   2, &8e, &5b   ; a8a7: a9 02 60... ..`
    equb   6, &8d, &5c,   6, &ad, &18,   4, &c9,   2, &90, &13, &20   ; a8b3: 06 8d 5c... ..\
    equb &84, &b2, &5b, &ea, &ae, &5b,   6, &ac, &5c,   6, &20, &0c   ; a8bf: 84 b2 5b... ..[
    equb &b3, &20, &84, &b2, &dd, &ea, &a9,   3                       ; a8cb: b3 20 84... . .
    equs "` :"                                                        ; a8d3: 60 20 3a    ` :
    equb &9a, &c8, &b1,   2, &f0, &0a, &aa, &ca, &20, &99, &8f, &d0   ; a8d6: 9a c8 b1... ...
    equb &10, &8a, &d0, &f7, &a0,   2, &b1,   2, &aa, &e8, &f0, &e3   ; a8e2: 10 8a d0... ...
    equb &20, &99, &8f, &f0, &f8, &4c, &2c, &8f, &20, &86, &9a, &4c   ; a8ee: 20 99 8f...  ..
    equb   8, &a9, &20, &8a, &9a, &a0,   3, &b1, &0c, &d0, &11, &88   ; a8fa: 08 a9 20... ..
    equb &d0, &f9, &b1, &0c, &c8, &d1,   2, &90,   7, &c8, &d1,   2   ; a906: d0 f9 b1... ...
    equb &90, &bd, &f0, &bb, &4c, &d8, &8d, &20, &8a, &9a, &20, &b6   ; a912: 90 bd f0... ...
    equb &9a, &20, &b5, &8e, &90, &f2, &18, &a5, &0a, &69,   4, &85   ; a91e: 9a 20 b5... . .
    equb &0a, &90,   2, &e6, &0b, &20, &b5, &8e, &f0,   2, &b0, &e0   ; a92a: 0a 90 02... ...
    equb &a9,   9, &60, &c8, &b1,   2, &aa, &ad, &18,   4, &f0, &1b   ; a936: a9 09 60... ..`
    equb &86, &15, &20, &84, &b2, &28, &ea, &a6, &15, &a0,   2, &b1   ; a942: 86 15 20... ..
    equb   2, &20, &ee, &ff, &c8, &ca, &d0, &f7, &20, &84, &b2, &a9   ; a94e: 02 20 ee... . .
    equb &ea, &a6, &15, &e8, &e8, &8a, &60, &bd, &af, &a6, &8d, &63   ; a95a: ea a6 15... ...
    equb   6, &20, &97, &a2, &20, &6c, &9a, &20, &73, &a9, &4c, &35   ; a966: 06 20 97... . .
    equb &8e, &20,   4, &a3, &a0,   0, &a5, &46, &29, &80, &85, &46   ; a972: 8e 20 04... . .
    equb &a5, &3e, &29, &80, &c5, &46, &d0, &1e, &a5, &48, &c5, &40   ; a97e: a5 3e 29... .>)
    equb &d0, &19, &a5, &49, &c5, &41, &d0, &13, &a5, &4a, &c5, &42   ; a98a: d0 19 a5... ...
    equb &d0, &0d, &a5, &4b, &c5, &43, &d0,   7, &a5, &4c, &c5, &44   ; a996: d0 0d a5... ...
    equb &d0,   1                                                     ; a9a2: d0 01       ..
    equs "`jEF*"                                                      ; a9a4: 60 6a 45... `jE
    equb &a9,   1, &60, &bd, &4d, &a9, &85,   8, &bd, &51, &a9, &85   ; a9a9: a9 01 60... ..`
    equb   9, &20, &97, &a2, &20, &4a, &9a, &20, &e2, &87, &20, &df   ; a9b5: 09 20 97... . .
    equb &a2, &a9,   1, &60,   3,   0, &ed, &59, &a1, &a1, &aa, &ab   ; a9c1: a2 a9 01... ...
    equb &bd, &19, &a9, &85,   8, &bd, &20, &a9, &85,   9, &20, &97   ; a9cd: bd 19 a9... ...
    equb &a2, &20, &e2, &87, &20, &a1, &9d, &a9,   1, &60, &ed, &33   ; a9d9: a2 20 e2... . .
    equb &2b, &a0, &b5, &68, &78, &aa, &ac, &ac, &aa, &ac, &ac, &ad   ; a9e5: 2b a0 b5... +..
    equb &20, &97, &a2, &e0, &d1, &f0, &15, &a9, &16, &85, &0a, &a9   ; a9f1: 20 97 a2...  ..
    equb &aa, &85, &0b, &a5, &3e, &30,   6, &20,   3, &a1, &4c, &0d   ; a9fd: aa 85 0b... ...
    equb &aa, &20, &1b, &aa, &20, &af, &9d, &20, &90, &9d, &a9,   1   ; aa09: aa 20 1b... . .
    equb &60, &80,   0,   0,   0,   0, &20,   0, &a1, &4c, &e8, &9e   ; aa15: 60 80 00... `..
    equb &20, &88, &8b, &20, &ea, &a3, &20, &a1, &9d, &a9,   1, &60   ; aa21: 20 88 8b...  ..
    equb &a9,   9, &20, &54, &9a, &b1, &0a, &99, &6a,   0, &c8, &c0   ; aa2d: a9 09 20... ..
    equb   4, &90, &f6, &b1, &0a, &aa, &8a, &48, &c8, &b1, &0a, &aa   ; aa39: 04 90 f6... ...
    equb &68, &91, &0a, &c0,   9, &d0, &f3, &20, &fc, &99, &20, &ea   ; aa45: 68 91 0a... h..
    equb &a3, &20, &df, &a2, &a9,   1, &60, &20, &df, &91, &a0, &0c   ; aa51: a3 20 df... . .
    equb &20,   0, &93, &20, &97, &a2, &a2,   1, &ad, &58,   6, &d0   ; aa5d: 20 00 93...  ..
    equb &0d, &ca, &ad, &57,   6, &c9,   8, &b0,   2, &a9,   8, &38   ; aa69: 0d ca ad... ...
    equb &e9,   7, &4c, &1b, &93, &20, &df, &91, &a0,   5, &20,   0   ; aa75: e9 07 4c... ..L
    equb &93, &20, &f1, &9a, &d0,   8, &a2, &2b, &a0, &a7, &a9,   5   ; aa81: 93 20 f1... . .
    equb &d0,   6, &a2, &30, &a0, &a7, &a9,   4, &4c, &35, &93, &4c   ; aa8d: d0 06 a2... ...
    equb &50, &9e, &82, &2d, &f8, &54, &58, &a5, &40, &c9, &87, &90   ; aa99: 50 9e 82... P..
    equb &0f, &d0,   6, &a4, &41, &c0, &b3, &90,   7, &a5, &3e, &10   ; aaa5: 0f d0 06... ...
    equb &e6, &4c, &93, &a4, &20, &a9, &a4, &a9,   7, &a0, &c7, &20   ; aab1: e6 4c 93... .L.
    equb &fe, &ab, &20, &d3, &a2, &a9, &9b, &85, &0a, &a9, &aa, &85   ; aabd: fe ab 20... ..
    equb &0b, &20, &a0, &a2, &38, &a9,   0, &e5, &3a, &30,   5, &85   ; aac9: 0b 20 a0... . .
    equs ": >"                                                        ; aad5: 3a 20 3e    : >
    equb &ab, &20, &d7, &a2, &20, &fa, &a4, &a5, &3a, &f0,   7, &20   ; aad8: ab 20 d7... . .
    equb &ed, &aa, &c6, &3a, &d0, &f9, &20, &64, &a3, &a5, &41, &f0   ; aae4: ed aa c6... ...
    equb &47, &20,   4, &a3, &d0,   3, &4c, &93, &a4, &18, &a5        ; aaf0: 47 20 04... G .
    equs "@eH&?"                                                      ; aafb: 40 65 48... @eH
    equb &e9, &7f, &85, &40, &b0,   2, &c6, &3f, &a2,   5, &a0,   0   ; ab00: e9 7f 85... ...
    equb &b5, &40, &95, &4d, &94, &40, &ca, &d0, &f7, &a5             ; ab0c: b5 40 95... .@.
    equs ">EF"                                                        ; ab16: 3e 45 46    >EF
    equb &85, &3e, &a0                                                ; ab19: 85 3e a0    .>.
    equs " FIfJfKfLfM"                                                ; ab1c: 20 46 49...  FI
    equb 6                                                            ; ab27: 06          .
    equs "Q&P&O&N"                                                    ; ab28: 51 26 50... Q&P
    equb &90,   4, &18, &20,   3, &9f, &88, &d0, &e5, &20, &28, &a4   ; ab2f: 90 04 18... ...
    equb &4c, &73, &a4, &20, &d7, &a2, &20, &fa, &a4, &a5, &41, &f0   ; ab3b: 4c 73 a4... Ls.
    equb &0b, &20, &31, &a3, &20, &a0, &a2, &d0, &15, &4c, &c5, &8b   ; ab47: 0b 20 31... . 1
    equb &60,   2,   8,   8,   8,   8, &a5, &41, &f0, &f3, &20,   4   ; ab53: 60 02 08... `..
    equb &a3, &d0,   3, &4c, &93, &a4, &a5                            ; ab5f: a3 d0 03... ...
    equs "FE>"                                                        ; ab66: 46 45 3e    FE>
    equb &85, &3e, &38, &a5, &48, &69, &81, &26, &3f, &e5, &40, &b0   ; ab69: 85 3e 38... .>8
    equb   2, &c6, &3f, &85, &40, &18, &a0,   4, &84, &48, &a5, &49   ; ab75: 02 c6 3f... ..?
    equb &be, &54, &ab, &b0, &16, &c5, &41, &d0, &10, &a4, &4a, &c4   ; ab81: be 54 ab... .T.
    equb &42, &d0, &0a, &a4, &4b, &c4, &43, &d0,   4, &a4, &4c, &c4   ; ab8d: 42 d0 0a... B..
    equb &44, &90, &17, &a8, &a5, &4c, &e5, &44, &85, &4c, &a5, &4b   ; ab99: 44 90 17... D..
    equb &e5, &43, &85, &4b, &a5, &4a, &e5, &42, &85, &4a, &98, &e5   ; aba5: e5 43 85... .C.
    equs "A8&F"                                                       ; abb1: 41 38 26... A8&
    equb 6                                                            ; abb5: 06          .
    equs "L&K&J*"                                                     ; abb6: 4c 26 4b... L&K
    equb &ca, &d0, &c5, &c6, &48, &a6, &46, &a4, &48, &96, &4f, &10   ; abbc: ca d0 c5... ...
    equb &b8,   5, &4a,   5, &4b,   5, &4c, &f0,   1, &38, &8a        ; abc8: b8 05 4a... ..J
    equs "jjj)"                                                       ; abd3: 6a 6a 6a... jjj
    equb &e0, &85, &45, &a5, &4f, &85, &44, &a5, &50, &85, &43, &a5   ; abd7: e0 85 45... ..E
    equb &51, &85, &42, &a5, &52, &85                                 ; abe3: 51 85 42... Q.B
    equs "AL8"                                                        ; abe9: 41 4c 38    AL8
    equb &ab, &a9, &f9, &d0,   6, &a9, &f4, &d0,   2, &a9, &ef, &85   ; abec: ab a9 f9... ...
    equb &0a, &a9, &bf, &85, &0b, &60, &85, &35, &84, &31, &20, &d7   ; abf8: 0a a9 bf... ...
    equb &a2, &a5, &31, &85, &0a, &a9, &bf, &85, &0b, &20, &a0, &a2   ; ac04: a2 a5 31... ..1
    equb &20, &68, &a3, &20, &59, &ab, &18, &a5, &31, &69,   5, &85   ; ac10: 20 68 a3...  h.
    equb &31, &85, &0a, &a9, &bf, &85, &0b, &20,   3, &a1, &c6, &35   ; ac1c: 31 85 0a... 1..
    equb &d0, &e6, &60, &20, &13, &ad, &e6                            ; ac28: d0 e6 60... ..`
    equs ":L6"                                                        ; ac2f: 3a 4c 36    :L6
    equb &ac, &20, &13, &ad, &a5, &3a, &29,   2, &f0, &16, &20, &52   ; ac32: ac 20 13... . .
    equb &ac, &4c, &e8, &9e, &20, &d3, &a2, &20, &ed, &aa, &a9,   5   ; ac3e: ac 4c e8... .L.
    equb &a0, &a9, &20, &fe, &ab, &4c, &ea, &aa, &46, &3a, &90, &ec   ; ac4a: a0 a9 20... ..
    equb &20, &42, &ac, &20, &d7, &a2, &20, &ed, &aa, &20, &df, &a2   ; ac56: 20 42 ac...  B.
    equb &20, &fa, &a4, &20, &1b, &aa, &20, &d6, &a4, &f0             ; ac62: 20 fa a4...  ..
    equs "*0) "                                                       ; ac6c: 2a 30 29... *0)
    equb &d7, &a2, &a5                                                ; ac70: d7 a2 a5    ...
    equs "@Ji@"                                                       ; ac73: 40 4a 69... @Ji
    equb &85, &40, &a9,   5, &85                                      ; ac77: 85 40 a9... .@.
    equs "8 `"                                                        ; ac7c: 38 20 60    8 `
    equb &a3, &20, &df, &a2, &a9, &53, &85, &0a, &20, &59, &ab, &a9   ; ac7f: a3 20 df... . .
    equb &58, &85, &0a, &20,   3, &a1, &c6, &40, &c6, &38, &d0, &e9   ; ac8b: 58 85 0a... X..
    equb &60,   0, &18, &2d, &76, &e5                                 ; ac97: 60 00 18... `..
    equs "SQRT"                                                       ; ac9d: 53 51 52... SQR
    equb   0, &19, &4c, &ce, &87,   0, &1a                            ; aca1: 00 19 4c... ..L
    equs "Accurac"                                                    ; aca8: 41 63 63... Acc
    equb &f9                                                          ; acaf: f9          .
    equs "lost"                                                       ; acb0: 6c 6f 73... los
    equb   0, &20, &d6, &a4, &30, &e7, &f0, &e5, &20, &e9, &a4, &a0   ; acb4: 00 20 d6... . .
    equb &80, &84, &46, &84, &49, &c8, &84, &48, &a6, &40, &f0,   6   ; acc0: 80 84 46... ..F
    equb &a5, &41, &c9, &b5, &90,   2, &e8, &88, &8a, &48, &84, &40   ; accc: a5 41 c9... .A.
    equb &20,   8, &a1, &a9, &62, &20, &d9, &a2, &a9,   6, &a0, &54   ; acd8: 20 08 a1...  ..
    equb &20, &fe, &ab, &20, &5c, &a3, &20, &ed, &aa, &20, &ed, &aa   ; ace4: 20 fe ab...  ..
    equb &20,   3, &a1, &20, &d7, &a2, &68, &38, &e9, &81, &20, &12   ; acf0: 20 03 a1...  ..
    equb &a4, &a9, &0e, &85, &0a, &a9, &ad, &85, &0b, &20, &ed, &aa   ; acfc: a4 a9 0e... ...
    equb &20, &68, &a3, &4c,   3, &a1, &80, &31, &72, &17, &f8, &a5   ; ad08: 20 68 a3...  h.
    equb &40, &c9, &98, &b0, &8d, &20, &d7, &a2, &20, &ed, &ab, &20   ; ad14: 40 c9 98... @..
    equb   4, &a3, &a5, &3e, &85, &46, &c6, &48, &20,   8, &a1, &20   ; ad20: 04 a3 a5... ...
    equb &44, &ab, &20, &71, &a3, &a5, &44, &85, &3a,   5, &43,   5   ; ad2c: 44 ab 20... D.
    equb &42,   5, &41, &f0, &38, &a9, &a0, &85, &40, &a0,   0, &84   ; ad38: 42 05 41... B.A
    equb &45, &a5, &41, &85, &3e, &10,   3, &20, &c7, &a3, &20, &28   ; ad44: 45 a5 41... E.A
    equb &a4, &20, &cf, &a2, &20, &f1, &ab, &20, &ed, &aa, &20, &68   ; ad50: a4 20 cf... . .
    equb &a3, &20,   3, &a1, &20, &df, &a2, &20, &60, &a3, &20, &a0   ; ad5c: a3 20 03... . .
    equb &a2, &20, &f5, &ab, &20, &ed, &aa, &20, &68, &a3, &4c,   3   ; ad68: a2 20 f5... . .
    equb &a1, &4c, &9d, &a2, &20, &d6, &a4, &f0, &0b, &10             ; ad74: a1 4c 9d... .L.
    equs "+F> "                                                       ; ad7e: 2b 46 3e... +F>
    equb &aa, &ad, &a9, &80, &85, &3e, &60, &a5, &40, &c9, &73, &90   ; ad82: aa ad a9... ...
    equb &f9, &20, &d3, &a2, &20, &e9, &a4, &a9, &80, &85, &48, &85   ; ad8e: f9 20 d3... . .
    equb &49, &85, &46, &20,   8, &a1, &a9,   9, &a0, &77, &20, &fe   ; ad9a: 49 85 46... I.F
    equb &ab, &4c, &ea, &aa, &a5, &40, &c9, &81, &90, &d9, &20, &3e   ; ada6: ab 4c ea... .L.
    equb &ab, &20, &89, &ad, &20, &f1, &ab, &20,   3, &a1, &20, &f5   ; adb2: ab 20 89... . .
    equb &ab, &20,   3, &a1, &4c, &e8, &9e, &20, &c4, &9a, &20, &d3   ; adbe: ab 20 03... . .
    equb &9a, &20, &e2, &9a, &a0,   1, &b1,   2, &85, &33, &29, &7f   ; adca: 9a 20 e2... . .
    equb &85, &12, &20, &e9, &ae, &a6, &12, &e0,   4, &d0, &11, &20   ; add6: 85 12 20... ..
    equb &83, &9b, &a5,   8, &85, &0a, &a5,   9, &85, &0b, &20, &d5   ; ade2: 83 9b a5... ...
    equb &89, &a9,   2, &60, &a9,   4, &a4, &33, &30,   3, &8a, &a2   ; adee: 89 a9 02... ...
    equb   4, &85, &14, &a0,   0, &b1,   8, &91, &0e, &c8, &c4, &12   ; adfa: 04 85 14... ...
    equb &90, &f7, &a5, &33, &10,   9, &a9,   0, &91, &0e, &c8, &c0   ; ae06: 90 f7 a5... ...
    equb   4, &90, &f9, &18, &8a, &65,   8, &85,   8, &90,   2, &e6   ; ae12: 04 90 f9... ...
    equb   9, &18, &a5, &14, &65, &0e, &85, &0e, &90,   2, &e6, &0f   ; ae1e: 09 18 a5... ...
    equb &a5, &48, &d0,   2, &c6, &49, &c6, &48, &d0, &c9, &a5, &49   ; ae2a: a5 48 d0... .H.
    equb &d0, &c5, &a9,   2, &60, &c8, &b1,   2, &20, &54, &9a, &c8   ; ae36: d0 c5 a9... ...
    equb &b1,   2, &85, &15, &b1, &0a, &85, &4a, &c8, &b1, &0a, &85   ; ae42: b1 02 85... ...
    equb &4b, &18, &a5, &0a, &69,   4, &a6, &0b, &85, &0c, &8a, &69   ; ae4e: 4b 18 a5... K..
    equb   0, &85, &0d, &a5, &4a, &69,   3, &85, &0a, &a5, &4b, &69   ; ae5a: 00 85 0d... ...
    equb   0, &85, &0b, &a0,   2, &b1, &4a, &c9,   1, &d0, &13, &a0   ; ae66: 00 85 0b... ...
    equb   0, &b1, &0c, &d1, &0a, &90,   8, &a0,   4, &d1, &0a, &90   ; ae72: 00 b1 0c... ...
    equb   8, &f0,   6, &4c, &d8, &8d, &20, &1f, &a9, &18, &a5, &4a   ; ae7e: 08 f0 06... ...
    equb &69, &0b, &85, &4a, &90,   2, &e6, &4b, &18, &a0,   2, &a5   ; ae8a: 69 0b 85... i..
    equb &0c, &71, &4a, &a6, &0d, &c6, &15, &d0, &b7, &4c, &10, &9b   ; ae96: 0c 71 4a... .qJ
    equb &a0, &0f, &b9, &21,   0, &91,   0, &88, &10, &f8, &20, &f0   ; aea2: a0 0f b9... ...
    equb &99, &a9,   1                                                ; aeae: 99 a9 01    ...
    equs "` %"                                                        ; aeb1: 60 20 25    ` %
    equb &9a, &a0, &0f, &b1,   0, &99, &21,   0, &88, &10, &f8, &a9   ; aeb4: 9a a0 0f... ...
    equb   1, &60, &20, &fb, &87, &a0, &11, &b1,   8, &99, &1f,   0   ; aec0: 01 60 20... .`
    equb &88, &c0,   2, &b0, &f6, &a2,   3, &4c, &60, &95, &20, &c4   ; aecc: 88 c0 02... ...
    equb &9a, &20, &e9, &ae, &20, &83, &9b, &86, &12, &84, &13, &20   ; aed8: 9a 20 e9... . .
    equb &c9, &89, &a9,   1, &60, &38, &a0,   8, &b1, &0a, &48, &88   ; aee4: c9 89 a9... ...
    equb &b1, &0a, &a0,   3, &f1, &0a, &aa, &c8, &68, &f1, &0a, &e8   ; aef0: b1 0a a0... ...
    equb &d0,   2, &69,   0, &86, &48, &85                            ; aefc: d0 02 69... ..i
    equs "I` ]"                                                       ; af03: 49 60 20... I`
    equb &85, &a9, &a0, &a2,   9, &20, &f4, &ff, &c0, &27, &b0,   3   ; af07: 85 a9 a0... ...
    equb &4c, &69, &85, &86, &30, &ca, &86, &2d, &84, &2c, &8a, &e9   ; af13: 4c 69 85... Li.
    equb   4, &85, &2f, &a9, &87, &20, &f4, &ff, &84, &2b, &a0,   0   ; af1f: 04 85 2f... ../
    equb &84, &34, &b1, &0c, &c9, &0d, &f0,   6, &20, &42, &b8, &20   ; af2b: 84 34 b1... .4.
    equb &71, &85, &ae, &0b,   4, &ac, &0e,   4, &ad, &10,   4, &d0   ; af37: 71 85 ae... q..
    equb   4, &a6,   4, &a4,   5, &86,   2, &84,   3, &20, &d9, &af   ; af43: 04 a6 04... ...
    equb &86,   0, &85,   1, &a6,   4, &a4,   5, &20,   4, &b4, &a5   ; af4f: 86 00 85... ...
    equb &27, &85,   2, &a5, &28, &85,   3, &ad, &17,   4, &c9,   3   ; af5b: 27 85 02... '..
    equb &d0, &11, &a2, &70, &a0, &af, &4c, &f7, &ff                  ; af67: d0 11 a2... ...
    equs "EDIT 0,29"                                                  ; af70: 45 44 49... EDI
    equb &0d, &a9, &0d, &a0,   0, &91,   4, &91, &29, &84, &33, &84   ; af79: 0d a9 0d... ...
    equb &37, &84, &39, &84, &24, &c8, &84, &36                       ; af85: 37 84 39... 7.9

.caf8d
    ldx #&ff                                                          ; af8d: a2 ff       ..
    txs                                                               ; af8f: 9a          .
    jsr sub_cb146                                                     ; af90: 20 46 b1     F.
    lda #2                                                            ; af93: a9 02       ..
    sta l0416                                                         ; af95: 8d 16 04    ...
    lda #5                                                            ; af98: a9 05       ..
    sta l0031                                                         ; af9a: 85 31       .1
.caf9c
    jsr sub_cb4c2                                                     ; af9c: 20 c2 b4     ..
    jsr cb2ef                                                         ; af9f: 20 ef b2     ..
    jsr sub_cb1e5                                                     ; afa2: 20 e5 b1     ..
    lda #4                                                            ; afa5: a9 04       ..
    sta l0031                                                         ; afa7: 85 31       .1
    jsr sub_cb207                                                     ; afa9: 20 07 b2     ..
    tax                                                               ; afac: aa          .
    bpl caff6                                                         ; afad: 10 47       .G
    cmp #&b0                                                          ; afaf: c9 b0       ..
    bcs caf9c                                                         ; afb1: b0 e9       ..
    ldy l0417                                                         ; afb3: ac 17 04    ...
    cpy #1                                                            ; afb6: c0 01       ..
    bne cafbe                                                         ; afb8: d0 04       ..
    lda cb096,x                                                       ; afba: bd 96 b0    ...
    tax                                                               ; afbd: aa          .
.cafbe
    cmp #&a0                                                          ; afbe: c9 a0       ..
    bcc cafc9                                                         ; afc0: 90 07       ..
    sbc #&0c                                                          ; afc2: e9 0c       ..
    cmp #&a0                                                          ; afc4: c9 a0       ..
    bcc caf9c                                                         ; afc6: 90 d4       ..
    tax                                                               ; afc8: aa          .
.cafc9
    lda cb04e,x                                                       ; afc9: bd 4e b0    .N.
    sta l0008                                                         ; afcc: 85 08       ..
    lda lb072,x                                                       ; afce: bd 72 b0    .r.
    sta l0009                                                         ; afd1: 85 09       ..
    jsr sub_c87e2                                                     ; afd3: 20 e2 87     ..
    jmp caf9c                                                         ; afd6: 4c 9c af    L..

.sub_cafd9
    clc                                                               ; afd9: 18          .
    lda l0004                                                         ; afda: a5 04       ..
    adc #1                                                            ; afdc: 69 01       i.
    sta l0027                                                         ; afde: 85 27       .'
    lda l0005                                                         ; afe0: a5 05       ..
    adc #0                                                            ; afe2: 69 00       i.
    sta l0028                                                         ; afe4: 85 28       .(
    lda l0402                                                         ; afe6: ad 02 04    ...
    sbc #0                                                            ; afe9: e9 00       ..
    sta l0029                                                         ; afeb: 85 29       .)
    tax                                                               ; afed: aa          .
    lda l0403                                                         ; afee: ad 03 04    ...
    sbc #0                                                            ; aff1: e9 00       ..
    sta l002a                                                         ; aff3: 85 2a       .*
    rts                                                               ; aff5: 60          `

.caff6
    jsr sub_caffc                                                     ; aff6: 20 fc af     ..
    jmp caf9c                                                         ; aff9: 4c 9c af    L..

.sub_caffc
    sta l0040                                                         ; affc: 85 40       .@
    jsr sub_cbdbf                                                     ; affe: 20 bf bd     ..
    lda l0040                                                         ; b001: a5 40       .@
    cmp #&7f                                                          ; b003: c9 7f       ..
    beq cb04b                                                         ; b005: f0 44       .D
    jsr sub_cb29d                                                     ; b007: 20 9d b2     ..
    ldy l0024                                                         ; b00a: a4 24       .$
    lda l0036                                                         ; b00c: a5 36       .6
    bne cb016                                                         ; b00e: d0 06       ..
    lda (l0000),y                                                     ; b010: b1 00       ..
    cmp #&0d                                                          ; b012: c9 0d       ..
    bne cb01b                                                         ; b014: d0 05       ..
.cb016
    ldx #1                                                            ; b016: a2 01       ..
    jsr sub_cb4a9                                                     ; b018: 20 a9 b4     ..
.cb01b
    lda l0040                                                         ; b01b: a5 40       .@
    sta (l0000),y                                                     ; b01d: 91 00       ..
    jsr sub_cb665                                                     ; b01f: 20 65 b6     e.
    lda l0040                                                         ; b022: a5 40       .@
    cmp #&0d                                                          ; b024: c9 0d       ..
    beq cb02e                                                         ; b026: f0 06       ..
    jsr sub_cb6d2                                                     ; b028: 20 d2 b6     ..
    jmp cb03d                                                         ; b02b: 4c 3d b0    L=.

.cb02e
    lda l0024                                                         ; b02e: a5 24       .$
    adc #0                                                            ; b030: 69 00       i.
    ldy l0025                                                         ; b032: a4 25       .%
    jsr sub_cb636                                                     ; b034: 20 36 b6     6.
    jsr sub_cb6fe                                                     ; b037: 20 fe b6     ..
    jsr sub_cb6e5                                                     ; b03a: 20 e5 b6     ..
.cb03d
    lda l0031                                                         ; b03d: a5 31       .1
    cmp #2                                                            ; b03f: c9 02       ..
    bne cb046                                                         ; b041: d0 03       ..
    jsr sub_cb4c2                                                     ; b043: 20 c2 b4     ..
.cb046
    lda #1                                                            ; b046: a9 01       ..
    sta l0031                                                         ; b048: 85 31       .1
    rts                                                               ; b04a: 60          `

.cb04b
    jsr sub_cb49f                                                     ; b04b: 20 9f b4     ..
.cb04e
    beq cb053                                                         ; b04e: f0 03       ..
    jmp cb6a8                                                         ; b050: 4c a8 b6    L..

.cb053
    lda l0024                                                         ; b053: a5 24       .$
    bne cb05c                                                         ; b055: d0 05       ..
    jsr sub_cb1a1                                                     ; b057: 20 a1 b1     ..
    bcs cb0cb                                                         ; b05a: b0 6f       .o
.cb05c
    jsr cb6a8                                                         ; b05c: 20 a8 b6     ..
    cmp #3                                                            ; b05f: c9 03       ..
    bne cb077                                                         ; b061: d0 14       ..
    jsr sub_cb4c2                                                     ; b063: 20 c2 b4     ..
    jmp cb077                                                         ; b066: 4c 77 b0    Lw.

    equb &20, &bf, &bd, &a5, &24, &c5, &3f, &90,   5                  ; b069: 20 bf bd...  ..
.lb072
    equb &20, &aa, &b1, &b0, &54                                      ; b072: 20 aa b1...  ..

.cb077
    jsr sub_cb1b9                                                     ; b077: 20 b9 b1     ..
    cmp l0024                                                         ; b07a: c5 24       .$
    bcs cb080                                                         ; b07c: b0 02       ..
    sta l0024                                                         ; b07e: 85 24       .$
.cb080
    lda #1                                                            ; b080: a9 01       ..
    sta l0031                                                         ; b082: 85 31       .1
    ldy l0024                                                         ; b084: a4 24       .$
    lda l0036                                                         ; b086: a5 36       .6
    bne cb08f                                                         ; b088: d0 05       ..
    lda #&20 ; ' '                                                    ; b08a: a9 20       .
    sta (l0000),y                                                     ; b08c: 91 00       ..
    rts                                                               ; b08e: 60          `

.cb08f
    jsr sub_cb34d                                                     ; b08f: 20 4d b3     M.
    inc l0000                                                         ; b092: e6 00       ..
    bne cb09e                                                         ; b094: d0 08       ..
.cb096
    inc l0001                                                         ; b096: e6 01       ..
    bne cb09e                                                         ; b098: d0 04       ..
.loop_cb09a
    lda (l0010),y                                                     ; b09a: b1 10       ..
    sta (l0000),y                                                     ; b09c: 91 00       ..
.cb09e
    dey                                                               ; b09e: 88          .
    bpl loop_cb09a                                                    ; b09f: 10 f9       ..
    rts                                                               ; b0a1: 60          `

    equb &a9,   1, &20, &b1, &b3, &f0, &22, &a0, &ff, &c8, &c4, &2c   ; b0a2: a9 01 20... ..
    equb &f0, &19, &b1, &10, &c9, &0d, &f0, &15, &c9, &20, &d0, &f1   ; b0ae: f0 19 b1... ...
    equb &d1, &10, &d0,   5, &c8, &c4, &2c, &90, &f7, &c4, &24, &f0   ; b0ba: d1 10 d0... ...
    equb &e4, &90, &e2, &84, &24                                      ; b0c6: e4 90 e2... ...

.cb0cb
    jmp cb708                                                         ; b0cb: 4c 08 b7    L..

    equb &58, &41, &96, &a4, &82, &20, &86, &7e, &da, &3b, &a2, &69   ; b0ce: 58 41 96... XA.
    equb &a8, &d2, &e5, &b9, &2e, &16, &e7, &9c, &69, &9c, &ff, &a5   ; b0da: a8 d2 e5... ...
    equb &cb, &35, &9c, &1e, &fe,   4, &53, &fb, &fe,   4, &18, &0d   ; b0e6: cb 35 9c... .5.
    equb &b8, &b7, &b7, &b7, &bc, &bd, &bd, &be, &b8, &b7, &b0, &b0   ; b0f2: b8 b7 b7... ...
    equb &b6, &b6, &b6, &b6, &b7, &b2, &b7, &af, &b7, &af, &bd, &be   ; b0fe: b6 b6 b6... ...
    equb &bd, &b7, &af, &b2, &b6, &b7, &b4, &b3, &b6, &b7, &b7, &b7   ; b10a: bd b7 af... ...
    equb &99, &90, &91, &92, &a0, &94, &a0, &96, &97, &98, &a0, &8b   ; b116: 99 90 91... ...
    equb &8c, &8d, &8e, &8f, &8a, &a0, &a0, &a0, &82, &a0, &a0, &a0   ; b122: 8c 8d 8e... ...
    equb &87, &a0, &a0, &a0, &9e, &9f, &88, &89, &80, &83, &a0, &84   ; b12e: 87 a0 a0... ...
    equb &86, &a0, &81, &ae, &85, &af, &9b, &a0, &ac, &a0, &ad, &a0   ; b13a: 86 a0 81... ...

.sub_cb146
    lda #0                                                            ; b146: a9 00       ..
    sta l0035                                                         ; b148: 85 35       .5
    jsr sub_cb284                                                     ; b14a: 20 84 b2     ..
    ora l0f03                                                         ; b14d: 0d 03 0f    ...
    equb &1a, &ea, &a9,   5, &20, &f4, &ff, &20, &f4, &ff, &a2,   4   ; b150: 1a ea a9... ...
    equb &a0,   0, &20, &7b, &b1, &a2, &8a                            ; b15c: a0 00 20... ..

.sub_cb163
    lda l0417                                                         ; b163: ad 17 04    ...
    cmp #1                                                            ; b166: c9 01       ..
    beq cb171                                                         ; b168: f0 07       ..
    lda #osbyte_read_write_tab_char                                   ; b16a: a9 db       ..
    ldy #0                                                            ; b16c: a0 00       ..
    jsr osbyte                                                        ; b16e: 20 f4 ff     ..            ; Write TAB key character
.cb171
    rts                                                               ; b171: 60          `

.sub_cb172
    ldx #9                                                            ; b172: a2 09       ..
    jsr sub_cb163                                                     ; b174: 20 63 b1     c.
    ldx #3                                                            ; b177: a2 03       ..
    ldy #4                                                            ; b179: a0 04       ..
    stx l0015                                                         ; b17b: 86 15       ..
    sty l0016                                                         ; b17d: 84 16       ..
.loop_cb17f
    ldy l0016                                                         ; b17f: a4 16       ..
    lda lb193,y                                                       ; b181: b9 93 b1    ...
    ldx lb19a,y                                                       ; b184: be 9a b1    ...
    ldy #0                                                            ; b187: a0 00       ..
    jsr osbyte                                                        ; b189: 20 f4 ff     ..
    inc l0016                                                         ; b18c: e6 16       ..
    dec l0015                                                         ; b18e: c6 15       ..
    bne loop_cb17f                                                    ; b190: d0 ed       ..
    rts                                                               ; b192: 60          `

.lb193
    equb   4, &e1, &e2, &e3,   4, &e1, &e2                            ; b193: 04 e1 e2... ...
.lb19a
    equb   2, &80, &90, &a0,   0,   1, &80                            ; b19a: 02 80 90... ...

.sub_cb1a1
    lda l0027                                                         ; b1a1: a5 27       .'
    cmp l0002                                                         ; b1a3: c5 02       ..
    lda l0028                                                         ; b1a5: a5 28       .(
    sbc l0003                                                         ; b1a7: e5 03       ..
    rts                                                               ; b1a9: 60          `

.sub_cb1aa
    clc                                                               ; b1aa: 18          .
    lda l003f                                                         ; b1ab: a5 3f       .?
    adc l0000                                                         ; b1ad: 65 00       e.
    tax                                                               ; b1af: aa          .
    lda #0                                                            ; b1b0: a9 00       ..
    adc l0001                                                         ; b1b2: 65 01       e.
    cpx l0029                                                         ; b1b4: e4 29       .)
    sbc l002a                                                         ; b1b6: e5 2a       .*
    rts                                                               ; b1b8: 60          `

.sub_cb1b9
    ldy #0                                                            ; b1b9: a0 00       ..
.loop_cb1bb
    lda (l0000),y                                                     ; b1bb: b1 00       ..
    cmp #&0d                                                          ; b1bd: c9 0d       ..
    beq cb1c6                                                         ; b1bf: f0 05       ..
    iny                                                               ; b1c1: c8          .
    cpy l002c                                                         ; b1c2: c4 2c       .,
    bcc loop_cb1bb                                                    ; b1c4: 90 f5       ..
.cb1c6
    tya                                                               ; b1c6: 98          .
    rts                                                               ; b1c7: 60          `

.sub_cb1c8
    stx l0012                                                         ; b1c8: 86 12       ..
    sty l0013                                                         ; b1ca: 84 13       ..
    sec                                                               ; b1cc: 38          8
    lda l0000                                                         ; b1cd: a5 00       ..
    sbc l0012                                                         ; b1cf: e5 12       ..
    tax                                                               ; b1d1: aa          .
    lda l0001                                                         ; b1d2: a5 01       ..
    sbc l0013                                                         ; b1d4: e5 13       ..
    tay                                                               ; b1d6: a8          .
    stx l000c                                                         ; b1d7: 86 0c       ..
    sty l000d                                                         ; b1d9: 84 0d       ..
    cpx l0002                                                         ; b1db: e4 02       ..
    sbc l0003                                                         ; b1dd: e5 03       ..
    bcc cb1e2                                                         ; b1df: 90 01       ..
    rts                                                               ; b1e1: 60          `

.cb1e2
    jmp c9816                                                         ; b1e2: 4c 16 98    L..

.sub_cb1e5
    ldx #1                                                            ; b1e5: a2 01       ..
    ldy #1                                                            ; b1e7: a0 01       ..
    bne cb1ef                                                         ; b1e9: d0 04       ..
.sub_cb1eb
    ldx #1                                                            ; b1eb: a2 01       ..
    ldy #0                                                            ; b1ed: a0 00       ..
.cb1ef
    lda #&17                                                          ; b1ef: a9 17       ..
    jsr oswrch                                                        ; b1f1: 20 ee ff     ..            ; Write character 23
    txa                                                               ; b1f4: 8a          .
    jsr oswrch                                                        ; b1f5: 20 ee ff     ..            ; Write character
    tya                                                               ; b1f8: 98          .
    jsr oswrch                                                        ; b1f9: 20 ee ff     ..            ; Write character
    lda #0                                                            ; b1fc: a9 00       ..
    ldx #7                                                            ; b1fe: a2 07       ..
.loop_cb200
    jsr oswrch                                                        ; b200: 20 ee ff     ..            ; Write character 0
    dex                                                               ; b203: ca          .
    bne loop_cb200                                                    ; b204: d0 fa       ..
    rts                                                               ; b206: 60          `

.sub_cb207
    lda l0037                                                         ; b207: a5 37       .7
    beq cb210                                                         ; b209: f0 05       ..
    lda l0038                                                         ; b20b: a5 38       .8
    dec l0037                                                         ; b20d: c6 37       .7
    rts                                                               ; b20f: 60          `

.cb210
    jsr osrdch                                                        ; b210: 20 e0 ff     ..            ; Read a character from the current input stream
    jmp c9971                                                         ; b213: 4c 71 99    Lq.

    equb &a5, &36, &49,   1, &85, &36, &10,   7, &20, &72, &b1, &a9   ; b216: a5 36 49... .6I
    equb   1, &85, &35, &a9,   0, &85, &31                            ; b222: 01 85 35... ..5

.sub_cb229
    jsr sub_cb1eb                                                     ; b229: 20 eb b1     ..
    jsr sub_cb2f5                                                     ; b22c: 20 f5 b2     ..
    lda l0036                                                         ; b22f: a5 36       .6
    bne cb241                                                         ; b231: d0 0e       ..
    jsr sub_cb284                                                     ; b233: 20 84 b2     ..
    equs "#Over "                                                     ; b236: 23 4f 76... #Ov
    equb &a0, &ea, &4c, &47, &b2                                      ; b23c: a0 ea 4c... ..L

.cb241
    jsr sub_cb284                                                     ; b241: 20 84 b2     ..
    equb &23, &91, &ea, &a6, &35, &bd, &6e, &b2, &20, &ee, &ff, &a9   ; b244: 23 91 ea... #..
    equb &20, &20, &ee, &ff, &a5, &39,   9, &30, &20, &ee, &ff, &20   ; b250: 20 20 ee...   .
    equb &84, &b2                                                     ; b25c: 84 b2       ..
    equs " mark(s)"                                                   ; b25e: 20 6d 61...  ma
    equb &ea, &a9, &13, &a4                                           ; b266: ea a9 13... ...
    equs "0L6"                                                        ; b26a: 30 4c 36    0L6
    equb &b6, &20, &2a                                                ; b26d: b6 20 2a    . *

.sub_cb270
    ldy l0030                                                         ; b270: a4 30       .0
    jsr cb634                                                         ; b272: 20 34 b6     4.
    jsr sub_cb2f5                                                     ; b275: 20 f5 b2     ..
    lda #&23 ; '#'                                                    ; b278: a9 23       .#
    jsr oswrch                                                        ; b27a: 20 ee ff     ..            ; Write character 35
    ldy l0030                                                         ; b27d: a4 30       .0
    lda l002c                                                         ; b27f: a5 2c       .,
    sta l0658,y                                                       ; b281: 99 58 06    .X.
.sub_cb284
    pla                                                               ; b284: 68          h
    tax                                                               ; b285: aa          .
    pla                                                               ; b286: 68          h
    tay                                                               ; b287: a8          .
    lda #&ea                                                          ; b288: a9 ea       ..
    jsr sub_c817a                                                     ; b28a: 20 7a 81     z.
    jmp (l0006)                                                       ; b28d: 6c 06 00    l..

    equb &20, &96, &b2, &4c, &97, &84, &a9,   5, &85                  ; b290: 20 96 b2...  ..
    equs "1Ln"                                                        ; b299: 31 4c 6e    1Ln
    equb &99                                                          ; b29c: 99          .

.sub_cb29d
    jsr sub_cb49f                                                     ; b29d: 20 9f b4     ..
    sta l0015                                                         ; b2a0: 85 15       ..
    beq cb2ef                                                         ; b2a2: f0 4b       .K
    clc                                                               ; b2a4: 18          .
    lda l0000                                                         ; b2a5: a5 00       ..
    adc l003f                                                         ; b2a7: 65 3f       e?
    sta l0008                                                         ; b2a9: 85 08       ..
    lda l0001                                                         ; b2ab: a5 01       ..
    adc #0                                                            ; b2ad: 69 00       i.
    sta l0009                                                         ; b2af: 85 09       ..
    ldx l0015                                                         ; b2b1: a6 15       ..
    ldy l003f                                                         ; b2b3: a4 3f       .?
    jsr sub_cb4a9                                                     ; b2b5: 20 a9 b4     ..
    ldx l003f                                                         ; b2b8: a6 3f       .?
    ldy l0025                                                         ; b2ba: a4 25       .%
    jsr cb2ff                                                         ; b2bc: 20 ff b2     ..
    lda #&20 ; ' '                                                    ; b2bf: a9 20       .
    jsr oswrch                                                        ; b2c1: 20 ee ff     ..            ; Write character 32
    ldx l0015                                                         ; b2c4: a6 15       ..
    ldy l0024                                                         ; b2c6: a4 24       .$
.loop_cb2c8
    dey                                                               ; b2c8: 88          .
    sta (l0000),y                                                     ; b2c9: 91 00       ..
    dex                                                               ; b2cb: ca          .
    bne loop_cb2c8                                                    ; b2cc: d0 fa       ..
    ldy l0039                                                         ; b2ce: a4 39       .9
.cb2d0
    dey                                                               ; b2d0: 88          .
    bmi cb2ef                                                         ; b2d1: 30 1c       0.
    ldx l001c,y                                                       ; b2d3: b6 1c       ..
    cpx l0008                                                         ; b2d5: e4 08       ..
    lda l001e,y                                                       ; b2d7: b9 1e 00    ...
    sbc l0009                                                         ; b2da: e5 09       ..
    bcs cb2d0                                                         ; b2dc: b0 f2       ..
    sec                                                               ; b2de: 38          8
    txa                                                               ; b2df: 8a          .
    sbc l0015                                                         ; b2e0: e5 15       ..
    sta l001c,y                                                       ; b2e2: 99 1c 00    ...
    lda l001e,y                                                       ; b2e5: b9 1e 00    ...
    sbc #0                                                            ; b2e8: e9 00       ..
    sta l001e,y                                                       ; b2ea: 99 1e 00    ...
    bcs cb2d0                                                         ; b2ed: b0 e1       ..
.cb2ef
    ldx l0024                                                         ; b2ef: a6 24       .$
    ldy l0025                                                         ; b2f1: a4 25       .%
    bpl cb2ff                                                         ; b2f3: 10 0a       ..
.sub_cb2f5
    ldx #0                                                            ; b2f5: a2 00       ..
    ldy l0030                                                         ; b2f7: a4 30       .0
    bpl cb2ff                                                         ; b2f9: 10 04       ..
.sub_cb2fb
    ldx #0                                                            ; b2fb: a2 00       ..
.sub_cb2fd
    ldy l0026                                                         ; b2fd: a4 26       .&
.cb2ff
    lda #&1f                                                          ; b2ff: a9 1f       ..
    jsr oswrch                                                        ; b301: 20 ee ff     ..            ; Write character 31
    txa                                                               ; b304: 8a          .
    jsr oswrch                                                        ; b305: 20 ee ff     ..            ; Write character
    tya                                                               ; b308: 98          .
    jmp oswrch                                                        ; b309: 4c ee ff    L..            ; Write character

    equb &86, &0c, &84, &0d, &a2,   4, &86, &15, &a9,   0, &85, &14   ; b30c: 86 0c 84... ...
    equb &38, &a5, &0c, &fd, &43, &b3, &a8, &a5, &0d, &fd, &48, &b3   ; b318: 38 a5 0c... 8..
    equb &90,   8, &84, &0c, &85, &0d, &e6, &14, &d0, &ea, &a5, &14   ; b324: 90 08 84... ...
    equb &d0,   4, &c6, &15, &10,   9,   9, &30, &20, &ee, &ff, &a9   ; b330: d0 04 c6... ...
    equb   0, &85, &15, &ca, &10, &d2, &60,   1, &0a, &64, &e8, &10   ; b33c: 00 85 15... ...
    equb   0,   0,   0,   3, &27                                      ; b348: 00 00 00... ...

.sub_cb34d
    lda l0000                                                         ; b34d: a5 00       ..
    sta l0010                                                         ; b34f: 85 10       ..
    lda l0001                                                         ; b351: a5 01       ..
    sta l0011                                                         ; b353: 85 11       ..
    rts                                                               ; b355: 60          `

.cb356
    dey                                                               ; b356: 88          .
    bpl cb366                                                         ; b357: 10 0d       ..
.sub_cb359
    clc                                                               ; b359: 18          .
    lda l000c                                                         ; b35a: a5 0c       ..
    sbc l002c                                                         ; b35c: e5 2c       .,
    sta l000c                                                         ; b35e: 85 0c       ..
    bcs cb364                                                         ; b360: b0 02       ..
    dec l000d                                                         ; b362: c6 0d       ..
.cb364
    ldy l002c                                                         ; b364: a4 2c       .,
.cb366
    lda (l000c),y                                                     ; b366: b1 0c       ..
    cmp #&0d                                                          ; b368: c9 0d       ..
    bne cb356                                                         ; b36a: d0 ea       ..
    sty l0014                                                         ; b36c: 84 14       ..
    sec                                                               ; b36e: 38          8
    lda l002c                                                         ; b36f: a5 2c       .,
    sbc l0014                                                         ; b371: e5 14       ..
    rts                                                               ; b373: 60          `

.sub_cb374
    ldx l0000                                                         ; b374: a6 00       ..
    ldy l0001                                                         ; b376: a4 01       ..
    stx l0010                                                         ; b378: 86 10       ..
    sty l0011                                                         ; b37a: 84 11       ..
    tax                                                               ; b37c: aa          .
    stx l0015                                                         ; b37d: 86 15       ..
    beq cb39a                                                         ; b37f: f0 19       ..
.loop_cb381
    ldy #&ff                                                          ; b381: a0 ff       ..
.loop_cb383
    iny                                                               ; b383: c8          .
    lda (l0010),y                                                     ; b384: b1 10       ..
    cmp #&0d                                                          ; b386: c9 0d       ..
    beq cb38e                                                         ; b388: f0 04       ..
    cpy l002c                                                         ; b38a: c4 2c       .,
    bcc loop_cb383                                                    ; b38c: 90 f5       ..
.cb38e
    sta l0014                                                         ; b38e: 85 14       ..
    tya                                                               ; b390: 98          .
    jsr sub_cb39b                                                     ; b391: 20 9b b3     ..
    bcs cb39a                                                         ; b394: b0 04       ..
    dec l0015                                                         ; b396: c6 15       ..
    bne loop_cb381                                                    ; b398: d0 e7       ..
.cb39a
    rts                                                               ; b39a: 60          `

.sub_cb39b
    sec                                                               ; b39b: 38          8
    adc l0010                                                         ; b39c: 65 10       e.
    tax                                                               ; b39e: aa          .
    lda #0                                                            ; b39f: a9 00       ..
    adc l0011                                                         ; b3a1: 65 11       e.
    tay                                                               ; b3a3: a8          .
    cpx l0402                                                         ; b3a4: ec 02 04    ...
    sbc l0403                                                         ; b3a7: ed 03 04    ...
    bcs cb3b0                                                         ; b3aa: b0 04       ..
    stx l0010                                                         ; b3ac: 86 10       ..
    sty l0011                                                         ; b3ae: 84 11       ..
.cb3b0
    rts                                                               ; b3b0: 60          `

.sub_cb3b1
    ldx l0002                                                         ; b3b1: a6 02       ..
    ldy l0003                                                         ; b3b3: a4 03       ..
    stx l0010                                                         ; b3b5: 86 10       ..
    sty l0011                                                         ; b3b7: 84 11       ..
    tax                                                               ; b3b9: aa          .
    stx l0015                                                         ; b3ba: 86 15       ..
    beq cb3fa                                                         ; b3bc: f0 3c       .<
    ldx #0                                                            ; b3be: a2 00       ..
.cb3c0
    lda l0027                                                         ; b3c0: a5 27       .'
    cmp l0010                                                         ; b3c2: c5 10       ..
    lda l0028                                                         ; b3c4: a5 28       .(
    sbc l0011                                                         ; b3c6: e5 11       ..
    bcs cb3f9                                                         ; b3c8: b0 2f       ./
    clc                                                               ; b3ca: 18          .
    lda l0010                                                         ; b3cb: a5 10       ..
    sbc l002c                                                         ; b3cd: e5 2c       .,
    sta l0010                                                         ; b3cf: 85 10       ..
    bcs cb3d5                                                         ; b3d1: b0 02       ..
    dec l0011                                                         ; b3d3: c6 11       ..
.cb3d5
    ldy l002c                                                         ; b3d5: a4 2c       .,
    lda (l0010),y                                                     ; b3d7: b1 10       ..
    cmp #&0d                                                          ; b3d9: c9 0d       ..
    bne cb3f4                                                         ; b3db: d0 17       ..
    lda l0010                                                         ; b3dd: a5 10       ..
    sta l000c                                                         ; b3df: 85 0c       ..
    lda l0011                                                         ; b3e1: a5 11       ..
    sta l000d                                                         ; b3e3: 85 0d       ..
    jsr cb356                                                         ; b3e5: 20 56 b3     V.
    beq cb3f4                                                         ; b3e8: f0 0a       ..
    lda l0010                                                         ; b3ea: a5 10       ..
    adc l0014                                                         ; b3ec: 65 14       e.
    sta l0010                                                         ; b3ee: 85 10       ..
    bcc cb3f4                                                         ; b3f0: 90 02       ..
    inc l0011                                                         ; b3f2: e6 11       ..
.cb3f4
    inx                                                               ; b3f4: e8          .
    cpx l0015                                                         ; b3f5: e4 15       ..
    bcc cb3c0                                                         ; b3f7: 90 c7       ..
.cb3f9
    txa                                                               ; b3f9: 8a          .
.cb3fa
    rts                                                               ; b3fa: 60          `

    equb &a5, &30                                                     ; b3fb: a5 30       .0

.sub_cb3fd
    jsr sub_cb3b1                                                     ; b3fd: 20 b1 b3     ..
    ldx l0010                                                         ; b400: a6 10       ..
    ldy l0011                                                         ; b402: a4 11       ..
.cb404
    stx l000a                                                         ; b404: 86 0a       ..
    sty l000b                                                         ; b406: 84 0b       ..
    sec                                                               ; b408: 38          8
    lda l0002                                                         ; b409: a5 02       ..
    sbc l000a                                                         ; b40b: e5 0a       ..
    stx l0002                                                         ; b40d: 86 02       ..
    tax                                                               ; b40f: aa          .
    lda l0003                                                         ; b410: a5 03       ..
    sbc l000b                                                         ; b412: e5 0b       ..
    sty l0003                                                         ; b414: 84 03       ..
    tay                                                               ; b416: a8          .
    stx l0012                                                         ; b417: 86 12       ..
    sty l0013                                                         ; b419: 84 13       ..
    lda l0000                                                         ; b41b: a5 00       ..
    sbc l0012                                                         ; b41d: e5 12       ..
    sta l000e                                                         ; b41f: 85 0e       ..
    sta l0000                                                         ; b421: 85 00       ..
    lda l0001                                                         ; b423: a5 01       ..
    sbc l0013                                                         ; b425: e5 13       ..
    sta l000f                                                         ; b427: 85 0f       ..
    sta l0001                                                         ; b429: 85 01       ..
    stx l0012                                                         ; b42b: 86 12       ..
    sty l0013                                                         ; b42d: 84 13       ..
    ldx l0013                                                         ; b42f: a6 13       ..
    clc                                                               ; b431: 18          .
    txa                                                               ; b432: 8a          .
    adc l000b                                                         ; b433: 65 0b       e.
    sta l000b                                                         ; b435: 85 0b       ..
    txa                                                               ; b437: 8a          .
    adc l000f                                                         ; b438: 65 0f       e.
    sta l000f                                                         ; b43a: 85 0f       ..
    inx                                                               ; b43c: e8          .
    ldy l0012                                                         ; b43d: a4 12       ..
    beq cb449                                                         ; b43f: f0 08       ..
.cb441
    dey                                                               ; b441: 88          .
    lda (l000a),y                                                     ; b442: b1 0a       ..
    sta (l000e),y                                                     ; b444: 91 0e       ..
    tya                                                               ; b446: 98          .
    bne cb441                                                         ; b447: d0 f8       ..
.cb449
    dex                                                               ; b449: ca          .
    beq cb452                                                         ; b44a: f0 06       ..
    dec l000b                                                         ; b44c: c6 0b       ..
    dec l000f                                                         ; b44e: c6 0f       ..
    bne cb441                                                         ; b450: d0 ef       ..
.cb452
    rts                                                               ; b452: 60          `

    equb &a5, &30                                                     ; b453: a5 30       .0

.sub_cb455
    jsr sub_cb374                                                     ; b455: 20 74 b3     t.
    ldx l0010                                                         ; b458: a6 10       ..
    ldy l0011                                                         ; b45a: a4 11       ..
.cb45c
    lda l0000                                                         ; b45c: a5 00       ..
    sta l000a                                                         ; b45e: 85 0a       ..
    lda l0001                                                         ; b460: a5 01       ..
    sta l000b                                                         ; b462: 85 0b       ..
    lda l0002                                                         ; b464: a5 02       ..
    sta l000e                                                         ; b466: 85 0e       ..
    lda l0003                                                         ; b468: a5 03       ..
    sta l000f                                                         ; b46a: 85 0f       ..
    sec                                                               ; b46c: 38          8
    txa                                                               ; b46d: 8a          .
    sbc l0000                                                         ; b46e: e5 00       ..
    stx l0000                                                         ; b470: 86 00       ..
    tax                                                               ; b472: aa          .
    tya                                                               ; b473: 98          .
    sbc l0001                                                         ; b474: e5 01       ..
    sty l0001                                                         ; b476: 84 01       ..
    tay                                                               ; b478: a8          .
    clc                                                               ; b479: 18          .
    txa                                                               ; b47a: 8a          .
    adc l0002                                                         ; b47b: 65 02       e.
    sta l0002                                                         ; b47d: 85 02       ..
    tya                                                               ; b47f: 98          .
    adc l0003                                                         ; b480: 65 03       e.
    sta l0003                                                         ; b482: 85 03       ..
    jmp some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes    ; b484: 4c d5 89    L..

    equb &20, &9d, &b2, &20, &b9, &b1, &c5, &24, &90,   2, &a5, &24   ; b487: 20 9d b2...  ..
    equb &18, &65,   0, &aa, &a9,   0, &65,   1, &a8, &4c, &5c, &b4   ; b493: 18 65 00... .e.

.sub_cb49f
    sec                                                               ; b49f: 38          8
    lda l0024                                                         ; b4a0: a5 24       .$
    sbc l003f                                                         ; b4a2: e5 3f       .?
    bcs cb4a8                                                         ; b4a4: b0 02       ..
    lda #0                                                            ; b4a6: a9 00       ..
.cb4a8
    rts                                                               ; b4a8: 60          `

.sub_cb4a9
    sty l0014                                                         ; b4a9: 84 14       ..
    ldy #0                                                            ; b4ab: a0 00       ..
    jsr sub_cb1c8                                                     ; b4ad: 20 c8 b1     ..
    ldy #&ff                                                          ; b4b0: a0 ff       ..
.loop_cb4b2
    iny                                                               ; b4b2: c8          .
    lda (l0000),y                                                     ; b4b3: b1 00       ..
    sta (l000c),y                                                     ; b4b5: 91 0c       ..
    cpy l0014                                                         ; b4b7: c4 14       ..
    bcc loop_cb4b2                                                    ; b4b9: 90 f7       ..
    stx l0000                                                         ; b4bb: 86 00       ..
    lda l000d                                                         ; b4bd: a5 0d       ..
    sta l0001                                                         ; b4bf: 85 01       ..
    rts                                                               ; b4c1: 60          `

.sub_cb4c2
    jsr sub_cb1eb                                                     ; b4c2: 20 eb b1     ..
    jsr sub_cb1b9                                                     ; b4c5: 20 b9 b1     ..
    sta l003f                                                         ; b4c8: 85 3f       .?
    jsr sub_cbe06                                                     ; b4ca: 20 06 be     ..
    lda l0031                                                         ; b4cd: a5 31       .1
    cmp #5                                                            ; b4cf: c9 05       ..
    bne cb4ea                                                         ; b4d1: d0 17       ..
    lda l002c                                                         ; b4d3: a5 2c       .,
    adc #0                                                            ; b4d5: 69 00       i.
    ldy l0030                                                         ; b4d7: a4 30       .0
.loop_cb4d9
    sta l0658,y                                                       ; b4d9: 99 58 06    .X.
    dey                                                               ; b4dc: 88          .
    bpl loop_cb4d9                                                    ; b4dd: 10 fa       ..
    lda #0                                                            ; b4df: a9 00       ..
    sta l0032                                                         ; b4e1: 85 32       .2
    jsr sub_cb229                                                     ; b4e3: 20 29 b2     ).
    lda #4                                                            ; b4e6: a9 04       ..
    sta l0031                                                         ; b4e8: 85 31       .1
.cb4ea
    lda l0032                                                         ; b4ea: a5 32       .2
    cmp l0031                                                         ; b4ec: c5 31       .1
    bcc cb4f2                                                         ; b4ee: 90 02       ..
    sta l0031                                                         ; b4f0: 85 31       .1
.cb4f2
    lda #0                                                            ; b4f2: a9 00       ..
    sta l0032                                                         ; b4f4: 85 32       .2
    lda l0031                                                         ; b4f6: a5 31       .1
    beq cb530                                                         ; b4f8: f0 36       .6
    cmp #4                                                            ; b4fa: c9 04       ..
    bne cb510                                                         ; b4fc: d0 12       ..
    lda l0025                                                         ; b4fe: a5 25       .%
    jsr sub_cb3b1                                                     ; b500: 20 b1 b3     ..
    sta l0025                                                         ; b503: 85 25       .%
    tay                                                               ; b505: a8          .
    beq cb510                                                         ; b506: f0 08       ..
    lda #0                                                            ; b508: a9 00       ..
    dey                                                               ; b50a: 88          .
    jsr sub_cb586                                                     ; b50b: 20 86 b5     ..
    bne cb526                                                         ; b50e: d0 16       ..
.cb510
    ldx l0031                                                         ; b510: a6 31       .1
    cpx #2                                                            ; b512: e0 02       ..
    beq cb531                                                         ; b514: f0 1b       ..
    cpx #3                                                            ; b516: e0 03       ..
    beq cb55c                                                         ; b518: f0 42       .B
    jsr sub_cb34d                                                     ; b51a: 20 4d b3     M.
    lda l0025                                                         ; b51d: a5 25       .%
    ldy l002d                                                         ; b51f: a4 2d       .-
    jsr sub_cb586                                                     ; b521: 20 86 b5     ..
    beq cb530                                                         ; b524: f0 0a       ..
.cb526
    lda #1                                                            ; b526: a9 01       ..
    cmp l0031                                                         ; b528: c5 31       .1
    bcs cb52e                                                         ; b52a: b0 02       ..
    lda #4                                                            ; b52c: a9 04       ..
.cb52e
    sta l0032                                                         ; b52e: 85 32       .2
.cb530
    rts                                                               ; b530: 60          `

.cb531
    lda #4                                                            ; b531: a9 04       ..
    jsr sub_cb374                                                     ; b533: 20 74 b3     t.
    jsr sub_cb2f5                                                     ; b536: 20 f5 b2     ..
    lda #&0a                                                          ; b539: a9 0a       ..
    jsr oswrch                                                        ; b53b: 20 ee ff     ..            ; Write character 10
    ldy #0                                                            ; b53e: a0 00       ..
.loop_cb540
    lda l0659,y                                                       ; b540: b9 59 06    .Y.
    sta l0658,y                                                       ; b543: 99 58 06    .X.
    iny                                                               ; b546: c8          .
    cpy l0030                                                         ; b547: c4 30       .0
    bne loop_cb540                                                    ; b549: d0 f5       ..
    lda #0                                                            ; b54b: a9 00       ..
    sta l0658,y                                                       ; b54d: 99 58 06    .X.
    jsr sub_cb229                                                     ; b550: 20 29 b2     ).
    ldy l002d                                                         ; b553: a4 2d       .-
    lda l0015                                                         ; b555: a5 15       ..
    beq cb585                                                         ; b557: f0 2c       .,
    jmp cb634                                                         ; b559: 4c 34 b6    L4.

.cb55c
    lda l0025                                                         ; b55c: a5 25       .%
    jsr sub_cb3b1                                                     ; b55e: 20 b1 b3     ..
    cmp l0025                                                         ; b561: c5 25       .%
    beq cb568                                                         ; b563: f0 03       ..
    dec l0025                                                         ; b565: c6 25       .%
    rts                                                               ; b567: 60          `

.cb568
    lda #&1e                                                          ; b568: a9 1e       ..
    jsr oswrch                                                        ; b56a: 20 ee ff     ..            ; Write character 30
    lda #&0b                                                          ; b56d: a9 0b       ..
    jsr oswrch                                                        ; b56f: 20 ee ff     ..            ; Write character 11
    ldy l0030                                                         ; b572: a4 30       .0
.loop_cb574
    lda l0657,y                                                       ; b574: b9 57 06    .W.
    sta l0658,y                                                       ; b577: 99 58 06    .X.
    dey                                                               ; b57a: 88          .
    bne loop_cb574                                                    ; b57b: d0 f7       ..
    sty l0658                                                         ; b57d: 8c 58 06    .X.
    jsr sub_cb229                                                     ; b580: 20 29 b2     ).
    ldy #0                                                            ; b583: a0 00       ..
.cb585
    tya                                                               ; b585: 98          .
.sub_cb586
    sta l0026                                                         ; b586: 85 26       .&
    sty l003a                                                         ; b588: 84 3a       .:
    lda #0                                                            ; b58a: a9 00       ..
    sta l004b                                                         ; b58c: 85 4b       .K
    lda #1                                                            ; b58e: a9 01       ..
    cmp l0031                                                         ; b590: c5 31       .1
    bcc cb5a3                                                         ; b592: 90 0f       ..
    ldx l0024                                                         ; b594: a6 24       .$
    cpx l003f                                                         ; b596: e4 3f       .?
    bcc cb59c                                                         ; b598: 90 02       ..
    ldx l003f                                                         ; b59a: a6 3f       .?
.cb59c
    jsr sub_cb2fd                                                     ; b59c: 20 fd b2     ..
    txa                                                               ; b59f: 8a          .
    tay                                                               ; b5a0: a8          .
    bpl cb5a9                                                         ; b5a1: 10 06       ..
.cb5a3
    jsr sub_cb2fb                                                     ; b5a3: 20 fb b2     ..
    ldy #&ff                                                          ; b5a6: a0 ff       ..
.loop_cb5a8
    iny                                                               ; b5a8: c8          .
.cb5a9
    lda (l0010),y                                                     ; b5a9: b1 10       ..
    jsr sub_cb665                                                     ; b5ab: 20 65 b6     e.
    lda (l0010),y                                                     ; b5ae: b1 10       ..
    cmp #&0d                                                          ; b5b0: c9 0d       ..
    beq cb5b8                                                         ; b5b2: f0 04       ..
    cpy l002c                                                         ; b5b4: c4 2c       .,
    bne loop_cb5a8                                                    ; b5b6: d0 f0       ..
.cb5b8
    sty l0015                                                         ; b5b8: 84 15       ..
    iny                                                               ; b5ba: c8          .
    tya                                                               ; b5bb: 98          .
    ldy l0026                                                         ; b5bc: a4 26       .&
    jsr sub_cb636                                                     ; b5be: 20 36 b6     6.
    lda l0010                                                         ; b5c1: a5 10       ..
    sta l000a                                                         ; b5c3: 85 0a       ..
    lda l0011                                                         ; b5c5: a5 11       ..
    sta l000b                                                         ; b5c7: 85 0b       ..
    lda l0015                                                         ; b5c9: a5 15       ..
    jsr sub_cb39b                                                     ; b5cb: 20 9b b3     ..
    bcc cb5dc                                                         ; b5ce: 90 0c       ..
    ldx l0015                                                         ; b5d0: a6 15       ..
    jsr sub_cb2fd                                                     ; b5d2: 20 fd b2     ..
    lda #&2a ; '*'                                                    ; b5d5: a9 2a       .*
    jsr cb680                                                         ; b5d7: 20 80 b6     ..
    inc l004b                                                         ; b5da: e6 4b       .K
.cb5dc
    ldy l0039                                                         ; b5dc: a4 39       .9
.cb5de
    dey                                                               ; b5de: 88          .
    bmi cb605                                                         ; b5df: 30 24       0$
    sty l0016                                                         ; b5e1: 84 16       ..
    sec                                                               ; b5e3: 38          8
    lda l0020,y                                                       ; b5e4: b9 20 00    . .
    sbc l000a                                                         ; b5e7: e5 0a       ..
    tax                                                               ; b5e9: aa          .
    lda l0022,y                                                       ; b5ea: b9 22 00    .".
    sbc l000b                                                         ; b5ed: e5 0b       ..
    bcc cb5de                                                         ; b5ef: 90 ed       ..
    bne cb5de                                                         ; b5f1: d0 eb       ..
    cpx l0015                                                         ; b5f3: e4 15       ..
    beq cb5f9                                                         ; b5f5: f0 02       ..
    bcs cb5de                                                         ; b5f7: b0 e5       ..
.cb5f9
    jsr sub_cb2fd                                                     ; b5f9: 20 fd b2     ..
    lda #&20 ; ' '                                                    ; b5fc: a9 20       .
    jsr cb680                                                         ; b5fe: 20 80 b6     ..
    ldy l0016                                                         ; b601: a4 16       ..
    bne cb5de                                                         ; b603: d0 d9       ..
.cb605
    ldy l0026                                                         ; b605: a4 26       .&
    cpy l003a                                                         ; b607: c4 3a       .:
    beq cb633                                                         ; b609: f0 28       .(
    inc l0026                                                         ; b60b: e6 26       .&
    jsr sub_cb61e                                                     ; b60d: 20 1e b6     ..
    bne cb633                                                         ; b610: d0 21       .!
    lda l004b                                                         ; b612: a5 4b       .K
    beq cb5a3                                                         ; b614: f0 8d       ..
    ldy l0026                                                         ; b616: a4 26       .&
    jsr cb634                                                         ; b618: 20 34 b6     4.
    jmp cb605                                                         ; b61b: 4c 05 b6    L..

.sub_cb61e
    lda l0037                                                         ; b61e: a5 37       .7
    bne cb633                                                         ; b620: d0 11       ..
    tax                                                               ; b622: aa          .
    tay                                                               ; b623: a8          .
    lda #osbyte_inkey                                                 ; b624: a9 81       ..
    jsr osbyte                                                        ; b626: 20 f4 ff     ..            ; Read key within time limit, or read a specific key, or read machine type
    iny                                                               ; b629: c8          .
    beq cb633                                                         ; b62a: f0 07       ..
    jsr c9971                                                         ; b62c: 20 71 99     q.
    inc l0037                                                         ; b62f: e6 37       .7
    stx l0038                                                         ; b631: 86 38       .8
.cb633
    rts                                                               ; b633: 60          `

.cb634
    lda #0                                                            ; b634: a9 00       ..
.sub_cb636
    tax                                                               ; b636: aa          .
    cmp l0658,y                                                       ; b637: d9 58 06    .X.
    bcs cb660                                                         ; b63a: b0 24       .$
    lda #&1c                                                          ; b63c: a9 1c       ..
    jsr oswrch                                                        ; b63e: 20 ee ff     ..            ; Write character 28
    txa                                                               ; b641: 8a          .
    jsr oswrch                                                        ; b642: 20 ee ff     ..            ; Write character
    tya                                                               ; b645: 98          .
    jsr oswrch                                                        ; b646: 20 ee ff     ..            ; Write character
    sec                                                               ; b649: 38          8
    lda l0658,y                                                       ; b64a: b9 58 06    .X.
    sbc #1                                                            ; b64d: e9 01       ..
    jsr oswrch                                                        ; b64f: 20 ee ff     ..            ; Write character
    tya                                                               ; b652: 98          .
    jsr oswrch                                                        ; b653: 20 ee ff     ..            ; Write character
    lda #&0c                                                          ; b656: a9 0c       ..
    jsr oswrch                                                        ; b658: 20 ee ff     ..            ; Write character 12
    lda #&1a                                                          ; b65b: a9 1a       ..
    jsr oswrch                                                        ; b65d: 20 ee ff     ..            ; Write character 26
.cb660
    txa                                                               ; b660: 8a          .
    sta l0658,y                                                       ; b661: 99 58 06    .X.
    rts                                                               ; b664: 60          `

.sub_cb665
    cmp #&20 ; ' '                                                    ; b665: c9 20       .
    bcc cb671                                                         ; b667: 90 08       ..
    cmp #&7f                                                          ; b669: c9 7f       ..
    bne cb67b                                                         ; b66b: d0 0e       ..
    lda #&20 ; ' '                                                    ; b66d: a9 20       .
    bne cb680                                                         ; b66f: d0 0f       ..
.cb671
    cmp #&0d                                                          ; b671: c9 0d       ..
    bne cb67e                                                         ; b673: d0 09       ..
    ldx l0033                                                         ; b675: a6 33       .3
    bne cb67e                                                         ; b677: d0 05       ..
    lda #&20 ; ' '                                                    ; b679: a9 20       .
.cb67b
    jmp oswrch                                                        ; b67b: 4c ee ff    L..            ; Write character 32

.cb67e
    ora #&40 ; '@'                                                    ; b67e: 09 40       .@
.cb680
    ldx l002b                                                         ; b680: a6 2b       .+
    cpx #7                                                            ; b682: e0 07       ..
    bne cb68b                                                         ; b684: d0 05       ..
    lda #&ff                                                          ; b686: a9 ff       ..
    jmp oswrch                                                        ; b688: 4c ee ff    L..            ; Write character 255

.cb68b
    pha                                                               ; b68b: 48          H
    ldx #7                                                            ; b68c: a2 07       ..
.loop_cb68e
    lda lb6a0,x                                                       ; b68e: bd a0 b6    ...
    jsr oswrch                                                        ; b691: 20 ee ff     ..            ; Write character
    cpx #4                                                            ; b694: e0 04       ..
    bne cb69c                                                         ; b696: d0 04       ..
    pla                                                               ; b698: 68          h
    jsr oswrch                                                        ; b699: 20 ee ff     ..            ; Write character
.cb69c
    dex                                                               ; b69c: ca          .
    bpl loop_cb68e                                                    ; b69d: 10 ef       ..
    rts                                                               ; b69f: 60          `

.lb6a0
    equb   7, &11, &80, &11,   0, &11, &87, &11                       ; b6a0: 07 11 80... ...

.cb6a8
    jsr sub_cb1a1                                                     ; b6a8: 20 a1 b1     ..
    bcc cb6b1                                                         ; b6ab: 90 04       ..
    lda l0024                                                         ; b6ad: a5 24       .$
    beq cb708                                                         ; b6af: f0 57       .W
.cb6b1
    dec l0024                                                         ; b6b1: c6 24       .$
    bpl cb708                                                         ; b6b3: 10 53       .S
    lda l002c                                                         ; b6b5: a5 2c       .,
    sta l0024                                                         ; b6b7: 85 24       .$
    jsr sub_cb1a1                                                     ; b6b9: 20 a1 b1     ..
    bcs cb708                                                         ; b6bc: b0 4a       .J
    lda #1                                                            ; b6be: a9 01       ..
    jsr sub_cb3fd                                                     ; b6c0: 20 fd b3     ..
    lda #4                                                            ; b6c3: a9 04       ..
    cmp l0025                                                         ; b6c5: c5 25       .%
    bcs cb6cd                                                         ; b6c7: b0 04       ..
    dec l0025                                                         ; b6c9: c6 25       .%
    bpl cb708                                                         ; b6cb: 10 3b       .;
.cb6cd
    lda #3                                                            ; b6cd: a9 03       ..
    sta l0031                                                         ; b6cf: 85 31       .1
    rts                                                               ; b6d1: 60          `

.sub_cb6d2
    lda l0024                                                         ; b6d2: a5 24       .$
    cmp l002c                                                         ; b6d4: c5 2c       .,
    beq cb6dc                                                         ; b6d6: f0 04       ..
    inc l0024                                                         ; b6d8: e6 24       .$
    bne cb708                                                         ; b6da: d0 2c       .,
.cb6dc
    jsr sub_cb1aa                                                     ; b6dc: 20 aa b1     ..
    bcs cb708                                                         ; b6df: b0 27       .'
    lda #0                                                            ; b6e1: a9 00       ..
    sta l0024                                                         ; b6e3: 85 24       .$
.sub_cb6e5
    jsr sub_cb1aa                                                     ; b6e5: 20 aa b1     ..
    bcs cb708                                                         ; b6e8: b0 1e       ..
    lda #1                                                            ; b6ea: a9 01       ..
    jsr sub_cb455                                                     ; b6ec: 20 55 b4     U.
    lda l0025                                                         ; b6ef: a5 25       .%
    cmp l002f                                                         ; b6f1: c5 2f       ./
    bcs cb6f9                                                         ; b6f3: b0 04       ..
    inc l0025                                                         ; b6f5: e6 25       .%
    bpl cb708                                                         ; b6f7: 10 0f       ..
.cb6f9
    lda #2                                                            ; b6f9: a9 02       ..
    sta l0031                                                         ; b6fb: 85 31       .1
    rts                                                               ; b6fd: 60          `

.sub_cb6fe
    lda #0                                                            ; b6fe: a9 00       ..
    sta l0024                                                         ; b700: 85 24       .$
    beq cb708                                                         ; b702: f0 04       ..
    lda l003f                                                         ; b704: a5 3f       .?
    sta l0024                                                         ; b706: 85 24       .$
.cb708
    lda #0                                                            ; b708: a9 00       ..
    sta l0031                                                         ; b70a: 85 31       .1
    rts                                                               ; b70c: 60          `

    equb &a9,   0, &85, &24                                           ; b70d: a9 00 85... ...

.sub_cb711
    ldx l0027                                                         ; b711: a6 27       .'
    ldy l0028                                                         ; b713: a4 28       .(
    jmp cb404                                                         ; b715: 4c 04 b4    L..

    equb &20, &27, &b7, &a5, &2f, &85, &25, &20, &cc, &b7, &a5, &14   ; b718: 20 27 b7...  '.
    equb &85, &24, &60                                                ; b724: 85 24 60    .$`

.sub_cb727
    ldx l0029                                                         ; b727: a6 29       .)
    ldy l002a                                                         ; b729: a4 2a       .*
    jmp cb45c                                                         ; b72b: 4c 5c b4    L\.

    equb &a5, &33, &49,   1, &85                                      ; b72e: a5 33 49... .3I
    equs "3` "                                                        ; b733: 33 60 20    3`
    equb &0a, &86, &4c, &39, &af, &20, &5a, &86, &4c, &39, &af        ; b736: 0a 86 4c... ..L

.cb741
    lda #3                                                            ; b741: a9 03       ..
    sta l0416                                                         ; b743: 8d 16 04    ...
    jsr sub_cb172                                                     ; b746: 20 72 b1     r.
    jsr sub_cb270                                                     ; b749: 20 70 b2     p.
    equs "Star"                                                       ; b74c: 53 74 61... Sta
    equb &0d, &ea                                                     ; b750: 0d ea       ..

.cb752
    lda #&2a ; '*'                                                    ; b752: a9 2a       .*
    jsr oswrch                                                        ; b754: 20 ee ff     ..            ; Write character 42
    jsr sub_c8494                                                     ; b757: 20 94 84     ..
    beq cb766                                                         ; b75a: f0 0a       ..
    ldx #<(l051a)                                                     ; b75c: a2 1a       ..
    ldy #>(l051a)                                                     ; b75e: a0 05       ..
    jsr oscli                                                         ; b760: 20 f7 ff     ..
    jmp cb752                                                         ; b763: 4c 52 b7    LR.

.cb766
    jmp caf8d                                                         ; b766: 4c 8d af    L..

    equb &20, &11, &b7, &20, &7e, &b7, &20, &72, &b1, &20, &70, &b2   ; b769: 20 11 b7...  ..
    equs "Quit"                                                       ; b775: 51 75 69... Qui
    equb &0d, &ea, &4c, &44, &83                                      ; b779: 0d ea 4c... ..L

.sub_cb77e
    lda l0004                                                         ; b77e: a5 04       ..
    sta l0002                                                         ; b780: 85 02       ..
    lda l0005                                                         ; b782: a5 05       ..
    sta l0003                                                         ; b784: 85 03       ..
    jsr sub_cb727                                                     ; b786: 20 27 b7     '.
    lda l0002                                                         ; b789: a5 02       ..
    sta l040b                                                         ; b78b: 8d 0b 04    ...
    lda l0003                                                         ; b78e: a5 03       ..
    sta l040e                                                         ; b790: 8d 0e 04    ...
    jmp c8574                                                         ; b793: 4c 74 85    Lt.

    equb &20, &70, &b2                                                ; b796: 20 70 b2     p.
    equs "Loa"                                                        ; b799: 4c 6f 61    Loa
    equb &e4, &ea, &20, &10, &b8, &4c, &36, &af, &20, &c4, &bd, &20   ; b79c: e4 ea 20... ..
    equb &70, &b2                                                     ; b7a8: 70 b2       p.
    equs "Sav"                                                        ; b7aa: 53 61 76    Sav
    equb &e5, &ea, &20, &10, &b8, &20, &3c, &be, &a5,   0, &8d, &24   ; b7ad: e5 ea 20... ..
    equb   6, &a5,   1, &8d, &25,   6, &20, &32, &84, &20, &11, &b7   ; b7b9: 06 a5 01... ...
    equb &a6, &4c, &a4                                                ; b7c5: a6 4c a4    .L.
    equs "M \"                                                        ; b7c8: 4d 20 5c    M \
    equb &b4                                                          ; b7cb: b4          .

.sub_cb7cc
    lda l0002                                                         ; b7cc: a5 02       ..
    sta l000c                                                         ; b7ce: 85 0c       ..
    lda l0003                                                         ; b7d0: a5 03       ..
    sta l000d                                                         ; b7d2: 85 0d       ..
    jsr sub_cb359                                                     ; b7d4: 20 59 b3     Y.
    sta l0014                                                         ; b7d7: 85 14       ..
    sec                                                               ; b7d9: 38          8
    lda l0002                                                         ; b7da: a5 02       ..
    sbc l0014                                                         ; b7dc: e5 14       ..
    tax                                                               ; b7de: aa          .
    lda l0003                                                         ; b7df: a5 03       ..
    sbc #0                                                            ; b7e1: e9 00       ..
    tay                                                               ; b7e3: a8          .
    jmp cb404                                                         ; b7e4: 4c 04 b4    L..

    equb &20, &bf, &bd, &20, &70, &b2, &91, &ea, &20, &10, &b8, &20   ; b7e7: 20 bf bd...  ..
    equb &87, &b4, &a5,   2, &85,   8, &a5,   3, &a6,   0, &a4,   1   ; b7f3: 87 b4 a5... ...
    equb &20, &9b, &85, &86,   2, &84,   3, &a6,   8, &a4,   9, &20   ; b7ff: 20 9b 85...  ..
    equb   4, &b4, &4c, &cc, &b7, &20, &84, &b2, &5b, &ea, &a5, &34   ; b80b: 04 b4 4c... ..L
    equb &f0, &0f, &a0,   0, &b9, &78,   6, &c9, &0d, &f0,   6, &20   ; b817: f0 0f a0... ...
    equb &ee, &ff, &c8, &d0, &f3, &20, &84, &b2, &5d, &ba, &ea, &20   ; b823: ee ff c8... ...
    equb &90, &b2, &d0, &0f, &a5, &34, &f0, &0b, &b9, &78,   6, &99   ; b82f: 90 b2 d0... ...
    equb &1a,   5, &c8, &c9, &0d, &d0, &f5, &a6, &17, &a0,   0, &bd   ; b83b: 1a 05 c8... ...
    equb &1a,   5, &99, &78,   6, &e8, &c8, &c9, &0d, &d0, &f4, &e6   ; b847: 1a 05 99... ...
    equs "4`LX"                                                       ; b853: 34 60 4c... 4`L
    equb &9e, &20, &70, &b2                                           ; b857: 9e 20 70... . p
    equs "Line"                                                       ; b85b: 4c 69 6e... Lin
    equb &ba, &ea, &20, &90, &b2, &f0, &ef, &84, &16, &84, &46, &84   ; b85f: ba ea 20... ..
    equb &47, &a4, &16, &b1, &0c, &c9, &0d, &f0, &31, &c9, &3a, &b0   ; b86b: 47 a4 16... G..
    equb &dd, &e9, &2f, &90, &d9, &85, &14, &a9, &0a, &85, &15, &a2   ; b877: dd e9 2f... ../
    equb   0, &a0,   0, &18, &8a, &65, &46, &aa, &98, &65, &47, &a8   ; b883: 00 a0 00... ...
    equb &b0, &c4, &c6, &15, &d0, &f2, &8a, &65, &14, &85, &46, &90   ; b88f: b0 c4 c6... ...
    equb   3, &c8, &f0, &b6, &84, &47, &e6, &16, &d0, &c7, &a5, &46   ; b89b: 03 c8 f0... ...
    equb   5, &47, &f0, &aa, &20, &0d, &b7, &20, &4d, &b3, &a5, &46   ; b8a7: 05 47 f0... .G.
    equb &d0,   2, &c6, &47, &c6, &46, &d0,   4, &a5, &47, &f0, &0f   ; b8b3: d0 02 c6... ...
    equb &a9,   1, &20, &7c, &b3, &b0, &0f, &a5, &14, &c9, &0d, &d0   ; b8bf: a9 01 20... ..
    equb &f3, &f0, &e3, &a5, &2f, &85                                 ; b8cb: f3 f0 e3... ...
    equs "%LX"                                                        ; b8d1: 25 4c 58    %LX
    equb &b4,   0,   5, &8b, &8f,   0, &20, &70, &b2                  ; b8d4: b4 00 05... ...
    equs "Print"                                                      ; b8dd: 50 72 69... Pri
    equb &0d, &ea, &20, &0d, &b7, &20, &4d, &b3, &a9,   2, &20, &ee   ; b8e2: 0d ea 20... ..
    equb &ff, &20, &71, &99, &a0,   0, &b1, &10, &20, &e3, &ff, &98   ; b8ee: ff 20 71... . q
    equb &20, &9b, &b3, &90, &f0, &4c, &8d, &af, &c9, &7e, &d0, &10   ; b8fa: 20 9b b3...  ..
    equb &a2, &81, &20, &f2, &b9, &a4, &41, &b9, &1a,   5, &85, &14   ; b906: a2 81 20... ..
    equb &e6, &41, &c9, &0d, &60, &a0,   0, &84, &41, &84, &42, &84   ; b912: e6 41 c9... .A.
    equb &4a, &84, &54, &84, &43, &84, &44, &20, &0b, &b9, &a5, &14   ; b91e: 4a 84 54... J.T
    equb &c9, &0d, &f0,   6, &c9, &2f, &d0, &10, &e6, &4a, &20, &f0   ; b92a: c9 0d f0... ...
    equb &b9, &a5, &42, &85, &3c, &a5, &4a, &f0, &d7, &4c, &b7, &b9   ; b936: b9 a5 42... ..B
    equb &a6, &42, &86, &3b, &c9, &2a, &d0,   5, &a2, &80, &20,   8   ; b942: a6 42 86... .B.
    equb &b9, &20,   2, &b9, &c9, &5b, &d0, &1f, &a2, &86, &20, &f2   ; b94e: b9 20 02... . .
    equb &b9, &84, &45, &20,   8, &b9, &20, &65, &ba, &a5, &14, &c9   ; b95a: b9 84 45... ..E
    equb &5d, &d0, &f7, &20, &0b, &b9, &a4, &45, &a5, &42, &99, &1b   ; b966: 5d d0 f7... ]..
    equb   4, &d0,   3, &20, &65, &ba, &a4, &3b, &b9, &1a,   4, &10   ; b972: 04 d0 03... ...
    equb &1d, &c9, &89, &f0, &19, &a6, &54, &e0, &0a, &b0, &9f, &e6   ; b97e: 1d c9 89... ...
    equb &54, &a5, &44, &9d, &44,   6, &b9, &1a,   4, &c9, &80, &f0   ; b98a: 54 a5 44... T.D
    equb   9, &a5, &43, &9d, &4e,   6, &e6, &44, &d0, &11, &e6, &43   ; b996: 09 a5 43... ..C
    equb &a5, &43, &c9,   7, &b0, &31,   9, &80, &9d, &4e,   6, &a0   ; b9a2: a5 43 c9... .C.
    equb   0, &84                                                     ; b9ae: 00 84       ..
    equs "DL("                                                        ; b9b0: 44 4c 28    DL(
    equb &b9, &20, &f2, &b9, &20, &0b, &b9, &f0, &34, &a2, &88, &c9   ; b9b3: b9 20 f2... . .
    equb &26, &f0, &f2, &c9, &25, &d0, &21, &a2, &87, &20,   8, &b9   ; b9bf: 26 f0 f2... &..
    equb &38, &e9, &30, &90,   5, &aa, &e4, &54, &90, &df,   0,   8   ; b9cb: 38 e9 30... 8.0
    equb &89, &8c,   0,   7                                           ; b9d7: 89 8c 00... ...
    equs "Too complex"                                                ; b9db: 54 6f 6f... Too
    equb   0, &20, &fd, &b9, &20, &95, &ba, &4c, &b7, &b9, &a2, &8a   ; b9e6: 00 20 fd... . .
    equb &8a, &a4, &42, &99, &1a,   4, &e6, &42, &f0, &dd, &60, &a2   ; b9f2: 8a a4 42... ..B
    equb   0, &86, &4b, &c9, &7c, &d0, &0e, &20, &0b, &b9, &f0, &31   ; b9fe: 00 86 4b... ..K
    equb &c9, &21, &d0, &0e                                           ; ba0a: c9 21 d0... .!.
    equs "fK "                                                        ; ba0e: 66 4b 20    fK
    equb &0b, &b9, &c9, &7c, &d0, &15, &20, &0b, &b9, &f0, &1f, &a2   ; ba11: 0b b9 c9... ...
    equb &7f, &c9, &3f, &f0, &32, &c9, &40, &90, &2d, &29, &df, &e9   ; ba1d: 7f c9 3f... ..?
    equb &40, &b0, &27, &a2, &0d, &c9, &24, &f0, &22, &c9, &5c, &d0   ; ba29: 40 b0 27... @.'
    equb &13, &20, &0b, &b9, &d0, &18,   0,   6                       ; ba35: 13 20 0b... . .
    equs "Synta"                                                      ; ba3d: 53 79 6e... Syn
    equb &f8                                                          ; ba42: f8          .
    equs "error"                                                      ; ba43: 65 72 72... err
    equb   0, &a0, &0b, &d9, &59, &ba, &f0, &eb, &88, &10, &f8, &aa   ; ba48: 00 a0 0b... ...
    equb &8a,   5, &4b, &aa                                           ; ba54: 8a 05 4b... ..K
    equs "`~*[]-.@#&%/"                                               ; ba58: 60 7e 2a... `~*
    equb &0d, &20,   2, &b9, &a2, &82, &c9, &2e, &f0, &0c, &a2, &83   ; ba64: 0d 20 02... . .
    equb &c9, &40, &f0,   6, &a2, &84, &c9, &23, &d0,   3, &4c,   8   ; ba70: c9 40 f0... .@.
    equb &b9, &20, &fd, &b9, &20, &0b, &b9, &c9, &2d, &d0, &0e, &a9   ; ba7c: b9 20 fd... . .
    equb &85, &20, &f3, &b9, &20,   8, &b9, &20, &fd, &b9, &4c,   8   ; ba88: 85 20 f3... . .
    equb &b9, &8a, &10,   8, &48, &a2, &89, &20, &f2, &b9, &68, &aa   ; ba94: b9 8a 10... ...
    equb &4c, &f2, &b9, &20, &71, &99, &a0,   0, &84, &55, &a5, &18   ; baa0: 4c f2 b9... L..
    equb &85, &1a, &c5, &4c, &a5, &19, &85, &1b, &e5, &4d, &90, &3a   ; baac: 85 1a c5... ...
    equb &a5, &52, &d0, &19, &20, &7b, &bc, &a5,   2, &85, &50, &a5   ; bab8: a5 52 d0... .R.
    equb   3, &85, &51, &a5, &4e, &85, &4c, &a5, &4f, &85, &4d, &e6   ; bac4: 03 85 51... ..Q
    equb &52, &a0,   0, &f0, &1d, &60, &e6, &55, &a6, &55, &c8, &98   ; bad0: 52 a0 00... R..
    equb &9d, &2c,   6, &a5, &1a, &95, &56, &a5, &1b, &95, &5e, &a9   ; badc: 9d 2c 06... .,.
    equb   0, &9d, &34,   6, &9d, &3c,   6, &20, &56, &bb, &b9, &1a   ; bae8: 00 9d 34... ..4
    equb   4, &c9, &8a, &f0, &43, &c9, &80, &f0, &d9, &20, &56, &bb   ; baf4: 04 c9 8a... ...
    equb &d0, &0a, &e6, &1a, &d0, &ec, &e6, &1b, &d0, &e8, &c6, &55   ; bb00: d0 0a e6... ...
    equb &a6, &55, &d0,   8, &e6, &18, &d0, &8f, &e6, &19, &d0, &8b   ; bb0c: a6 55 d0... .U.
    equb &18, &b5                                                     ; bb18: 18 b5       ..
    equs "V}4"                                                        ; bb1a: 56 7d 34    V}4
    equb   6, &85, &1a, &b5                                           ; bb1d: 06 85 1a... ...
    equs "^}<"                                                        ; bb21: 5e 7d 3c    ^}<
    equb   6, &85, &1b, &bd, &2c,   6, &a8, &20, &56, &bb, &d0, &da   ; bb24: 06 85 1b... ...
    equb &a6, &55, &fe, &34,   6, &d0, &cb, &fe, &3c,   6, &d0, &c6   ; bb30: a6 55 fe... .U.
    equb &a5, &18, &85, &56, &a5, &19, &85, &5e, &a5, &1a, &e5, &18   ; bb3c: a5 18 85... ...
    equb &8d, &34,   6, &a5, &1b, &e5, &19, &8d, &3c,   6, &18        ; bb48: 8d 34 06... .4.
    equs "`*`"                                                        ; bb53: 60 2a 60    `*`
    equb &a5, &1a, &c5, &4e, &d0,   6, &a5, &1b, &c5, &4f, &f0, &f2   ; bb56: a5 1a c5... ...
    equb &a2,   0, &b9, &1a,   4, &c9, &81,   8, &d0,   1, &c8, &c8   ; bb62: a2 00 b9... ...
    equb &b9, &19,   4, &30,   6, &c1, &1a, &d0, &5b, &f0, &5d, &c9   ; bb6e: b9 19 04... ...
    equb &82, &f0, &59, &c9, &83, &f0, &24, &c9, &84, &f0, &32, &c9   ; bb7a: 82 f0 59... ..Y
    equb &85, &f0, &0a, &c9, &89, &d0, &36, &c8, &b9, &19,   4, &b0   ; bb86: 85 f0 0a... ...
    equb &e0, &c8, &c8, &a1, &1a, &d9, &18,   4, &90, &36, &d9, &19   ; bb92: e0 c8 c8... ...
    equb   4, &90, &35, &d0, &2f, &f0, &31, &a1, &1a, &c9, &5f, &f0   ; bb9e: 04 90 35... ..5
    equb &2b, &c9, &41, &90, &0a, &29, &df, &c9, &5b, &90, &21, &b0   ; bbaa: 2b c9 41... +.A
    equb &1b, &a1, &1a, &c9, &30, &90, &15, &c9, &3a, &b0, &11, &90   ; bbb6: 1b a1 1a... ...
    equb &13, &b9, &1a,   4, &85, &45, &c8, &20, &56, &bb, &f0,   6   ; bbc2: 13 b9 1a... ...
    equb &c4, &45, &d0, &f7, &28, &60, &a4                            ; bbce: c4 45 d0... .E.
    equs "Eh)"                                                        ; bbd5: 45 68 29    Eh)
    equb   2, &60, &4c, &16, &98, &20, &7b, &bc, &a5, &1a, &85,   0   ; bbd8: 02 60 4c... .`L
    equb &a5, &1b, &85,   1, &a5, &3c, &85, &17, &a5,   2, &c5, &18   ; bbe4: a5 1b 85... ...
    equb &a5,   3, &e5, &19, &b0, &e4, &a4, &17, &e6, &17, &b9, &1a   ; bbf0: a5 03 e5... ...
    equb   4, &10, &44, &c9, &8a, &f0, &d6, &c9, &87, &f0, &0f, &c9   ; bbfc: 04 10 44... ..D
    equb &89, &d0,   7, &e6, &17, &b9, &1b,   4, &b0, &31, &a0,   0   ; bc08: 89 d0 07... ...
    equb &f0, &3c, &e6, &17, &b9, &1b,   4, &aa, &bd, &4e,   6, &30   ; bc14: f0 3c e6... .<.
    equb &2e, &a8, &f0, &11, &18, &b9, &56,   0, &79, &34,   6, &85   ; bc20: 2e a8 f0... ...
    equb &0c, &b9, &5e,   0, &79, &3c,   6, &d0,   6, &a5, &18, &85   ; bc2c: 0c b9 5e... ..^
    equb &0c, &a5, &19, &85, &0d, &bd, &44,   6, &a8, &b1, &0c, &a2   ; bc38: 0c a5 19... ...
    equb   0, &81,   2, &e6,   2, &d0, &a1, &e6,   3, &d0, &9d, &29   ; bc44: 00 81 02... ...
    equb &7f, &a8, &b9, &56,   0, &85, &0a, &b9, &5e,   0, &85, &0b   ; bc50: 7f a8 b9... ...
    equb &a5,   2, &85, &0e, &a5,   3, &85, &0f, &18, &b9, &34,   6   ; bc5c: a5 02 85... ...
    equb &aa, &65,   2, &85,   2, &b9, &3c,   6, &a8, &65,   3, &85   ; bc68: aa 65 02... .e.
    equb   3, &20, &d5, &89, &4c, &ec, &bb, &a6, &18, &a4, &19, &4c   ; bc74: 03 20 d5... . .
    equb &5c, &b4, &20, &70, &b2                                      ; bc80: 5c b4 20... \.
    equs "Fin"                                                        ; bc85: 46 69 6e    Fin
    equb &e4, &61, &6e, &e4, &72, &90, &ba, &ea, &20, &96, &b2, &20   ; bc88: e4 61 6e... .an
    equb &17, &b9, &20, &8a, &b4, &a5, &29, &85, &4c, &85, &4e, &a5   ; bc94: 17 b9 20... ..
    equb &2a, &85, &4d, &85, &4f, &85, &52, &a6,   0, &a4,   1, &86   ; bca0: 2a 85 4d... *.M
    equb &18, &84, &19, &20, &a3, &ba, &b0                            ; bcac: 18 84 19... ...
    equs "i {"                                                        ; bcb3: 69 20 7b    i {
    equb &bc, &a5, &2f, &85, &25, &20, &1f, &b7, &20, &c2, &b4, &a9   ; bcb6: bc a5 2f... ../
    equb   4, &85                                                     ; bcc2: 04 85       ..
    equs "1 p"                                                        ; bcc4: 31 20 70    1 p
    equb &b2, &52, &28, &90, &29, &ac                                 ; bcc7: b2 52 28... .R(
    equs "C(ontinue"                                                  ; bccd: 43 28 6f... C(o
    equb &a9, &6f, &f2, &8e, &ea, &20, &ef, &b2, &20, &e5, &b1, &20   ; bcd6: a9 6f f2... .o.
    equb   7, &b2,   9, &20, &c9, &63, &d0, &0a, &a6, &18, &a4, &19   ; bce2: 07 b2 09... ...
    equb &e8, &d0, &ba, &c8, &d0, &b7, &c9, &72, &d0, &e9, &20, &bf   ; bcee: e8 d0 ba... ...
    equb &bd, &a5, &4a, &d0, &18, &20, &70, &b2, &52, &90             ; bcfa: bd a5 4a... ..J
    equs " by"                                                        ; bd04: 20 62 79     by
    equb &ba, &ea, &20, &96, &b2, &a0,   0, &85, &41, &a4, &3c, &84   ; bd07: ba ea 20... ..
    equb &42, &20, &b7, &b9, &20, &dd, &bb, &4c, &a7, &bc, &4c, &d5   ; bd13: 42 20 b7... B .
    equb &b8, &20, &c4, &bd, &20, &70, &b2                            ; bd1f: b8 20 c4... . .
    equs "Globa"                                                      ; bd26: 47 6c 6f... Glo
    equb &ec, &72, &90, &ba, &ea, &20, &96, &b2, &20, &17, &b9, &20   ; bd2b: ec 72 90... .r.
    equb &3c, &be, &a9,   0, &85, &52, &85, &46, &85, &47, &a6,   0   ; bd37: 3c be a9... <..
    equb &a4,   1, &86, &18, &84, &19, &20, &a3, &ba, &b0, &16, &e6   ; bd43: a4 01 86... ...
    equb &46, &d0,   2, &e6, &47, &a5, &4a, &d0,   6, &a6, &1a, &a4   ; bd4f: 46 d0 02... F..
    equb &1b, &d0, &e7, &20, &dd, &bb, &4c, &41, &bd, &a6, &50, &a4   ; bd5b: 1b d0 e7... ...
    equb &51, &20,   4, &b4, &20, &cc, &b7, &20, &c2, &b4, &a2, &15   ; bd67: 51 20 04... Q .
    equb &20, &f7, &b2, &a6, &46, &a4, &47, &20, &0c, &b3, &20, &7d   ; bd73: 20 f7 b2...  ..
    equb &b2, &20, &8f, &ea, &4c,   8, &b7, &20, &87, &b4, &a6, &39   ; bd7f: b2 20 8f... . .
    equb &f0, &13, &e0,   1, &d0, &23, &a5, &1c, &85, &1d, &c5,   0   ; bd8b: f0 13 e0... ...
    equb &a5, &1e, &85, &1f, &e5,   1, &90,   1, &ca, &a5,   0, &95   ; bd97: a5 1e 85... ...
    equb &1c, &a5,   1, &95, &1e, &20, &1f, &b7, &e6, &39, &a9,   1   ; bda3: 1c a5 01... ...
    equb &85                                                          ; bdaf: 85          .
    equs "1L)"                                                        ; bdb0: 31 4c 29    1L)
    equb &b2                                                          ; bdb3: b2          .

.loop_cbdb4
    brk                                                               ; bdb4: 00          .

    equb   9, &82                                                     ; bdb5: 09 82       ..
    equs "marking"                                                    ; bdb7: 6d 61 72... mar
    equb 0                                                            ; bdbe: 00          .

.sub_cbdbf
    lda l0039                                                         ; bdbf: a5 39       .9
    bne loop_cbdb4                                                    ; bdc1: d0 f1       ..
    rts                                                               ; bdc3: 60          `

    equb &a5, &39, &c9,   2, &f0, &ea, &60, &a5, &39, &c9,   1, &d0   ; bdc4: a5 39 c9... .9.
    equb &e3, &20, &3c, &be, &86,   0, &84,   1, &4c, &1f, &b7, &a5   ; bdd0: e3 20 3c... . <
    equb &39, &c9,   2, &d0, &d3, &20, &87, &b4, &20,   6, &be, &a5   ; bddc: 39 c9 02... 9..
    equb &53, &c9,   1, &d0, &12, &a5,   0, &c5, &21, &a5,   1, &e5   ; bde8: 53 c9 01... S..
    equb &23, &90, &bd, &a5,   2, &85, &21, &a5,   3, &85, &23, &a9   ; bdf4: 23 90 bd... #..
    equb   0, &85                                                     ; be00: 00 85       ..
    equs "9L)"                                                        ; be02: 39 4c 29    9L)
    equb &b2                                                          ; be05: b2          .

.sub_cbe06
    sec                                                               ; be06: 38          8
    lda l0000                                                         ; be07: a5 00       ..
    sbc l0002                                                         ; be09: e5 02       ..
    sta l000c                                                         ; be0b: 85 0c       ..
    lda l0001                                                         ; be0d: a5 01       ..
    sbc l0003                                                         ; be0f: e5 03       ..
    sta l000d                                                         ; be11: 85 0d       ..
    ldy l0039                                                         ; be13: a4 39       .9
    lda #0                                                            ; be15: a9 00       ..
    sta l0053                                                         ; be17: 85 53       .S
.cbe19
    dey                                                               ; be19: 88          .
    bmi cbe3b                                                         ; be1a: 30 1f       0.
    ldx l001c,y                                                       ; be1c: b6 1c       ..
    cpx l0000                                                         ; be1e: e4 00       ..
    lda l001e,y                                                       ; be20: b9 1e 00    ...
    pha                                                               ; be23: 48          H
    sbc l0001                                                         ; be24: e5 01       ..
    bcs cbe33                                                         ; be26: b0 0b       ..
    sec                                                               ; be28: 38          8
    txa                                                               ; be29: 8a          .
    sbc l000c                                                         ; be2a: e5 0c       ..
    tax                                                               ; be2c: aa          .
    pla                                                               ; be2d: 68          h
    sbc l000d                                                         ; be2e: e5 0d       ..
    pha                                                               ; be30: 48          H
    inc l0053                                                         ; be31: e6 53       .S
.cbe33
    stx l0020,y                                                       ; be33: 96 20       .
    pla                                                               ; be35: 68          h
    sta l0022,y                                                       ; be36: 99 22 00    .".
    bcs cbe19                                                         ; be39: b0 de       ..
.cbe3b
    rts                                                               ; be3b: 60          `

    equb &a5, &39, &f0,   6, &20, &9d, &b2, &20, &f5, &b2, &20, &8a   ; be3c: a5 39 f0... .9.
    equb &b4, &a5,   0, &85, &4c, &a5,   1, &85, &4d, &a5, &39, &f0   ; be48: b4 a5 00... ...
    equb &1d, &20,   6, &be, &20, &ff, &bd, &a6, &20, &a4, &22, &a5   ; be54: 1d 20 06... . .
    equb &53, &f0, &16, &a5,   1, &48, &a5,   0, &48, &20,   4, &b4   ; be60: 53 f0 16... S..
    equb &68, &aa, &68, &a8, &d0,   7, &20, &11, &b7, &a6, &29, &a4   ; be6c: 68 aa 68... h.h
    equb &2a, &86, &4e, &84                                           ; be78: 2a 86 4e... *.N
    equs "O` "                                                        ; be7c: 4f 60 20    O`
    equb &db, &bd, &38, &a5, &21, &e5, &20, &aa, &a5, &23, &e5, &22   ; be7f: db bd 38... ..8
    equb &a8, &20, &c8, &b1, &a5, &20, &85, &0a, &a5, &22, &85, &0b   ; be8b: a8 20 c8... . .
    equb &86,   0, &86, &0e, &84,   1, &84, &0f, &20, &2f, &b4, &4c   ; be97: 86 00 86... ...
    equb &1f, &b7, &20, &db, &bd, &a6, &20, &a4, &22, &a5, &53, &f0   ; bea3: 1f b7 20... ..
    equb &12, &86, &0a, &84, &0b, &a5, &21, &85, &0e, &a5, &23, &85   ; beaf: 12 86 0a... ...
    equb &0f, &a6,   2, &a4,   3, &d0, &10, &86, &0e, &84, &0f, &a5   ; bebb: 0f a6 02... ...
    equb   0, &85, &0a, &a5,   1, &85, &0b, &a6, &21, &a4, &23, &86   ; bec7: 00 85 0a... ...
    equb &4e, &84, &4f, &38, &a5, &0e, &e5, &0a, &85, &12, &a5, &0f   ; bed3: 4e 84 4f... N.O
    equb &e5, &0b, &85, &13, &a5, &4e, &e5, &0e, &aa, &a5, &4f, &e5   ; bedf: e5 0b 85... ...
    equb &0f, &a8, &e4, &12, &e5, &13, &b0,   4, &86, &12, &84, &13   ; beeb: 0f a8 e4... ...
    equb &a5, &12,   5, &13, &f0, &a5, &b0, &15, &a6, &0e, &a4, &0f   ; bef7: a5 12 05... ...
    equb &20, &28, &bf, &18, &98, &65, &0c, &85, &0a, &a9,   0, &65   ; bf03: 20 28 bf...  (.
    equb &0d, &85, &0b, &90, &c2, &38, &a5, &4e, &e5, &12, &85, &4e   ; bf0f: 0d 85 0b... ...
    equb &aa, &a5, &4f, &e5, &13, &85, &4f, &a8, &20, &28, &bf, &f0   ; bf1b: aa a5 4f... ..O
    equb &ae, &a5, &0a, &85, &0c, &a5, &0b, &85, &0d, &86,   8, &84   ; bf27: ae a5 0a... ...
    equb   9, &e6, &13, &a0,   0, &f0, &11, &b1, &0c, &aa, &b1,   8   ; bf33: 09 e6 13... ...
    equb &91, &0c, &8a, &91,   8, &c8, &d0,   4, &e6, &0d, &e6,   9   ; bf3f: 91 0c 8a... ...
    equb &c4, &12, &d0, &eb, &c6, &13, &d0, &e7, &60, &7a, &12, &38   ; bf4b: c4 12 d0... ...
    equb &a5, &0b, &88, &79, &0e, &9f, &f3, &7c, &2a, &ac, &3f, &b5   ; bf57: a5 0b 88... ...
    equb &86, &34,   1, &a2, &7a, &7f, &63, &8e, &37, &ec, &82, &3f   ; bf63: 86 34 01... .4.
    equb &ff, &ff, &ca, &7f, &ff, &ff, &ff, &ff, &85, &a3, &59, &e8   ; bf6f: ff ff ca... ...
    equb &67, &80, &1c, &9d,   7, &36, &80, &57, &bb, &78, &df, &80   ; bf7b: 67 80 1c... g..
    equb &ca, &9a, &0e, &83, &84, &8c, &bb, &ca, &6e, &81, &95, &96   ; bf87: ca 9a 0e... ...
    equb   6, &de, &81, &0a, &c7, &6c, &52, &7f, &7d, &ad, &90, &a1   ; bf93: 06 de 81... ...
    equb &82, &fb                                                     ; bf9f: 82 fb       ..
    equs "bW/"                                                        ; bfa1: 62 57 2f    bW/
    equb &80                                                          ; bfa4: 80          .
    equs "mc8,"                                                       ; bfa5: 6d 63 38... mc8
    equb &84, &8a, &ea, &0c, &1b, &84, &1a, &be, &bb, &2b, &84        ; bfa9: 84 8a ea... ...
    equs "7EU"                                                        ; bfb4: 37 45 55    7EU
    equb &ab, &82, &d5                                                ; bfb7: ab 82 d5    ...
    equs "UW|"                                                        ; bfba: 55 57 7c    UW|
    equb &83, &c0,   0,   0,   5, &81,   0,   0,   0,   0, &83, &e0   ; bfbd: 83 c0 00... ...
    equb &20, &86, &5b, &82, &80, &53, &93, &b8, &83, &20,   0,   6   ; bfc9: 20 86 5b...  .[
    equb &a1, &82,   0,   0, &21, &63, &82, &c0,   0,   0,   2, &82   ; bfd5: a1 82 00... ...
    equb &80,   0,   0, &0c, &81,   0,   0,   0,   0, &81,   0,   0   ; bfe1: 80 00 00... ...
    equb   0,   0, &6f, &15                                           ; bfed: 00 00 6f... ..o
    equs "wza"                                                        ; bff1: 77 7a 61    wza
    equb &81, &c9, &10,   0,   0, &81, &49, &0f, &da, &a2, &15, &a6   ; bff4: 81 c9 10... ...
.pydis_end

; Automatically generated labels:
;     c805e
;     c80a5
;     c80b6
;     c80bf
;     c80dc
;     c80e2
;     c8101
;     c8180
;     c8186
;     c819d
;     c81a7
;     c81b7
;     c81bc
;     c8265
;     c82a4
;     c82c1
;     c831a
;     c8324
;     c832c
;     c8337
;     c8341
;     c8344
;     c834c
;     c8364
;     c836c
;     c838d
;     c839b
;     c839e
;     c839f
;     c83b4
;     c83c4
;     c83cd
;     c83df
;     c8412
;     c8491
;     c84a4
;     c84bb
;     c84c4
;     c8574
;     c8576
;     c8581
;     c85b5
;     c85e8
;     c8633
;     c8639
;     c8655
;     c87a3
;     c87c7
;     c89f2
;     c90e5
;     c90f2
;     c90fd
;     c911d
;     c916a
;     c9816
;     c9971
;     c9976
;     c9988
;     caf8d
;     caf9c
;     cafbe
;     cafc9
;     caff6
;     cb016
;     cb01b
;     cb02e
;     cb03d
;     cb046
;     cb04b
;     cb04e
;     cb053
;     cb05c
;     cb077
;     cb080
;     cb08f
;     cb096
;     cb09e
;     cb0cb
;     cb171
;     cb1c6
;     cb1e2
;     cb1ef
;     cb210
;     cb241
;     cb2d0
;     cb2ef
;     cb2ff
;     cb356
;     cb364
;     cb366
;     cb38e
;     cb39a
;     cb3b0
;     cb3c0
;     cb3d5
;     cb3f4
;     cb3f9
;     cb3fa
;     cb404
;     cb441
;     cb449
;     cb452
;     cb45c
;     cb4a8
;     cb4ea
;     cb4f2
;     cb510
;     cb526
;     cb52e
;     cb530
;     cb531
;     cb55c
;     cb568
;     cb585
;     cb59c
;     cb5a3
;     cb5a9
;     cb5b8
;     cb5dc
;     cb5de
;     cb5f9
;     cb605
;     cb633
;     cb634
;     cb660
;     cb671
;     cb67b
;     cb67e
;     cb680
;     cb68b
;     cb69c
;     cb6a8
;     cb6b1
;     cb6cd
;     cb6dc
;     cb6f9
;     cb708
;     cb741
;     cb752
;     cb766
;     cbe19
;     cbe33
;     cbe3b
;     l0000
;     l0001
;     l0002
;     l0003
;     l0004
;     l0005
;     l0006
;     l0007
;     l0008
;     l0009
;     l000a
;     l000b
;     l000c
;     l000d
;     l000e
;     l000f
;     l0010
;     l0011
;     l0012
;     l0013
;     l0014
;     l0015
;     l0016
;     l0017
;     l0018
;     l0019
;     l001a
;     l001b
;     l001c
;     l001e
;     l001f
;     l0020
;     l0022
;     l0024
;     l0025
;     l0026
;     l0027
;     l0028
;     l0029
;     l002a
;     l002b
;     l002c
;     l002d
;     l002f
;     l0030
;     l0031
;     l0032
;     l0033
;     l0035
;     l0036
;     l0037
;     l0038
;     l0039
;     l003a
;     l003e
;     l003f
;     l0040
;     l0041
;     l0042
;     l0043
;     l0044
;     l0045
;     l004b
;     l0053
;     l00fd
;     l00fe
;     l00ff
;     l0100
;     l0400
;     l0401
;     l0402
;     l0403
;     l0404
;     l0405
;     l0407
;     l0408
;     l040a
;     l040b
;     l040d
;     l040e
;     l0410
;     l0411
;     l0412
;     l0413
;     l0414
;     l0415
;     l0416
;     l0417
;     l0418
;     l041a
;     l0420
;     l0519
;     l051a
;     l061a
;     l061b
;     l061c
;     l061d
;     l0624
;     l0625
;     l0626
;     l0627
;     l062e
;     l062f
;     l0632
;     l063a
;     l0642
;     l064a
;     l0655
;     l0656
;     l0657
;     l0658
;     l0659
;     l065a
;     l065b
;     l065c
;     l0f03
;     l208d
;     l6e69
;     l7420
;     l8036
;     l803c
;     l81c2
;     l8466
;     l8470
;     l8479
;     l9998
;     l9999
;     la507
;     la60c
;     la71f
;     la73e
;     lb072
;     lb193
;     lb19a
;     lb6a0
;     le8e8
;     lf461
;     loop_c8028
;     loop_c8047
;     loop_c8179
;     loop_c8305
;     loop_c8376
;     loop_c83cc
;     loop_c849a
;     loop_c85f5
;     loop_c87be
;     loop_c9172
;     loop_c9178
;     loop_cb09a
;     loop_cb17f
;     loop_cb1bb
;     loop_cb200
;     loop_cb2c8
;     loop_cb381
;     loop_cb383
;     loop_cb4b2
;     loop_cb4d9
;     loop_cb540
;     loop_cb574
;     loop_cb5a8
;     loop_cb68e
;     loop_cbdb4
;     sub_c80e5
;     sub_c80e9
;     sub_c8104
;     sub_c817a
;     sub_c8482
;     sub_c8494
;     sub_c84b3
;     sub_c855d
;     sub_c857a
;     sub_c8588
;     sub_c859b
;     sub_c85ca
;     sub_c85f1
;     sub_c85fc
;     sub_c860a
;     sub_c87e2
;     sub_c90dd
;     sub_c9137
;     sub_c913f
;     sub_c9170
;     sub_c9184
;     sub_c9189
;     sub_c996e
;     sub_c998c
;     sub_c999a
;     sub_ca493
;     sub_cafd9
;     sub_caffc
;     sub_cb146
;     sub_cb163
;     sub_cb172
;     sub_cb1a1
;     sub_cb1aa
;     sub_cb1b9
;     sub_cb1c8
;     sub_cb1e5
;     sub_cb1eb
;     sub_cb207
;     sub_cb229
;     sub_cb270
;     sub_cb284
;     sub_cb29d
;     sub_cb2f5
;     sub_cb2fb
;     sub_cb2fd
;     sub_cb34d
;     sub_cb359
;     sub_cb374
;     sub_cb39b
;     sub_cb3b1
;     sub_cb3fd
;     sub_cb455
;     sub_cb49f
;     sub_cb4a9
;     sub_cb4c2
;     sub_cb586
;     sub_cb61e
;     sub_cb636
;     sub_cb665
;     sub_cb6d2
;     sub_cb6e5
;     sub_cb6fe
;     sub_cb711
;     sub_cb727
;     sub_cb77e
;     sub_cb7cc
;     sub_cbdbf
;     sub_cbe06
    assert <(l003e) == &3e
    assert <(l051a) == &1a
    assert <brkv_handler == &98
    assert >(l003e) == &00
    assert >(l051a) == &05
    assert >brkv_handler == &80
    assert copyright - rom_header == &14
    assert osbyte_163_192_x_minus_1_table - 1 == &8094
    assert osbyte_acknowledge_escape == &7e
    assert osbyte_enter_language == &8e
    assert osbyte_inkey == &81
    assert osbyte_read_high_order_address == &82
    assert osbyte_read_himem == &84
    assert osbyte_read_os_version == &00
    assert osbyte_read_oshwm == &83
    assert osbyte_read_write_last_break_type == &fd
    assert osbyte_read_write_tab_char == &db
    assert osbyte_select_output_stream == &03
    assert osfind_close == &00
    assert osword_read_io_memory == &05
    assert osword_read_line == &00
    assert our_osbyte_a == &a3
    assert our_osbyte_x == &c0

save pydis_start, pydis_end
