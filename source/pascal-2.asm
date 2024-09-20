; Constants
compiler_bytecode_start                = 34416
interpreter_size                       = 8111
osbyte_acknowledge_escape              = 126
osbyte_enter_language                  = 142
osbyte_inkey                           = 129
osbyte_read_adc_or_get_buffer_status   = 128
osbyte_read_char_at_cursor             = 135
osbyte_read_high_order_address         = 130
osbyte_read_himem                      = 132
osbyte_read_himem_for_mode             = 133
osbyte_read_os_version                 = 0
osbyte_read_oshwm                      = 131
osbyte_read_vdu_variable               = 160
osbyte_read_write_last_break_type      = 253
osbyte_read_write_tab_char             = 219
osbyte_select_output_stream            = 3
osbyte_select_printer                  = 5
osfind_close                           = 0
osfind_open_input                      = 64
osfind_open_output                     = 128
osword_read_io_memory                  = 5
osword_read_line                       = 0
our_osbyte_a                           = 163
our_osbyte_x                           = 192

; Memory locations
l0000                           = &0000
l0001                           = &0001
l0002                           = &0002
l0003                           = &0003
oshwm_low_zp                    = &0004
oshwm_high_zp                   = &0005
l0006                           = &0006
l0007                           = &0007
l0008                           = &0008
l0009                           = &0009
l000a                           = &000a
l000b                           = &000b
l000c                           = &000c
l000d                           = &000d
l000e                           = &000e
l000f                           = &000f
l0010                           = &0010
l0011                           = &0011
l0012                           = &0012
l0013                           = &0013
l0014                           = &0014
l0015                           = &0015
l0016                           = &0016
l0017                           = &0017
l0018                           = &0018
l0019                           = &0019
l001a                           = &001a
l001b                           = &001b
l001c                           = &001c
l001d                           = &001d
l001e                           = &001e
l001f                           = &001f
l0020                           = &0020
l0021                           = &0021
l0022                           = &0022
l0023                           = &0023
l0024                           = &0024
l0025                           = &0025
l0026                           = &0026
l0027                           = &0027
l0028                           = &0028
l0029                           = &0029
l002a                           = &002a
l002b                           = &002b
l002c                           = &002c
l002d                           = &002d
l002f                           = &002f
l0030                           = &0030
l0031                           = &0031
l0032                           = &0032
l0033                           = &0033
l0034                           = &0034
l0035                           = &0035
l0036                           = &0036
l0037                           = &0037
l0038                           = &0038
l0039                           = &0039
l003a                           = &003a
l003b                           = &003b
l003c                           = &003c
l003e                           = &003e
l003f                           = &003f
l0040                           = &0040
l0041                           = &0041
l0042                           = &0042
l0043                           = &0043
l0044                           = &0044
l0045                           = &0045
l0046                           = &0046
l0047                           = &0047
l0048                           = &0048
l0049                           = &0049
l004a                           = &004a
l004b                           = &004b
l004c                           = &004c
l004d                           = &004d
l004e                           = &004e
l004f                           = &004f
l0050                           = &0050
l0051                           = &0051
l0052                           = &0052
l0053                           = &0053
l0054                           = &0054
l0055                           = &0055
l0056                           = &0056
l005e                           = &005e
l0067                           = &0067
l0069                           = &0069
l006a                           = &006a
l006b                           = &006b
l006c                           = &006c
l006d                           = &006d
l006e                           = &006e
osbyte_a                        = &00ef
osbyte_x                        = &00f0
osbyte_y                        = &00f1
os_text_ptr                     = &00f2
romsel_copy                     = &00f4
l00fd                           = &00fd
l00fe                           = &00fe
escape_flag                     = &00ff
l0100                           = &0100
brkv                            = &0202
machine_high_order_address_low  = &0400
machine_high_order_address_high = &0401
himem_low                       = &0402
himem_high                      = &0403
oshwm_low1                      = &0404
oshwm_low3                      = &0405
oshwm_high1                     = &0407
oshwm_high3                     = &0408
oshwm_low2                      = &040a
l040b                           = &040b
oshwm_high2                     = &040d
l040e                           = &040e
l0410                           = &0410
l0411                           = &0411
l0412                           = &0412
l0413                           = &0413
l0414                           = &0414
l0415                           = &0415
l0416                           = &0416
simplified_machine_type         = &0417
l0418                           = &0418
l0419                           = &0419
l041a                           = &041a
l041b                           = &041b
l0420                           = &0420
l0519                           = &0519
input_buffer                    = &051a
l0619                           = &0619
l061a                           = &061a
l061b                           = &061b
l061c                           = &061c
l061d                           = &061d
l061e                           = &061e
l0624                           = &0624
l0625                           = &0625
l0626                           = &0626
l0627                           = &0627
l0628                           = &0628
l0629                           = &0629
l062c                           = &062c
l062d                           = &062d
l062e                           = &062e
l062f                           = &062f
l0630                           = &0630
l0631                           = &0631
l0632                           = &0632
l0634                           = &0634
l063a                           = &063a
l063c                           = &063c
l0642                           = &0642
l0644                           = &0644
l064a                           = &064a
l064e                           = &064e
l0652                           = &0652
l0653                           = &0653
l0654                           = &0654
l0655                           = &0655
l0656                           = &0656
l0657                           = &0657
l0658                           = &0658
l0659                           = &0659
l065a                           = &065a
line_number_low                 = &065b
line_number_high                = &065c
l065d                           = &065d
l065f                           = &065f
l0660                           = &0660
l0661                           = &0661
l0662                           = &0662
l0663                           = &0663
l0664                           = &0664
l0665                           = &0665
l0666                           = &0666
l0668                           = &0668
l0669                           = &0669
l066a                           = &066a
l066b                           = &066b
l0678                           = &0678
lc001                           = &c001
lc002                           = &c002
lc003                           = &c003
lea8f                           = &ea8f
osfind                          = &ffce
osbput                          = &ffd4
osbget                          = &ffd7
osargs                          = &ffda
osfile                          = &ffdd
osrdch                          = &ffe0
osasci                          = &ffe3
osnewl                          = &ffe7
oswrch                          = &ffee
osword                          = &fff1
osbyte                          = &fff4
oscli                           = &fff7

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
; Set the last break type to the value from our table corresponding to the OSBYTE
; 163,192 Y.
    tax                                                               ; 8075: aa          .
    lda osbyte_163_192_x_minus_1_table - 1,x                          ; 8076: bd 94 80    ...
    tax                                                               ; 8079: aa          .
    ldy #3                                                            ; 807a: a0 03       ..
    lda #osbyte_read_write_last_break_type                            ; 807c: a9 fd       ..
    jsr osbyte                                                        ; 807e: 20 f4 ff     ..            ; Read/Write type of last reset
; Save the current output stream to l0100.
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
.unrecognised_osbyte_handler_rts
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
    jsr fancy_print_error_at_l00fd                                    ; 80a5: 20 e5 80     ..
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
    jmp something_01_handler                                          ; 80bc: 4c 41 b7    LA.

.c80bf
    jsr sub_cb1eb                                                     ; 80bf: 20 eb b1     ..
    jsr fancy_print_nop_terminated_inline                             ; 80c2: 20 84 b2     ..
    equs &0d                                                          ; 80c5: 0d          .
    equb 128 + 13                                                     ; 80c6: 8d          .              ; "*********" (token 13)
    equs " "                                                          ; 80c7: 20
    equb 128 + 14                                                     ; 80c8: 8e          .              ; "Escape" (token 14)
    equs " t"                                                         ; 80c9: 20 74        t
    equb 128 + ('o')                                                  ; 80cb: ef          .              ; "o "
    equs "continu"                                                    ; 80cc: 63 6f 6e... con
    equb 128 + ('e')                                                  ; 80d3: e5          .              ; "e "
    equb 128 + 13                                                     ; 80d4: 8d          .              ; "*********" (token 13)

    nop                                                               ; 80d5: ea          .
.loop_c80d6
    jsr sub_cb207                                                     ; 80d6: 20 07 b2     ..
    jmp loop_c80d6                                                    ; 80d9: 4c d6 80    L..

.c80dc
    inc l0416                                                         ; 80dc: ee 16 04    ...
    jsr sub_c90dd                                                     ; 80df: 20 dd 90     ..
.c80e2
    jmp language_entry_common                                         ; 80e2: 4c 44 83    LD.

.fancy_print_error_at_l00fd
    ldx l00fd                                                         ; 80e5: a6 fd       ..
    ldy l00fe                                                         ; 80e7: a4 fe       ..
.fancy_print_error_at_yx
    jsr osnewl                                                        ; 80e9: 20 e7 ff     ..            ; Write newline (characters 10 and 13)
    lda #0                                                            ; 80ec: a9 00       ..
    jsr fancy_print_at_yx_with_terminator_a                           ; 80ee: 20 7a 81     z.
    lda l0416                                                         ; 80f1: ad 16 04    ...
    bne c8101                                                         ; 80f4: d0 0b       ..
    lda line_number_low                                               ; 80f6: ad 5b 06    .[.
    ora line_number_high                                              ; 80f9: 0d 5c 06    .\.
    beq c8101                                                         ; 80fc: f0 03       ..
    jsr sub_c8104                                                     ; 80fe: 20 04 81     ..
.c8101
    jmp osnewl                                                        ; 8101: 4c e7 ff    L..            ; Write newline (characters 10 and 13)

.sub_c8104
    jsr fancy_print_nop_terminated_inline                             ; 8104: 20 84 b2     ..
    equs " a"                                                         ; 8107: 20 61        a
    equb 128 + ('t')                                                  ; 8109: f4          .              ; "t "
    equs "lin"                                                        ; 810a: 6c 69 6e    lin
    equb 128 + ('e')                                                  ; 810d: e5          .              ; "e "

    nop                                                               ; 810e: ea          .
    ldx line_number_low                                               ; 810f: ae 5b 06    .[.
    ldy line_number_high                                              ; 8112: ac 5c 06    .\.
    jsr print_yx_as_decimal                                           ; 8115: 20 0c b3     ..
    jsr fancy_print_nop_terminated_inline                             ; 8118: 20 84 b2     ..
    equs " i"                                                         ; 811b: 20 69        i
    equb 128 + ('n')                                                  ; 811d: ee          .              ; "n "

    nop                                                               ; 811e: ea          .
    lda #0                                                            ; 811f: a9 00       ..
    sta l0016                                                         ; 8121: 85 16       ..
    sta l0008                                                         ; 8123: 85 08       ..
    sta l0009                                                         ; 8125: 85 09       ..
.c8127
    ldy l0016                                                         ; 8127: a4 16       ..
    clc                                                               ; 8129: 18          .
    lda l001e                                                         ; 812a: a5 1e       ..
    adc (l001c),y                                                     ; 812c: 71 1c       q.
    sta l000c                                                         ; 812e: 85 0c       ..
    tax                                                               ; 8130: aa          .
    iny                                                               ; 8131: c8          .
    lda l001f                                                         ; 8132: a5 1f       ..
    adc (l001c),y                                                     ; 8134: 71 1c       q.
    sta l000d                                                         ; 8136: 85 0d       ..
    bcs c816b                                                         ; 8138: b0 31       .1
    cpx l0002                                                         ; 813a: e4 02       ..
    sbc l0003                                                         ; 813c: e5 03       ..
    bcs c8165                                                         ; 813e: b0 25       .%
    ldy #1                                                            ; 8140: a0 01       ..
    lda (l000c),y                                                     ; 8142: b1 0c       ..
    adc l000c                                                         ; 8144: 65 0c       e.
    sta l0010                                                         ; 8146: 85 10       ..
    lda #0                                                            ; 8148: a9 00       ..
    adc l000d                                                         ; 814a: 65 0d       e.
    sta l0011                                                         ; 814c: 85 11       ..
    ldy #3                                                            ; 814e: a0 03       ..
    lda (l0010),y                                                     ; 8150: b1 10       ..
    ldy #6                                                            ; 8152: a0 06       ..
    cmp (l001a),y                                                     ; 8154: d1 1a       ..
    bne c8165                                                         ; 8156: d0 0d       ..
    ldy l000d                                                         ; 8158: a4 0d       ..
    tya                                                               ; 815a: 98          .
    cpx l0008                                                         ; 815b: e4 08       ..
    sbc l0009                                                         ; 815d: e5 09       ..
    bcc c8165                                                         ; 815f: 90 04       ..
    stx l0008                                                         ; 8161: 86 08       ..
    sty l0009                                                         ; 8163: 84 09       ..
.c8165
    inc l0016                                                         ; 8165: e6 16       ..
    inc l0016                                                         ; 8167: e6 16       ..
    bne c8127                                                         ; 8169: d0 bc       ..
.c816b
    ldy #1                                                            ; 816b: a0 01       ..
    lda (l0008),y                                                     ; 816d: b1 08       ..
    tax                                                               ; 816f: aa          .
.loop_c8170
    iny                                                               ; 8170: c8          .
    lda (l0008),y                                                     ; 8171: b1 08       ..
    jsr oswrch                                                        ; 8173: 20 ee ff     ..            ; Write character
    dex                                                               ; 8176: ca          .
    bne loop_c8170                                                    ; 8177: d0 f7       ..
.rts2
    rts                                                               ; 8179: 60          `

.fancy_print_at_yx_with_terminator_a
    sta l0014                                                         ; 817a: 85 14       ..
    stx l0006                                                         ; 817c: 86 06       ..
    sty l0007                                                         ; 817e: 84 07       ..
.print_loop
    inc l0006                                                         ; 8180: e6 06       ..
    bne c8186                                                         ; 8182: d0 02       ..
    inc l0007                                                         ; 8184: e6 07       ..
.c8186
    ldy #0                                                            ; 8186: a0 00       ..
    lda (l0006),y                                                     ; 8188: b1 06       ..
    cmp l0014                                                         ; 818a: c5 14       ..
    beq rts2                                                          ; 818c: f0 eb       ..
    tax                                                               ; 818e: aa          .
    bpl osasci_a_and_loop                                             ; 818f: 10 2b       .+
    ldx #&ff                                                          ; 8191: a2 ff       ..
    and #&7f                                                          ; 8193: 29 7f       ).
    beq c81a7                                                         ; 8195: f0 10       ..
    cmp #&20 ; ' '                                                    ; 8197: c9 20       .
    bcs oswrch_a_space_and_loop                                       ; 8199: b0 1c       ..
    sta l0016                                                         ; 819b: 85 16       ..
.c819d
    inx                                                               ; 819d: e8          .
    lda token_table,x                                                 ; 819e: bd c2 81    ...
    bpl c819d                                                         ; 81a1: 10 fa       ..
    dec l0016                                                         ; 81a3: c6 16       ..
    bne c819d                                                         ; 81a5: d0 f6       ..
.c81a7
    inx                                                               ; 81a7: e8          .
    lda token_table,x                                                 ; 81a8: bd c2 81    ...
    and #&7f                                                          ; 81ab: 29 7f       ).
    jsr oswrch                                                        ; 81ad: 20 ee ff     ..            ; Write character
    lda token_table,x                                                 ; 81b0: bd c2 81    ...
    bpl c81a7                                                         ; 81b3: 10 f2       ..
    bmi print_loop                                                    ; 81b5: 30 c9       0.
.oswrch_a_space_and_loop
    jsr oswrch                                                        ; 81b7: 20 ee ff     ..            ; Write character
    lda #&20 ; ' '                                                    ; 81ba: a9 20       .
.osasci_a_and_loop
    jsr osasci                                                        ; 81bc: 20 e3 ff     ..            ; Write character 32
    jmp print_loop                                                    ; 81bf: 4c 80 81    L..

.token_table
    equs "No", &80+' '                                                ; 81c2: 4e 6f a0    No.
    equs "onl", &80+'y'                                               ; 81c5: 6f 6e 6c... onl
    equs "Bad", &80+' '                                               ; 81c9: 42 61 64... Bad
    equs "variabl", &80+'e'                                           ; 81cd: 76 61 72... var
    equs "Undefined", &80+' '                                         ; 81d5: 55 6e 64... Und
    equs "overflo", &80+'w'                                           ; 81df: 6f 76 65... ove
    equs "fil", &80+'e'                                               ; 81e7: 66 69 6c... fil
    equs "rang", &80+'e'                                              ; 81eb: 72 61 6e... ran
    equs "ope", &80+'n'                                               ; 81f0: 6f 70 65... ope
    equs "Field", &80+' '                                             ; 81f4: 46 69 65... Fie
    equs "tex", &80+'t'                                               ; 81fa: 74 65 78... tex
    equs "Not", &80+' '                                               ; 81fe: 4e 6f 74... Not
    equs "numbe", &80+'r'                                             ; 8202: 6e 75 6d... num
    equs "********", &80+'*'                                          ; 8208: 2a 2a 2a... ***
    equs "Escap", &80+'e'                                             ; 8211: 45 73 63... Esc
    equs "foun", &80+'d'                                              ; 8217: 66 6f 75... fou
    equs "eplac", &80+'e'                                             ; 821c: 65 70 6c... epl
    equs "Insert", &80+' '                                            ; 8222: 49 6e 73... Ins

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
    jsr zero_misc_values                                              ; 8242: 20 93 a4     ..
; Set output stream to saved value at &100 in I/O processor
    lda #1                                                            ; 8245: a9 01       ..
    sta l003f                                                         ; 8247: 85 3f       .?
    jsr read_io_memory_at_l003e_and_advance                           ; 8249: 20 82 84     ..
    tax                                                               ; 824c: aa          .
    lda #osbyte_select_output_stream                                  ; 824d: a9 03       ..
    jsr osbyte                                                        ; 824f: 20 f4 ff     ..            ; Select output stream based on X
; Branch if b6 of original last break type clear
    pla                                                               ; 8252: 68          h
    rol a                                                             ; 8253: 2a          *
    bpl real_language_entry                                           ; 8254: 10 51       .Q
; Branch if b5 of original last break type clear
    rol a                                                             ; 8256: 2a          *
    bpl c8265                                                         ; 8257: 10 0c       ..
    jsr set_yx_to_41a                                                 ; 8259: 20 84 91     ..
    jsr fancy_print_error_at_yx                                       ; 825c: 20 e9 80     ..
    jsr sub_c90dd                                                     ; 825f: 20 dd 90     ..
    jmp language_entry_common                                         ; 8262: 4c 44 83    LD.

.c8265
    lda l0411                                                         ; 8265: ad 11 04    ...
    beq c82a4                                                         ; 8268: f0 3a       .:
    ldx l0410                                                         ; 826a: ae 10 04    ...
    lda oshwm_low2,x                                                  ; 826d: bd 0a 04    ...
    sta oshwm_low3,x                                                  ; 8270: 9d 05 04    ...
    sta l000e                                                         ; 8273: 85 0e       ..
    lda oshwm_high2,x                                                 ; 8275: bd 0d 04    ...
    sta oshwm_high3,x                                                 ; 8278: 9d 08 04    ...
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
    sta oshwm_low2,x                                                  ; 829c: 9d 0a 04    ...
    lda l000f                                                         ; 829f: a5 0f       ..
    sta oshwm_high2,x                                                 ; 82a1: 9d 0d 04    ...
.c82a4
    jmp language_entry_common                                         ; 82a4: 4c 44 83    LD.

; Read the machine type but simplifying so X=0 for BBC B/B+, X=1 for Electron and X>=3
; is as returned by OSBYTE 0.
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
    bcs simplified_machine_type_in_x                                  ; 82b0: b0 0f       ..
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
    beq simplified_machine_type_in_x                                  ; 82bd: f0 02       ..
    ldx #0                                                            ; 82bf: a2 00       ..
.simplified_machine_type_in_x
    stx simplified_machine_type                                       ; 82c1: 8e 17 04    ...
    lda #osbyte_read_high_order_address                               ; 82c4: a9 82       ..
    jsr osbyte                                                        ; 82c6: 20 f4 ff     ..            ; Read the filing system 'machine high order address'
    stx machine_high_order_address_low                                ; 82c9: 8e 00 04    ...            ; X and Y contain the machine high order address (low, high)
    sty machine_high_order_address_high                               ; 82cc: 8c 01 04    ...
    lda #osbyte_read_oshwm                                            ; 82cf: a9 83       ..
    jsr osbyte                                                        ; 82d1: 20 f4 ff     ..            ; Read top of operating system RAM address (OSHWM)
    stx oshwm_low_zp                                                  ; 82d4: 86 04       ..             ; X and Y contain the address of OSHWM (low, high)
    sty oshwm_high_zp                                                 ; 82d6: 84 05       ..
    stx oshwm_low1                                                    ; 82d8: 8e 04 04    ...
    sty oshwm_high1                                                   ; 82db: 8c 07 04    ...
    stx oshwm_low2                                                    ; 82de: 8e 0a 04    ...
    sty oshwm_high2                                                   ; 82e1: 8c 0d 04    ...
    stx oshwm_low3                                                    ; 82e4: 8e 05 04    ...
    sty oshwm_high3                                                   ; 82e7: 8c 08 04    ...
    jsr set_himem                                                     ; 82ea: 20 5d 85     ].
    ldx #0                                                            ; 82ed: a2 00       ..
    stx l0418                                                         ; 82ef: 8e 18 04    ...
    jsr zero_misc_values                                              ; 82f2: 20 93 a4     ..
; Read the command tail pointed to by host &F2? Looking for a ' @ ' suffix? TODO: Did
; the service handler tweak this? How do we know what 'Y' is? How do we know we didn't
; enter via language entry rather than a * command? Is the command tail set up by the
; OS here?
    lda #&f2                                                          ; 82f5: a9 f2       ..
    sta l003e                                                         ; 82f7: 85 3e       .>
    jsr read_io_memory_at_l003e_and_advance                           ; 82f9: 20 82 84     ..
    pha                                                               ; 82fc: 48          H
    jsr read_io_memory_at_l003e_and_advance                           ; 82fd: 20 82 84     ..
    sta l003f                                                         ; 8300: 85 3f       .?
    pla                                                               ; 8302: 68          h
    sta l003e                                                         ; 8303: 85 3e       .>
.loop_c8305
    jsr read_io_memory_at_l003e_and_advance                           ; 8305: 20 82 84     ..
    cmp #&20 ; ' '                                                    ; 8308: c9 20       .
    bne c831a                                                         ; 830a: d0 0e       ..
    jsr read_io_memory_at_l003e_and_advance                           ; 830c: 20 82 84     ..
    cmp #&40 ; '@'                                                    ; 830f: c9 40       .@
    bne c831a                                                         ; 8311: d0 07       ..
    jsr read_io_memory_at_l003e_and_advance                           ; 8313: 20 82 84     ..
    cmp #&0d                                                          ; 8316: c9 0d       ..
    beq language_entry_with_at_symbol                                 ; 8318: f0 0a       ..
.c831a
    cmp #&0d                                                          ; 831a: c9 0d       ..
    bne loop_c8305                                                    ; 831c: d0 e7       ..
    jsr set_up_for_cold_start                                         ; 831e: 20 0a 86     ..
    jmp language_entry_common                                         ; 8321: 4c 44 83    LD.

.language_entry_with_at_symbol
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
.language_entry_common
    ldx #&ff                                                          ; 8344: a2 ff       ..
    txs                                                               ; 8346: 9a          .
    ldx #1                                                            ; 8347: a2 01       ..
    stx l0416                                                         ; 8349: 8e 16 04    ...
.user_interface_command_line_loop
    lda #&25 ; '%'                                                    ; 834c: a9 25       .%
    jsr oswrch                                                        ; 834e: 20 ee ff     ..            ; Write character 37
    jsr probably_read_input_line_to_l051a                             ; 8351: 20 94 84     ..
    beq user_interface_command_line_loop                              ; 8354: f0 f6       ..
    cmp #&2a ; '*'                                                    ; 8356: c9 2a       .*
    bne c8364                                                         ; 8358: d0 0a       ..
    ldx #<(input_buffer)                                              ; 835a: a2 1a       ..
    ldy #>(input_buffer)                                              ; 835c: a0 05       ..
    jsr oscli                                                         ; 835e: 20 f7 ff     ..
    jmp user_interface_command_line_loop                              ; 8361: 4c 4c 83    LL.

.c8364
    lda #<command_table                                               ; 8364: a9 40       .@
    sta l0008                                                         ; 8366: 85 08       ..
    lda #>command_table                                               ; 8368: a9 84       ..
    sta l0009                                                         ; 836a: 85 09       ..
.c836c
    sty l0015                                                         ; 836c: 84 15       ..
    lda command_table_entry_lengths,y                                 ; 836e: b9 66 84    .f.
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
    adc command_table_entry_lengths,y                                 ; 8392: 79 66 84    yf.
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
    lda command_jump_table_low,x                                      ; 83a4: bd 70 84    .p.
    sta l0008                                                         ; 83a7: 85 08       ..
    lda command_jump_table_high,x                                     ; 83a9: bd 79 84    .y.
    sta l0009                                                         ; 83ac: 85 09       ..
    jsr jmp_indirect_via_l0008                                        ; 83ae: 20 e2 87     ..
    jmp user_interface_command_line_loop                              ; 83b1: 4c 4c 83    LL.

.c83b4
    jsr sub_c999a                                                     ; 83b4: 20 9a 99     ..
    bcs command_run_handler                                           ; 83b7: b0 0b       ..
.c83b9
    brk                                                               ; 83b9: 00          .

    equb 1                                                            ; 83ba: 01          .              ; error code
    equb 128 + 2                                                      ; 83bb: 82          .              ; "Bad " (token 2)
    equs "command"                                                    ; 83bc: 63 6f 6d... com
    equb 0                                                            ; 83c3: 00          .

.command_run_handler
    jsr command_load_handler                                          ; 83c4: 20 7a 85     z.
    ldy l0017                                                         ; 83c7: a4 17       ..
    dey                                                               ; 83c9: 88          .
    ldx #&ff                                                          ; 83ca: a2 ff       ..
.loop_c83cc
    inx                                                               ; 83cc: e8          .
.c83cd
    iny                                                               ; 83cd: c8          .
    lda input_buffer,y                                                ; 83ce: b9 1a 05    ...
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
.command_go_handler
    lda l0411                                                         ; 83e2: ad 11 04    ...
    beq c8412                                                         ; 83e5: f0 2b       .+
    lda himem_low                                                     ; 83e7: ad 02 04    ...
    sta l062e                                                         ; 83ea: 8d 2e 06    ...
    lda himem_high                                                    ; 83ed: ad 03 04    ...
    sta l062f                                                         ; 83f0: 8d 2f 06    ./.
    ldx l0411                                                         ; 83f3: ae 11 04    ...
    lda oshwm_low1,x                                                  ; 83f6: bd 04 04    ...
    sta l001e                                                         ; 83f9: 85 1e       ..
    lda oshwm_high1,x                                                 ; 83fb: bd 07 04    ...
    sta l001f                                                         ; 83fe: 85 1f       ..
    lda oshwm_low2,x                                                  ; 8400: bd 0a 04    ...
    sta l0018                                                         ; 8403: 85 18       ..
    lda oshwm_high2,x                                                 ; 8405: bd 0d 04    ...
    sta l0019                                                         ; 8408: 85 19       ..
    ldx #0                                                            ; 840a: a2 00       ..
    stx l0659                                                         ; 840c: 8e 59 06    .Y.
    jmp interpreter_start                                             ; 840f: 4c a3 87    L..

.c8412
    brk                                                               ; 8412: 00          .

    equb 3                                                            ; 8413: 03          .              ; error code
    equb 128 + 0                                                      ; 8414: 80          .              ; "No " (token 0)
    equs "code"                                                       ; 8415: 63 6f 64... cod
    equb 0                                                            ; 8419: 00          .

.command_save_handler
    ldy l0411                                                         ; 841a: ac 11 04    ...
    beq c8412                                                         ; 841d: f0 f3       ..
    lda oshwm_low1,y                                                  ; 841f: b9 04 04    ...
    sta l0624                                                         ; 8422: 8d 24 06    .$.
    lda oshwm_high1,y                                                 ; 8425: b9 07 04    ...
    sta l0625                                                         ; 8428: 8d 25 06    .%.
    ldx oshwm_low2,y                                                  ; 842b: be 0a 04    ...
    lda oshwm_high2,y                                                 ; 842e: b9 0d 04    ...
    tay                                                               ; 8431: a8          .
.sub_c8432
    stx l0628                                                         ; 8432: 8e 28 06    .(.
    sty l0629                                                         ; 8435: 8c 29 06    .).
    lda #0                                                            ; 8438: a9 00       ..
    jsr sub_c9189                                                     ; 843a: 20 89 91     ..
    jmp osfile                                                        ; 843d: 4c dd ff    L..

.command_table
    equs "CLOSECOMPILEEDITGOLOADMODERUNSAVETRACE"                     ; 8440: 43 4c 4f... CLO
.command_table_entry_lengths
    equb 5, 7, 4, 2, 4, 4, 3, 4, 5, 0                                 ; 8466: 05 07 04... ...
.command_jump_table_low
    equb <command_close_handler                                       ; 8470: eb          .
    equb <command_compile_handler                                     ; 8471: 88          .
    equb <command_edit_handler                                        ; 8472: 05          .
    equb <command_go_handler                                          ; 8473: e2          .
    equb <command_load_handler                                        ; 8474: 7a          z
    equb <command_mode_handler                                        ; 8475: 08          .
    equb <command_run_handler                                         ; 8476: c4          .
    equb <command_save_handler                                        ; 8477: 1a          .
    equb <command_trace_handler                                       ; 8478: ff          .
.command_jump_table_high
    equb >command_close_handler                                       ; 8479: 85          .
    equb >command_compile_handler                                     ; 847a: 86          .
    equb >command_edit_handler                                        ; 847b: af          .
    equb >command_go_handler                                          ; 847c: 83          .
    equb >command_load_handler                                        ; 847d: 85          .
    equb >command_mode_handler                                        ; 847e: 85          .
    equb >command_run_handler                                         ; 847f: 83          .
    equb >command_save_handler                                        ; 8480: 84          .
    equb >command_trace_handler                                       ; 8481: 84          .

.read_io_memory_at_l003e_and_advance
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

.probably_read_input_line_to_l051a
    jsr c996e                                                         ; 8494: 20 6e 99     n.
.c8497
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
    sta input_buffer,y                                                ; 84a6: 99 1a 05    ...
    ldy #0                                                            ; 84a9: a0 00       ..
    jsr sub_c84b3                                                     ; 84ab: 20 b3 84     ..
    lda (l000c),y                                                     ; 84ae: b1 0c       ..
    cmp #&0d                                                          ; 84b0: c9 0d       ..
    rts                                                               ; 84b2: 60          `

.sub_c84b3
    lda #<input_buffer                                                ; 84b3: a9 1a       ..
    sta l000c                                                         ; 84b5: 85 0c       ..
    lda #>input_buffer                                                ; 84b7: a9 05       ..
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

.c84e3
    lda (l000c),y                                                     ; 84e3: b1 0c       ..
    sta l041a,y                                                       ; 84e5: 99 1a 04    ...
    iny                                                               ; 84e8: c8          .
    bne c84e3                                                         ; 84e9: d0 f8       ..
    lda #1                                                            ; 84eb: a9 01       ..
    jsr sub_c9daa                                                     ; 84ed: 20 aa 9d     ..
    ldy l0016                                                         ; 84f0: a4 16       ..
    lda l0419,y                                                       ; 84f2: b9 19 04    ...
    cmp #&0d                                                          ; 84f5: c9 0d       ..
    bne c84fc                                                         ; 84f7: d0 03       ..
    lda l006a                                                         ; 84f9: a5 6a       .j
    rts                                                               ; 84fb: 60          `

.c84fc
    jmp c83b9                                                         ; 84fc: 4c b9 83    L..

.command_trace_handler
    jsr c84e3                                                         ; 84ff: 20 e3 84     ..
    and #3                                                            ; 8502: 29 03       ).
    sta l0418                                                         ; 8504: 8d 18 04    ...
    rts                                                               ; 8507: 60          `

.command_mode_handler
    jsr c84e3                                                         ; 8508: 20 e3 84     ..
    tax                                                               ; 850b: aa          .
    ldy l0411                                                         ; 850c: ac 11 04    ...
    bne c8514                                                         ; 850f: d0 03       ..
    ldy l0410                                                         ; 8511: ac 10 04    ...
.c8514
    lda oshwm_low2,y                                                  ; 8514: b9 0a 04    ...
    sta l062c                                                         ; 8517: 8d 2c 06    .,.
    lda oshwm_high2,y                                                 ; 851a: b9 0d 04    ...
    sta l062d                                                         ; 851d: 8d 2d 06    .-.
.sub_c8520
    stx l0014                                                         ; 8520: 86 14       ..
    lda machine_high_order_address_low                                ; 8522: ad 00 04    ...
    beq c8535                                                         ; 8525: f0 0e       ..
    lda #osbyte_read_himem_for_mode                                   ; 8527: a9 85       ..
    jsr osbyte                                                        ; 8529: 20 f4 ff     ..            ; Read top of user memory for a given screen mode X
    cpx l062c                                                         ; 852c: ec 2c 06    .,.            ; X and Y contain the address (low, high)
    tya                                                               ; 852f: 98          .
    sbc l062d                                                         ; 8530: ed 2d 06    .-.
    bcc c8569                                                         ; 8533: 90 34       .4
.c8535
    lda #&16                                                          ; 8535: a9 16       ..
    jsr oswrch                                                        ; 8537: 20 ee ff     ..            ; Write character 22
    lda l0014                                                         ; 853a: a5 14       ..
    jsr oswrch                                                        ; 853c: 20 ee ff     ..            ; Write character
    lda simplified_machine_type                                       ; 853f: ad 17 04    ...
    cmp #1                                                            ; 8542: c9 01       ..
    bne set_himem                                                     ; 8544: d0 17       ..
    lda l0014                                                         ; 8546: a5 14       ..
    and #7                                                            ; 8548: 29 07       ).
    cmp #7                                                            ; 854a: c9 07       ..
    bne set_himem                                                     ; 854c: d0 0f       ..
    jsr fancy_print_nop_terminated_inline                             ; 854e: 20 84 b2     ..
    equs &1c, 0, &18, "'", &10                                        ; 8551: 1c 00 18... ...

    nop                                                               ; 8556: ea          .
    ldx #0                                                            ; 8557: a2 00       ..
    ldy #&74 ; 't'                                                    ; 8559: a0 74       .t
    bne set_himem_to_yx                                               ; 855b: d0 05       ..
.set_himem
    lda #osbyte_read_himem                                            ; 855d: a9 84       ..
    jsr osbyte                                                        ; 855f: 20 f4 ff     ..            ; Read top of user memory (HIMEM)
.set_himem_to_yx
    stx himem_low                                                     ; 8562: 8e 02 04    ...            ; X and Y contain the address of HIMEM (low, high)
    sty himem_high                                                    ; 8565: 8c 03 04    ...
    rts                                                               ; 8568: 60          `

.c8569
    brk                                                               ; 8569: 00          .

    equb 2                                                            ; 856a: 02          .              ; error code
    equb 128 + 2                                                      ; 856b: 82          .              ; "Bad " (token 2)
    equs "mode"                                                       ; 856c: 6d 6f 64... mod
    equb 0                                                            ; 8570: 00          .

.sub_c8571
    jsr sub_c8588                                                     ; 8571: 20 88 85     ..
.c8574
    ldx #1                                                            ; 8574: a2 01       ..
.c8576
    ldy #0                                                            ; 8576: a0 00       ..
    beq c8581                                                         ; 8578: f0 07       ..
.command_load_handler
    jsr sub_c8588                                                     ; 857a: 20 88 85     ..
    ldx #0                                                            ; 857d: a2 00       ..
    ldy #1                                                            ; 857f: a0 01       ..
.c8581
    stx l0410                                                         ; 8581: 8e 10 04    ...
    sty l0411                                                         ; 8584: 8c 11 04    ...
    rts                                                               ; 8587: 60          `

.sub_c8588
    jsr set_yx_to_himem_minus_2                                       ; 8588: 20 fc 85     ..
    lda oshwm_low_zp                                                  ; 858b: a5 04       ..
    sta l0008                                                         ; 858d: 85 08       ..
    lda oshwm_high_zp                                                 ; 858f: a5 05       ..
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

.command_close_handler
    lda #osfind_close                                                 ; 85eb: a9 00       ..
    tay                                                               ; 85ed: a8          .
    jmp osfind                                                        ; 85ee: 4c ce ff    L..            ; Close all files (Y=0)

.sub_c85f1
    lda #0                                                            ; 85f1: a9 00       ..
    ldx #&0f                                                          ; 85f3: a2 0f       ..
.loop_c85f5
    sta l061c,x                                                       ; 85f5: 9d 1c 06    ...
    dex                                                               ; 85f8: ca          .
    bpl loop_c85f5                                                    ; 85f9: 10 fa       ..
    rts                                                               ; 85fb: 60          `

.set_yx_to_himem_minus_2
    sec                                                               ; 85fc: 38          8
    lda himem_low                                                     ; 85fd: ad 02 04    ...
    sbc #2                                                            ; 8600: e9 02       ..
    tax                                                               ; 8602: aa          .
    lda himem_high                                                    ; 8603: ad 03 04    ...
    sbc #0                                                            ; 8606: e9 00       ..
    tay                                                               ; 8608: a8          .
    rts                                                               ; 8609: 60          `

.set_up_for_cold_start
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
    cpx oshwm_low_zp                                                  ; 863f: e4 04       ..
    lda l040e                                                         ; 8641: ad 0e 04    ...
    sta l0413                                                         ; 8644: 8d 13 04    ...
    sbc oshwm_high_zp                                                 ; 8647: e5 05       ..
    bcc c8655                                                         ; 8649: 90 0a       ..
    ldy #0                                                            ; 864b: a0 00       ..
    lda (oshwm_low_zp),y                                              ; 864d: b1 04       ..
    sta l0414                                                         ; 864f: 8d 14 04    ...
    inc l0415                                                         ; 8652: ee 15 04    ...
.c8655
    ldx #0                                                            ; 8655: a2 00       ..
    jmp c8576                                                         ; 8657: 4c 76 85    Lv.

.sub_c865a
    lda l0415                                                         ; 865a: ad 15 04    ...
    beq c8683                                                         ; 865d: f0 24       .$
    ldy #0                                                            ; 865f: a0 00       ..
    sty l0415                                                         ; 8661: 8c 15 04    ...
    lda l0414                                                         ; 8664: ad 14 04    ...
    sta (oshwm_low_zp),y                                              ; 8667: 91 04       ..
    jsr set_yx_to_himem_minus_2                                       ; 8669: 20 fc 85     ..
    cpx l0412                                                         ; 866c: ec 12 04    ...
    sbc l0413                                                         ; 866f: ed 13 04    ...
    bcc c867a                                                         ; 8672: 90 06       ..
    ldx l0412                                                         ; 8674: ae 12 04    ...
    ldy l0413                                                         ; 8677: ac 13 04    ...
.c867a
    stx l040b                                                         ; 867a: 8e 0b 04    ...
    sty l040e                                                         ; 867d: 8c 0e 04    ...
    jmp c8574                                                         ; 8680: 4c 74 85    Lt.

.c8683
    brk                                                               ; 8683: 00          .

    equb 4                                                            ; 8684: 04          .              ; error code
    equb 128 + 0                                                      ; 8685: 80          .              ; "No " (token 0)
    equb 128 + 10                                                     ; 8686: 8a          .              ; "text" (token 10)
    equb 0                                                            ; 8687: 00          .

.command_compile_handler
    ldx #0                                                            ; 8688: a2 00       ..
    lda (l000c),y                                                     ; 868a: b1 0c       ..
    cmp #&3e ; '>'                                                    ; 868c: c9 3e       .>
    beq c8698                                                         ; 868e: f0 08       ..
    cmp #&7b ; '{'                                                    ; 8690: c9 7b       .{
    beq c8698                                                         ; 8692: f0 04       ..
    cmp #&0d                                                          ; 8694: c9 0d       ..
    bne c869d                                                         ; 8696: d0 05       ..
.c8698
    ldx l0410                                                         ; 8698: ae 10 04    ...
    beq c8683                                                         ; 869b: f0 e6       ..
.c869d
    stx l0410                                                         ; 869d: 8e 10 04    ...
    lda oshwm_low2,x                                                  ; 86a0: bd 0a 04    ...
    sta l0018                                                         ; 86a3: 85 18       ..
    sta l062c                                                         ; 86a5: 8d 2c 06    .,.
    lda oshwm_high2,x                                                 ; 86a8: bd 0d 04    ...
    sta l0019                                                         ; 86ab: 85 19       ..
    sta l062d                                                         ; 86ad: 8d 2d 06    .-.
    sec                                                               ; 86b0: 38          8
    lda himem_low                                                     ; 86b1: ad 02 04    ...
    sbc #<interpreter_size                                            ; 86b4: e9 af       ..
    sta l062e                                                         ; 86b6: 8d 2e 06    ...
    lda himem_high                                                    ; 86b9: ad 03 04    ...
    sbc #>interpreter_size                                            ; 86bc: e9 1f       ..
    sta l062f                                                         ; 86be: 8d 2f 06    ./.
    jsr sub_c9814                                                     ; 86c1: 20 14 98     ..
    lda #<interpreter_start                                           ; 86c4: a9 a3       ..
    sta l000a                                                         ; 86c6: 85 0a       ..
    lda #>interpreter_start                                           ; 86c8: a9 87       ..
    sta l000b                                                         ; 86ca: 85 0b       ..
    sec                                                               ; 86cc: 38          8
    lda l062e                                                         ; 86cd: ad 2e 06    ...
    sta l000e                                                         ; 86d0: 85 0e       ..
    sbc #<interpreter_start                                           ; 86d2: e9 a3       ..
    sta l004a                                                         ; 86d4: 85 4a       .J
    lda l062f                                                         ; 86d6: ad 2f 06    ./.
    sta l000f                                                         ; 86d9: 85 0f       ..
    sbc #>interpreter_start                                           ; 86db: e9 87       ..
    sta l004b                                                         ; 86dd: 85 4b       .K
    ldx #<interpreter_size                                            ; 86df: a2 af       ..
    ldy #>interpreter_size                                            ; 86e1: a0 1f       ..
    jsr copyish_from_l000a_to_l000e                                   ; 86e3: 20 2b b4     +.
; TODO: It looks like we now patch the relocated copy of the interpreter to fix up
; absolute addresses.
.relocate_loop
    ldy #0                                                            ; 86e6: a0 00       ..
    lda (l000e),y                                                     ; 86e8: b1 0e       ..
    beq c873d                                                         ; 86ea: f0 51       .Q
    cmp #&20 ; ' '                                                    ; 86ec: c9 20       .
    beq relocate_absolute_operand                                     ; 86ee: f0 1e       ..
    cmp #&60 ; '`'                                                    ; 86f0: c9 60       .`
    beq step_by_0_bytes                                               ; 86f2: f0 3c       .<
    cmp #&ff                                                          ; 86f4: c9 ff       ..
    beq c8745                                                         ; 86f6: f0 4d       .M
    and #&1f                                                          ; 86f8: 29 1f       ).
    cmp #&19                                                          ; 86fa: c9 19       ..
    beq relocate_absolute_operand                                     ; 86fc: f0 10       ..
    and #&0f                                                          ; 86fe: 29 0f       ).
    cmp #&0c                                                          ; 8700: c9 0c       ..
    bcs relocate_absolute_operand                                     ; 8702: b0 0a       ..
    cmp #8                                                            ; 8704: c9 08       ..
    beq step_by_0_bytes                                               ; 8706: f0 28       .(
    cmp #&0a                                                          ; 8708: c9 0a       ..
    beq step_by_0_bytes                                               ; 870a: f0 24       .$
    bne step_by_1_byte                                                ; 870c: d0 1e       ..
.relocate_absolute_operand
    ldy #2                                                            ; 870e: a0 02       ..
    lda (l000e),y                                                     ; 8710: b1 0e       ..
    cmp #&80                                                          ; 8712: c9 80       ..
    bcc step_by_2_bytes                                               ; 8714: 90 12       ..
    cmp #&c0                                                          ; 8716: c9 c0       ..
    bcs step_by_2_bytes                                               ; 8718: b0 0e       ..
    dey                                                               ; 871a: 88          .
    lda (l000e),y                                                     ; 871b: b1 0e       ..
    adc l004a                                                         ; 871d: 65 4a       eJ
    sta (l000e),y                                                     ; 871f: 91 0e       ..
    iny                                                               ; 8721: c8          .
    lda (l000e),y                                                     ; 8722: b1 0e       ..
    adc l004b                                                         ; 8724: 65 4b       eK
    sta (l000e),y                                                     ; 8726: 91 0e       ..
.step_by_2_bytes
    lda #2                                                            ; 8728: a9 02       ..
    bne step_by_a_bytes                                               ; 872a: d0 06       ..
.step_by_1_byte
    lda #1                                                            ; 872c: a9 01       ..
    bne step_by_a_bytes                                               ; 872e: d0 02       ..
.step_by_0_bytes
    lda #0                                                            ; 8730: a9 00       ..
.step_by_a_bytes
    sec                                                               ; 8732: 38          8
    adc l000e                                                         ; 8733: 65 0e       e.
    sta l000e                                                         ; 8735: 85 0e       ..
    bcc relocate_loop                                                 ; 8737: 90 ad       ..
    inc l000f                                                         ; 8739: e6 0f       ..
    bne relocate_loop                                                 ; 873b: d0 a9       ..             ; TODO: always branch?
.c873d
    iny                                                               ; 873d: c8          .
    lda (l000e),y                                                     ; 873e: b1 0e       ..
    bne c873d                                                         ; 8740: d0 fb       ..
    tya                                                               ; 8742: 98          .
    bne step_by_a_bytes                                               ; 8743: d0 ed       ..
.c8745
    inc l000e                                                         ; 8745: e6 0e       ..
    bne c874b                                                         ; 8747: d0 02       ..
    inc l000f                                                         ; 8749: e6 0f       ..
.c874b
    clc                                                               ; 874b: 18          .
    lda #<bytecode_jump_table_high                                    ; 874c: a9 0c       ..
    adc l004a                                                         ; 874e: 65 4a       eJ
    sta l000c                                                         ; 8750: 85 0c       ..
    lda #>bytecode_jump_table_high                                    ; 8752: a9 a6       ..
    adc l004b                                                         ; 8754: 65 4b       eK
    sta l000d                                                         ; 8756: 85 0d       ..
    ldx #2                                                            ; 8758: a2 02       ..
    ldy #0                                                            ; 875a: a0 00       ..
.c875c
    clc                                                               ; 875c: 18          .
    lda (l000e),y                                                     ; 875d: b1 0e       ..
    adc l004a                                                         ; 875f: 65 4a       eJ
    sta (l000e),y                                                     ; 8761: 91 0e       ..
    lda (l000c),y                                                     ; 8763: b1 0c       ..
    adc l004b                                                         ; 8765: 65 4b       eK
    sta (l000c),y                                                     ; 8767: 91 0c       ..
    iny                                                               ; 8769: c8          .
    bne c8770                                                         ; 876a: d0 04       ..
    inc l000f                                                         ; 876c: e6 0f       ..
    inc l000d                                                         ; 876e: e6 0d       ..
.c8770
    cpy #5                                                            ; 8770: c0 05       ..
    bne c875c                                                         ; 8772: d0 e8       ..
    dex                                                               ; 8774: ca          .
    bne c875c                                                         ; 8775: d0 e5       ..
    ldy #0                                                            ; 8777: a0 00       ..
    sty l0411                                                         ; 8779: 8c 11 04    ...
    lda #&0d                                                          ; 877c: a9 0d       ..
    sta (l0018),y                                                     ; 877e: 91 18       ..
    iny                                                               ; 8780: c8          .
    sty l0659                                                         ; 8781: 8c 59 06    .Y.
    lda #4                                                            ; 8784: a9 04       ..
    sta (l0018),y                                                     ; 8786: 91 18       ..
    lda #<compiler_bytecode_start                                     ; 8788: a9 70       .p
    sta l001e                                                         ; 878a: 85 1e       ..
    lda #>compiler_bytecode_start                                     ; 878c: a9 86       ..
    sta l001f                                                         ; 878e: 85 1f       ..
    ldx #<(fx163_192_0)                                               ; 8790: a2 97       ..
    ldy #>(fx163_192_0)                                               ; 8792: a0 87       ..
    jmp oscli                                                         ; 8794: 4c f7 ff    L..

.fx163_192_0
    equs "fx163,192,0"                                                ; 8797: 66 78 31... fx1
    equb &0d                                                          ; 87a2: 0d          .

.interpreter_start
    ldx #0                                                            ; 87a3: a2 00       ..
    stx l0416                                                         ; 87a5: 8e 16 04    ...
    ldx #0                                                            ; 87a8: a2 00       ..
    stx line_number_low                                               ; 87aa: 8e 5b 06    .[.
    stx line_number_high                                              ; 87ad: 8e 5c 06    .\.
    inx                                                               ; 87b0: e8          .
    stx l065a                                                         ; 87b1: 8e 5a 06    .Z.
    lda l001e                                                         ; 87b4: a5 1e       ..
    sta l0002                                                         ; 87b6: 85 02       ..
    lda l001f                                                         ; 87b8: a5 1f       ..
    sta l0003                                                         ; 87ba: 85 03       ..
    bne interpreter_loop_no_advance                                   ; 87bc: d0 09       ..
.interpreter_loop_advance_by_a
    clc                                                               ; 87be: 18          .
    adc l0002                                                         ; 87bf: 65 02       e.
    sta l0002                                                         ; 87c1: 85 02       ..
    bcc interpreter_loop_no_advance                                   ; 87c3: 90 02       ..
    inc l0003                                                         ; 87c5: e6 03       ..
.interpreter_loop_no_advance
    ldy #0                                                            ; 87c7: a0 00       ..
    lda (l0002),y                                                     ; 87c9: b1 02       ..
    tax                                                               ; 87cb: aa          .
    lda bytecode_jump_table_low,x                                     ; 87cc: bd 07 a5    ...
    sta l0008                                                         ; 87cf: 85 08       ..
    lda bytecode_jump_table_high,x                                    ; 87d1: bd 0c a6    ...
    sta l0009                                                         ; 87d4: 85 09       ..
    jsr jmp_indirect_via_l0008                                        ; 87d6: 20 e2 87     ..
    bne interpreter_loop_advance_by_a                                 ; 87d9: d0 e3       ..
    bit escape_flag                                                   ; 87db: 24 ff       $.
    bpl interpreter_loop_no_advance                                   ; 87dd: 10 e8       ..
    jmp escape                                                        ; 87df: 4c 76 99    Lv.

.jmp_indirect_via_l0008
    jmp (l0008)                                                       ; 87e2: 6c 08 00    l..

.sub_c87e5
    sta l004c                                                         ; 87e5: 85 4c       .L
.sub_c87e7
    ldy #1                                                            ; 87e7: a0 01       ..
    lda (l0002),y                                                     ; 87e9: b1 02       ..
.sub_c87eb
    ldx l0020                                                         ; 87eb: a6 20       .
    clc                                                               ; 87ed: 18          .
    adc l0021,x                                                       ; 87ee: 75 21       u!
    sta l0008                                                         ; 87f0: 85 08       ..
    lda #0                                                            ; 87f2: a9 00       ..
    adc l0029,x                                                       ; 87f4: 75 29       u)
    sta l0009                                                         ; 87f6: 85 09       ..
    rts                                                               ; 87f8: 60          `

.sub_c87f9
    sta l004c                                                         ; 87f9: 85 4c       .L
.sub_c87fb
    ldx l0020                                                         ; 87fb: a6 20       .
    clc                                                               ; 87fd: 18          .
    ldy #1                                                            ; 87fe: a0 01       ..
    lda l0021,x                                                       ; 8800: b5 21       .!
    adc (l0002),y                                                     ; 8802: 71 02       q.
    sta l0008                                                         ; 8804: 85 08       ..
    iny                                                               ; 8806: c8          .
    lda l0029,x                                                       ; 8807: b5 29       .)
    adc (l0002),y                                                     ; 8809: 71 02       q.
    sta l0009                                                         ; 880b: 85 09       ..
    rts                                                               ; 880d: 60          `

.bytecode_opcode_32_handler
    jsr sub_c87fb                                                     ; 880e: 20 fb 87     ..
    ldx #3                                                            ; 8811: a2 03       ..
    bne c8821                                                         ; 8813: d0 0c       ..
.bytecode_opcode_20_handler
    jsr sub_c9ae2                                                     ; 8815: 20 e2 9a     ..
    ldx #1                                                            ; 8818: a2 01       ..
    bne c8821                                                         ; 881a: d0 05       ..
.bytecode_opcode_08_handler
    jsr sub_c87e7                                                     ; 881c: 20 e7 87     ..
    ldx #2                                                            ; 881f: a2 02       ..
.c8821
    ldy #0                                                            ; 8821: a0 00       ..
    lda (l0008),y                                                     ; 8823: b1 08       ..
    iny                                                               ; 8825: c8          .
    sty l004c                                                         ; 8826: 84 4c       .L
    cmp (l0008),y                                                     ; 8828: d1 08       ..
    bne c8889                                                         ; 882a: d0 5d       .]
    cmp #0                                                            ; 882c: c9 00       ..
    bne c886b                                                         ; 882e: d0 3b       .;
.c8830
    brk                                                               ; 8830: 00          .

    equb &0c                                                          ; 8831: 0c          .              ; error code
    equs "Pointer"                                                    ; 8832: 50 6f 69... Poi
    equb 0                                                            ; 8839: 00          .

.bytecode_opcode_33_handler
.bytecode_opcode_34_handler
.bytecode_opcode_35_handler
.bytecode_opcode_36_handler
.bytecode_opcode_37_handler
    lda something_else_table - 51,x                                   ; 883a: bd 01 a7    ...
    jsr sub_c87f9                                                     ; 883d: 20 f9 87     ..
    ldx #3                                                            ; 8840: a2 03       ..
    bne c886b                                                         ; 8842: d0 27       .'
.bytecode_opcode_18_handler
.bytecode_opcode_19_handler
.bytecode_opcode_1a_handler
.bytecode_opcode_1b_handler
.bytecode_opcode_1c_handler
    lda la71c,x                                                       ; 8844: bd 1c a7    ...
    sta l004c                                                         ; 8847: 85 4c       .L
    jsr sub_c9ae2                                                     ; 8849: 20 e2 9a     ..
    ldx #1                                                            ; 884c: a2 01       ..
    bne c886b                                                         ; 884e: d0 1b       ..
.bytecode_opcode_00_handler
.bytecode_opcode_01_handler
.bytecode_opcode_02_handler
.bytecode_opcode_03_handler
    lda something_else_table,x                                        ; 8850: bd 34 a7    .4.
    sta l004c                                                         ; 8853: 85 4c       .L
    jsr sub_c9a9c                                                     ; 8855: 20 9c 9a     ..
    ldx l004c                                                         ; 8858: a6 4c       .L
    inx                                                               ; 885a: e8          .
    inx                                                               ; 885b: e8          .
    bne c8887                                                         ; 885c: d0 29       .)
.bytecode_opcode_f7_handler
    jsr bytecode_opcode_2f_handler                                    ; 885e: 20 11 8a     ..
    ldx #9                                                            ; 8861: a2 09       ..
.bytecode_opcode_09_handler
.bytecode_opcode_0a_handler
.bytecode_opcode_0b_handler
.bytecode_opcode_0c_handler
.bytecode_opcode_0d_handler
    lda string_false,x                                                ; 8863: bd 2b a7    .+.
    jsr sub_c87e5                                                     ; 8866: 20 e5 87     ..
    ldx #2                                                            ; 8869: a2 02       ..
.c886b
    ldy l004c                                                         ; 886b: a4 4c       .L
    lda l065a                                                         ; 886d: ad 5a 06    .Z.
    beq c8889                                                         ; 8870: f0 17       ..
    bpl c8877                                                         ; 8872: 10 03       ..
    tya                                                               ; 8874: 98          .
    beq c8889                                                         ; 8875: f0 12       ..
.c8877
    lda (l0008),y                                                     ; 8877: b1 08       ..
    sta (l0000),y                                                     ; 8879: 91 00       ..
    cmp #&b8                                                          ; 887b: c9 b8       ..
    bne c888d                                                         ; 887d: d0 0e       ..
    dey                                                               ; 887f: 88          .
    bpl c8877                                                         ; 8880: 10 f5       ..
    brk                                                               ; 8882: 00          .

    equb &12                                                          ; 8883: 12          .              ; error code
    equb 128 + 4                                                      ; 8884: 84          .              ; "Undefined " (token 4)
    equb 128 + 3                                                      ; 8885: 83          .              ; "variable" (token 3)
    equb 0                                                            ; 8886: 00          .

.c8887
    ldy l004c                                                         ; 8887: a4 4c       .L
.c8889
    lda (l0008),y                                                     ; 8889: b1 08       ..
    sta (l0000),y                                                     ; 888b: 91 00       ..
.c888d
    dey                                                               ; 888d: 88          .
    bpl c8889                                                         ; 888e: 10 f9       ..
    sec                                                               ; 8890: 38          8
    lda l0000                                                         ; 8891: a5 00       ..
    adc l004c                                                         ; 8893: 65 4c       eL
    sta l0000                                                         ; 8895: 85 00       ..
    bcc c889b                                                         ; 8897: 90 02       ..
    inc l0001                                                         ; 8899: e6 01       ..
.c889b
    txa                                                               ; 889b: 8a          .
    rts                                                               ; 889c: 60          `

.bytecode_opcode_b5_handler
    jsr sub_c8a1e                                                     ; 889d: 20 1e 8a     ..
    jsr sub_c87fb                                                     ; 88a0: 20 fb 87     ..
    ldy #3                                                            ; 88a3: a0 03       ..
    lda (l0002),y                                                     ; 88a5: b1 02       ..
    tax                                                               ; 88a7: aa          .
    dex                                                               ; 88a8: ca          .
    stx l004c                                                         ; 88a9: 86 4c       .L
    jsr bytecode_opcode_7d_handler                                    ; 88ab: 20 24 96     $.
    tax                                                               ; 88ae: aa          .
    tay                                                               ; 88af: a8          .
    lda (l0002),y                                                     ; 88b0: b1 02       ..
    cmp #&ef                                                          ; 88b2: c9 ef       ..
    bne c8887                                                         ; 88b4: d0 d1       ..
    jsr bytecode_opcode_ef_handler                                    ; 88b6: 20 b2 ae     ..
    tax                                                               ; 88b9: aa          .
    bne c8887                                                         ; 88ba: d0 cb       ..
.bytecode_opcode_04_handler
    iny                                                               ; 88bc: c8          .
    lda (l0002),y                                                     ; 88bd: b1 02       ..
    sta l0012                                                         ; 88bf: 85 12       ..
    lda #2                                                            ; 88c1: a9 02       ..
    jsr c9aaa                                                         ; 88c3: 20 aa 9a     ..
    ldy #&ff                                                          ; 88c6: a0 ff       ..
.loop_c88c8
    iny                                                               ; 88c8: c8          .
    lda (l0008),y                                                     ; 88c9: b1 08       ..
    sta (l0000),y                                                     ; 88cb: 91 00       ..
    cpy l0012                                                         ; 88cd: c4 12       ..
    bcc loop_c88c8                                                    ; 88cf: 90 f7       ..
    lda #0                                                            ; 88d1: a9 00       ..
.loop_c88d3
    cpy #&20 ; ' '                                                    ; 88d3: c0 20       .
    beq c88dc                                                         ; 88d5: f0 05       ..
    sta (l0000),y                                                     ; 88d7: 91 00       ..
    iny                                                               ; 88d9: c8          .
    bne loop_c88d3                                                    ; 88da: d0 f7       ..
.c88dc
    jsr sub_c99f4                                                     ; 88dc: 20 f4 99     ..
    ldx l0012                                                         ; 88df: a6 12       ..
    inx                                                               ; 88e1: e8          .
    inx                                                               ; 88e2: e8          .
    txa                                                               ; 88e3: 8a          .
    rts                                                               ; 88e4: 60          `

.bytecode_opcode_38_handler
.bytecode_opcode_39_handler
    lda something_else_table - 56,x                                   ; 88e5: bd fc a6    ...
    jsr sub_c87f9                                                     ; 88e8: 20 f9 87     ..
    ldx #3                                                            ; 88eb: a2 03       ..
    bne c8916                                                         ; 88ed: d0 27       .'
.bytecode_opcode_1d_handler
.bytecode_opcode_1e_handler
    lda la717,x                                                       ; 88ef: bd 17 a7    ...
    sta l004c                                                         ; 88f2: 85 4c       .L
    jsr sub_c9ae2                                                     ; 88f4: 20 e2 9a     ..
    ldx #1                                                            ; 88f7: a2 01       ..
    bne c8916                                                         ; 88f9: d0 1b       ..
.bytecode_opcode_05_handler
.bytecode_opcode_06_handler
    lda opcode_05_06_table - 5,x                                      ; 88fb: bd 2f a7    ./.
    sta l004c                                                         ; 88fe: 85 4c       .L
    jsr sub_c9a9c                                                     ; 8900: 20 9c 9a     ..
    ldx l004c                                                         ; 8903: a6 4c       .L
    inx                                                               ; 8905: e8          .
    inx                                                               ; 8906: e8          .
    bne c8916                                                         ; 8907: d0 0d       ..
.bytecode_opcode_f8_handler
    jsr bytecode_opcode_2f_handler                                    ; 8909: 20 11 8a     ..
    ldx #&0f                                                          ; 890c: a2 0f       ..
.bytecode_opcode_0e_handler
.bytecode_opcode_0f_handler
    lda la726,x                                                       ; 890e: bd 26 a7    .&.
    jsr sub_c87e5                                                     ; 8911: 20 e5 87     ..
    ldx #2                                                            ; 8914: a2 02       ..
.c8916
    lda #0                                                            ; 8916: a9 00       ..
    ldy #3                                                            ; 8918: a0 03       ..
.loop_c891a
    sta (l0000),y                                                     ; 891a: 91 00       ..
    dey                                                               ; 891c: 88          .
    cpy l004c                                                         ; 891d: c4 4c       .L
    bne loop_c891a                                                    ; 891f: d0 f9       ..
.loop_c8921
    lda (l0008),y                                                     ; 8921: b1 08       ..
    sta (l0000),y                                                     ; 8923: 91 00       ..
    dey                                                               ; 8925: 88          .
    bpl loop_c8921                                                    ; 8926: 10 f9       ..
    jsr sub_c99e4                                                     ; 8928: 20 e4 99     ..
    txa                                                               ; 892b: 8a          .
    rts                                                               ; 892c: 60          `

.sub_c892d
    clc                                                               ; 892d: 18          .
    lda l0000                                                         ; 892e: a5 00       ..
    sbc l004c                                                         ; 8930: e5 4c       .L
    sta l0000                                                         ; 8932: 85 00       ..
    sta l000a                                                         ; 8934: 85 0a       ..
    lda l0001                                                         ; 8936: a5 01       ..
    sbc #0                                                            ; 8938: e9 00       ..
    sta l0001                                                         ; 893a: 85 01       ..
    sta l000b                                                         ; 893c: 85 0b       ..
    rts                                                               ; 893e: 60          `

.bytecode_opcode_3b_handler
.bytecode_opcode_3c_handler
.bytecode_opcode_3d_handler
.bytecode_opcode_3e_handler
.bytecode_opcode_3f_handler
    lda something_else_table - 59,x                                   ; 893f: bd f9 a6    ...
    jsr sub_c87f9                                                     ; 8942: 20 f9 87     ..
    jsr sub_c892d                                                     ; 8945: 20 2d 89     -.
    ldx #3                                                            ; 8948: a2 03       ..
    bne c8966                                                         ; 894a: d0 1a       ..
.bytecode_opcode_21_handler
.bytecode_opcode_22_handler
.bytecode_opcode_23_handler
.bytecode_opcode_24_handler
.bytecode_opcode_25_handler
    lda la713,x                                                       ; 894c: bd 13 a7    ...
    sta l004c                                                         ; 894f: 85 4c       .L
    jsr sub_c892d                                                     ; 8951: 20 2d 89     -.
    jsr sub_c9ae2                                                     ; 8954: 20 e2 9a     ..
    ldx #1                                                            ; 8957: a2 01       ..
    bne c8966                                                         ; 8959: d0 0b       ..
.bytecode_opcode_11_handler
.bytecode_opcode_12_handler
.bytecode_opcode_13_handler
.bytecode_opcode_14_handler
.bytecode_opcode_15_handler
    lda la723,x                                                       ; 895b: bd 23 a7    .#.
    jsr sub_c87e5                                                     ; 895e: 20 e5 87     ..
    jsr sub_c892d                                                     ; 8961: 20 2d 89     -.
    ldx #2                                                            ; 8964: a2 02       ..
.c8966
    ldy l004c                                                         ; 8966: a4 4c       .L
.loop_c8968
    lda (l000a),y                                                     ; 8968: b1 0a       ..
    sta (l0008),y                                                     ; 896a: 91 08       ..
    dey                                                               ; 896c: 88          .
    bpl loop_c8968                                                    ; 896d: 10 f9       ..
    txa                                                               ; 896f: 8a          .
    rts                                                               ; 8970: 60          `

.bytecode_opcode_16_handler
.bytecode_opcode_17_handler
    lda la71e,x                                                       ; 8971: bd 1e a7    ...
    jsr sub_c87e5                                                     ; 8974: 20 e5 87     ..
    jsr sub_c9a68                                                     ; 8977: 20 68 9a     h.
    ldx #2                                                            ; 897a: a2 02       ..
    bne c8966                                                         ; 897c: d0 e8       ..
.bytecode_opcode_40_handler
.bytecode_opcode_41_handler
    lda something_else_table - 64,x                                   ; 897e: bd f4 a6    ...
    jsr sub_c87f9                                                     ; 8981: 20 f9 87     ..
    jsr sub_c9a68                                                     ; 8984: 20 68 9a     h.
    ldx #3                                                            ; 8987: a2 03       ..
    bne c8966                                                         ; 8989: d0 db       ..
.bytecode_opcode_26_handler
.bytecode_opcode_27_handler
    lda something_else_table - 38,x                                   ; 898b: bd 0e a7    ...
    sta l004c                                                         ; 898e: 85 4c       .L
    jsr sub_c9a68                                                     ; 8990: 20 68 9a     h.
    jsr sub_c9ae2                                                     ; 8993: 20 e2 9a     ..
    ldx #1                                                            ; 8996: a2 01       ..
    bne c8966                                                         ; 8998: d0 cc       ..
.bytecode_opcode_49_handler
    jsr sub_c9af9                                                     ; 899a: 20 f9 9a     ..
    jsr sub_c89a6                                                     ; 899d: 20 a6 89     ..
    lda #3                                                            ; 89a0: a9 03       ..
    rts                                                               ; 89a2: 60          `

.bytecode_opcode_1f_handler
    jsr sub_c9b05                                                     ; 89a3: 20 05 9b     ..
.sub_c89a6
    jsr sub_c9ac4                                                     ; 89a6: 20 c4 9a     ..
    clc                                                               ; 89a9: 18          .
    lda l0000                                                         ; 89aa: a5 00       ..
    sta l000e                                                         ; 89ac: 85 0e       ..
    adc l0012                                                         ; 89ae: 65 12       e.
    sta l0000                                                         ; 89b0: 85 00       ..
    lda l0001                                                         ; 89b2: a5 01       ..
    sta l000f                                                         ; 89b4: 85 0f       ..
    adc l0013                                                         ; 89b6: 65 13       e.
    sta l0001                                                         ; 89b8: 85 01       ..
    bne c89cf                                                         ; 89ba: d0 13       ..
    rts                                                               ; 89bc: 60          `

.bytecode_opcode_52_handler
    jsr sub_c9af9                                                     ; 89bd: 20 f9 9a     ..
    jsr sub_c89c9                                                     ; 89c0: 20 c9 89     ..
    lda #3                                                            ; 89c3: a9 03       ..
    rts                                                               ; 89c5: 60          `

.bytecode_opcode_28_handler
    jsr sub_c9b05                                                     ; 89c6: 20 05 9b     ..
.sub_c89c9
    jsr sub_c9ac4                                                     ; 89c9: 20 c4 9a     ..
    jsr sub_c9ad3                                                     ; 89cc: 20 d3 9a     ..
.c89cf
    jsr sub_c89d9                                                     ; 89cf: 20 d9 89     ..
    lda #2                                                            ; 89d2: a9 02       ..
    rts                                                               ; 89d4: 60          `

.some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes
    stx l0012                                                         ; 89d5: 86 12       ..
    sty l0013                                                         ; 89d7: 84 13       ..
.sub_c89d9
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

.bytecode_opcode_30_handler
    jsr sub_c8a1e                                                     ; 8a0b: 20 1e 8a     ..
    lda #1                                                            ; 8a0e: a9 01       ..
    rts                                                               ; 8a10: 60          `

.bytecode_opcode_2f_handler
    sty l0020                                                         ; 8a11: 84 20       .
    lda #1                                                            ; 8a13: a9 01       ..
    rts                                                               ; 8a15: 60          `

.bytecode_opcode_2e_handler
    iny                                                               ; 8a16: c8          .
    lda (l0002),y                                                     ; 8a17: b1 02       ..
    sta l0020                                                         ; 8a19: 85 20       .
    lda #2                                                            ; 8a1b: a9 02       ..
    rts                                                               ; 8a1d: 60          `

.sub_c8a1e
    ldy #6                                                            ; 8a1e: a0 06       ..
    lda (l001a),y                                                     ; 8a20: b1 1a       ..
    sta l0020                                                         ; 8a22: 85 20       .
    rts                                                               ; 8a24: 60          `

.bytecode_opcode_29_handler
    jsr sub_c9a42                                                     ; 8a25: 20 42 9a     B.
    clc                                                               ; 8a28: 18          .
    iny                                                               ; 8a29: c8          .
    lda (l0002),y                                                     ; 8a2a: b1 02       ..
    ldy #0                                                            ; 8a2c: a0 00       ..
    adc (l000a),y                                                     ; 8a2e: 71 0a       q.
    sta (l000a),y                                                     ; 8a30: 91 0a       ..
    tya                                                               ; 8a32: 98          .
    iny                                                               ; 8a33: c8          .
    adc (l000a),y                                                     ; 8a34: 71 0a       q.
    sta (l000a),y                                                     ; 8a36: 91 0a       ..
    lda #2                                                            ; 8a38: a9 02       ..
    rts                                                               ; 8a3a: 60          `

.bytecode_opcode_53_handler
    jsr sub_c9a46                                                     ; 8a3b: 20 46 9a     F.
    clc                                                               ; 8a3e: 18          .
    iny                                                               ; 8a3f: c8          .
    lda (l0002),y                                                     ; 8a40: b1 02       ..
    iny                                                               ; 8a42: c8          .
    adc (l000a),y                                                     ; 8a43: 71 0a       q.
    sta (l000a),y                                                     ; 8a45: 91 0a       ..
    lda (l0002),y                                                     ; 8a47: b1 02       ..
    iny                                                               ; 8a49: c8          .
    adc (l000a),y                                                     ; 8a4a: 71 0a       q.
    sta (l000a),y                                                     ; 8a4c: 91 0a       ..
    lda #3                                                            ; 8a4e: a9 03       ..
    rts                                                               ; 8a50: 60          `

.bytecode_opcode_a5_handler
    jsr bytecode_opcode_b1_handler                                    ; 8a51: 20 3b 95     ;.
.bytecode_opcode_10_handler
    jsr sub_c87e7                                                     ; 8a54: 20 e7 87     ..
    jsr sub_c99d5                                                     ; 8a57: 20 d5 99     ..
    lda #2                                                            ; 8a5a: a9 02       ..
    rts                                                               ; 8a5c: 60          `

.bytecode_opcode_3a_handler
    jsr sub_c87fb                                                     ; 8a5d: 20 fb 87     ..
    jsr sub_c99d5                                                     ; 8a60: 20 d5 99     ..
    lda #3                                                            ; 8a63: a9 03       ..
    rts                                                               ; 8a65: 60          `

.bytecode_opcode_31_handler
    jsr sub_c9af9                                                     ; 8a66: 20 f9 9a     ..
    ldx #3                                                            ; 8a69: a2 03       ..
    bne c8a72                                                         ; 8a6b: d0 05       ..
.bytecode_opcode_07_handler
    jsr sub_c9b05                                                     ; 8a6d: 20 05 9b     ..
    ldx #2                                                            ; 8a70: a2 02       ..
.c8a72
    txa                                                               ; 8a72: 8a          .
    jsr c9aaa                                                         ; 8a73: 20 aa 9a     ..
    jsr sub_c99d5                                                     ; 8a76: 20 d5 99     ..
    clc                                                               ; 8a79: 18          .
    lda l0002                                                         ; 8a7a: a5 02       ..
    adc l0012                                                         ; 8a7c: 65 12       e.
    sta l0002                                                         ; 8a7e: 85 02       ..
    lda l0003                                                         ; 8a80: a5 03       ..
    adc l0013                                                         ; 8a82: 65 13       e.
    sta l0003                                                         ; 8a84: 85 03       ..
    txa                                                               ; 8a86: 8a          .
    rts                                                               ; 8a87: 60          `

.bytecode_opcode_4b_handler
    jsr sub_c9ae2                                                     ; 8a88: 20 e2 9a     ..
    jsr sub_c9227                                                     ; 8a8b: 20 27 92     '.
    ldy #4                                                            ; 8a8e: a0 04       ..
    lda (l0008),y                                                     ; 8a90: b1 08       ..
    and #&40 ; '@'                                                    ; 8a92: 29 40       )@
    bne c8aaf                                                         ; 8a94: d0 19       ..
.c8a96
    brk                                                               ; 8a96: 00          .

    equb &14                                                          ; 8a97: 14          .              ; error code
    equb 128 + 4                                                      ; 8a98: 84          .              ; "Undefined " (token 4)
    equs "buffe"                                                      ; 8a99: 62 75 66... buf
    equb 128 + ('r')                                                  ; 8a9e: f2          .              ; "r "
    equb 128 + 3                                                      ; 8a9f: 83          .              ; "variable" (token 3)
    equb 0                                                            ; 8aa0: 00          .

.bytecode_opcode_f0_handler
    jsr sub_c9ae2                                                     ; 8aa1: 20 e2 9a     ..
    jsr sub_c9227                                                     ; 8aa4: 20 27 92     '.
    ldy #4                                                            ; 8aa7: a0 04       ..
    lda (l0008),y                                                     ; 8aa9: b1 08       ..
    ora #&40 ; '@'                                                    ; 8aab: 09 40       .@
    sta (l0008),y                                                     ; 8aad: 91 08       ..
.c8aaf
    clc                                                               ; 8aaf: 18          .
    lda l0008                                                         ; 8ab0: a5 08       ..
    adc #5                                                            ; 8ab2: 69 05       i.
    sta l0008                                                         ; 8ab4: 85 08       ..
    bcc c8aba                                                         ; 8ab6: 90 02       ..
    inc l0009                                                         ; 8ab8: e6 09       ..
.c8aba
    jsr sub_c99d5                                                     ; 8aba: 20 d5 99     ..
    lda #1                                                            ; 8abd: a9 01       ..
    rts                                                               ; 8abf: 60          `

.bytecode_opcode_fc_handler
    jsr bytecode_opcode_f2_handler                                    ; 8ac0: 20 c3 8a     ..
.bytecode_opcode_f2_handler
    sty l0008                                                         ; 8ac3: 84 08       ..
    sty l0009                                                         ; 8ac5: 84 09       ..
    jmp c8aba                                                         ; 8ac7: 4c ba 8a    L..

.bytecode_opcode_f3_handler
    jsr sub_c9a1d                                                     ; 8aca: 20 1d 9a     ..
    lda #1                                                            ; 8acd: a9 01       ..
    jsr sub_c9b1a                                                     ; 8acf: 20 1a 9b     ..
    lda #1                                                            ; 8ad2: a9 01       ..
    rts                                                               ; 8ad4: 60          `

.bytecode_opcode_f4_handler
    jsr bytecode_opcode_b1_handler                                    ; 8ad5: 20 3b 95     ;.
    ldx #0                                                            ; 8ad8: a2 00       ..
    jsr bytecode_opcode_00_handler                                    ; 8ada: 20 50 88     P.
    lda #&24 ; '$'                                                    ; 8add: a9 24       .$
    ldx #2                                                            ; 8adf: a2 02       ..
    jmp c9564                                                         ; 8ae1: 4c 64 95    Ld.

.bytecode_opcode_f5_handler
    ldx #&0a                                                          ; 8ae4: a2 0a       ..
    jsr bytecode_opcode_09_handler                                    ; 8ae6: 20 63 88     c.
    ldy #1                                                            ; 8ae9: a0 01       ..
    jsr bytecode_opcode_29_handler                                    ; 8aeb: 20 25 8a     %.
    lda #3                                                            ; 8aee: a9 03       ..
    rts                                                               ; 8af0: 60          `

.bytecode_opcode_4f_handler
    jsr bytecode_opcode_b1_handler                                    ; 8af1: 20 3b 95     ;.
    ldx #5                                                            ; 8af4: a2 05       ..
    jsr bytecode_opcode_05_handler                                    ; 8af6: 20 fb 88     ..
    jsr sub_c9aa0                                                     ; 8af9: 20 a0 9a     ..
    ldx #3                                                            ; 8afc: a2 03       ..
    jmp c9560                                                         ; 8afe: 4c 60 95    L`.

.bytecode_opcode_ac_handler
    jsr bytecode_opcode_2f_handler                                    ; 8b01: 20 11 8a     ..
    lda #&26 ; '&'                                                    ; 8b04: a9 26       .&
    jsr sub_c87eb                                                     ; 8b06: 20 eb 87     ..
    ldy #0                                                            ; 8b09: a0 00       ..
    beq c8b14                                                         ; 8b0b: f0 07       ..
.bytecode_opcode_9f_handler
    lda #9                                                            ; 8b0d: a9 09       ..
    jsr sub_c87eb                                                     ; 8b0f: 20 eb 87     ..
    ldy #1                                                            ; 8b12: a0 01       ..
.c8b14
    sty l004c                                                         ; 8b14: 84 4c       .L
    ldx #1                                                            ; 8b16: a2 01       ..
    jmp c8889                                                         ; 8b18: 4c 89 88    L..

.bytecode_opcode_a9_handler
    jsr sub_c9a11                                                     ; 8b1b: 20 11 9a     ..
    lda (l0000),y                                                     ; 8b1e: b1 00       ..
    iny                                                               ; 8b20: c8          .
    cmp (l0002),y                                                     ; 8b21: d1 02       ..
    jsr sub_c8e50                                                     ; 8b23: 20 50 8e     P.
.loop_c8b26
    lda #2                                                            ; 8b26: a9 02       ..
    rts                                                               ; 8b28: 60          `

.bytecode_opcode_a0_handler
    lda #&13                                                          ; 8b29: a9 13       ..
    sta l0012                                                         ; 8b2b: 85 12       ..
    sty l0013                                                         ; 8b2d: 84 13       ..
    jsr sub_c89a6                                                     ; 8b2f: 20 a6 89     ..
    lda #1                                                            ; 8b32: a9 01       ..
    rts                                                               ; 8b34: 60          `

.bytecode_opcode_a1_handler
    jsr sub_c8a1e                                                     ; 8b35: 20 1e 8a     ..
    jsr sub_c9af1                                                     ; 8b38: 20 f1 9a     ..
    beq loop_c8b26                                                    ; 8b3b: f0 e9       ..
    ldy #0                                                            ; 8b3d: a0 00       ..
.bytecode_opcode_9e_handler
    jsr bytecode_opcode_b1_handler                                    ; 8b3f: 20 3b 95     ;.
    ldx #5                                                            ; 8b42: a2 05       ..
    jsr bytecode_opcode_05_handler                                    ; 8b44: 20 fb 88     ..
    lda #1                                                            ; 8b47: a9 01       ..
    ldx #2                                                            ; 8b49: a2 02       ..
    jmp c9564                                                         ; 8b4b: 4c 64 95    Ld.

.bytecode_opcode_ff_handler
    jsr bytecode_opcode_b1_handler                                    ; 8b4e: 20 3b 95     ;.
    lda #&25 ; '%'                                                    ; 8b51: a9 25       .%
    ldx #1                                                            ; 8b53: a2 01       ..
    jmp c9564                                                         ; 8b55: 4c 64 95    Ld.

.sub_c8b58
    ldy #&ff                                                          ; 8b58: a0 ff       ..
.loop_c8b5a
    iny                                                               ; 8b5a: c8          .
    cpy #3                                                            ; 8b5b: c0 03       ..
    bcs c8b69                                                         ; 8b5d: b0 0a       ..
    lda (l000a),y                                                     ; 8b5f: b1 0a       ..
    adc #1                                                            ; 8b61: 69 01       i.
    sta (l000a),y                                                     ; 8b63: 91 0a       ..
    bcs loop_c8b5a                                                    ; 8b65: b0 f3       ..
    clv                                                               ; 8b67: b8          .
    rts                                                               ; 8b68: 60          `

.c8b69
    lda (l000a),y                                                     ; 8b69: b1 0a       ..
    adc #0                                                            ; 8b6b: 69 00       i.
    sta (l000a),y                                                     ; 8b6d: 91 0a       ..
    rts                                                               ; 8b6f: 60          `

.sub_c8b70
    ldy #&ff                                                          ; 8b70: a0 ff       ..
.loop_c8b72
    iny                                                               ; 8b72: c8          .
    cpy #3                                                            ; 8b73: c0 03       ..
    bcs c8b81                                                         ; 8b75: b0 0a       ..
    lda (l000a),y                                                     ; 8b77: b1 0a       ..
    sbc #0                                                            ; 8b79: e9 00       ..
    sta (l000a),y                                                     ; 8b7b: 91 0a       ..
    bcc loop_c8b72                                                    ; 8b7d: 90 f3       ..
    clv                                                               ; 8b7f: b8          .
    rts                                                               ; 8b80: 60          `

.c8b81
    lda (l000a),y                                                     ; 8b81: b1 0a       ..
    sbc #1                                                            ; 8b83: e9 01       ..
    sta (l000a),y                                                     ; 8b85: 91 0a       ..
    rts                                                               ; 8b87: 60          `

.sub_c8b88
    jsr sub_c9a68                                                     ; 8b88: 20 68 9a     h.
.sub_c8b8b
    ldy #3                                                            ; 8b8b: a0 03       ..
.loop_c8b8d
    lda (l000a),y                                                     ; 8b8d: b1 0a       ..
    sta l006a,y                                                       ; 8b8f: 99 6a 00    .j.
    dey                                                               ; 8b92: 88          .
    bpl loop_c8b8d                                                    ; 8b93: 10 f8       ..
    rts                                                               ; 8b95: 60          `

.sub_c8b96
    ldy #3                                                            ; 8b96: a0 03       ..
.loop_c8b98
    lda (l000a),y                                                     ; 8b98: b1 0a       ..
    sta l0046,y                                                       ; 8b9a: 99 46 00    .F.
    dey                                                               ; 8b9d: 88          .
    bpl loop_c8b98                                                    ; 8b9e: 10 f8       ..
    ora l0048                                                         ; 8ba0: 05 48       .H
    ora l0047                                                         ; 8ba2: 05 47       .G
    ora l0046                                                         ; 8ba4: 05 46       .F
    bit l0049                                                         ; 8ba6: 24 49       $I
.loop_c8ba8
    rts                                                               ; 8ba8: 60          `

.sub_c8ba9
    lda l006d                                                         ; 8ba9: a5 6d       .m
    sta l0661                                                         ; 8bab: 8d 61 06    .a.
    bpl c8bb3                                                         ; 8bae: 10 03       ..
    jsr sub_c8c3c                                                     ; 8bb0: 20 3c 8c     <.
.c8bb3
    lda l0049                                                         ; 8bb3: a5 49       .I
    bpl loop_c8ba8                                                    ; 8bb5: 10 f1       ..
    eor l0661                                                         ; 8bb7: 4d 61 06    Ma.
    sta l0661                                                         ; 8bba: 8d 61 06    .a.
    lda #&46 ; 'F'                                                    ; 8bbd: a9 46       .F
    bne c8c3e                                                         ; 8bbf: d0 7d       .}
.sub_c8bc1
    lda #&4a ; 'J'                                                    ; 8bc1: a9 4a       .J
    bne c8c3e                                                         ; 8bc3: d0 79       .y
.c8bc5
    brk                                                               ; 8bc5: 00          .

    equb &15                                                          ; 8bc6: 15          .              ; error code
    equs "Divisio"                                                    ; 8bc7: 44 69 76... Div
    equb 128 + ('n')                                                  ; 8bce: ee          .              ; "n "
    equs "b"                                                          ; 8bcf: 62          b
    equb 128 + ('y')                                                  ; 8bd0: f9          .              ; "y "
    equs "zero"                                                       ; 8bd1: 7a 65 72... zer
    equb 0                                                            ; 8bd5: 00          .

.opcode_75_sub_handler
    lda l0046                                                         ; 8bd6: a5 46       .F
    ora l0047                                                         ; 8bd8: 05 47       .G
    ora l0048                                                         ; 8bda: 05 48       .H
    ora l0049                                                         ; 8bdc: 05 49       .I
    beq c8bc5                                                         ; 8bde: f0 e5       ..
    jsr sub_c8ba9                                                     ; 8be0: 20 a9 8b     ..
    lda #0                                                            ; 8be3: a9 00       ..
    sta l004a                                                         ; 8be5: 85 4a       .J
    sta l004b                                                         ; 8be7: 85 4b       .K
    sta l004c                                                         ; 8be9: 85 4c       .L
    sta l004d                                                         ; 8beb: 85 4d       .M
    ldx #&20 ; ' '                                                    ; 8bed: a2 20       .
.loop_c8bef
    asl l006a                                                         ; 8bef: 06 6a       .j
    rol l006b                                                         ; 8bf1: 26 6b       &k
    rol l006c                                                         ; 8bf3: 26 6c       &l
    rol l006d                                                         ; 8bf5: 26 6d       &m
    bcs c8c06                                                         ; 8bf7: b0 0d       ..
    dex                                                               ; 8bf9: ca          .
    bne loop_c8bef                                                    ; 8bfa: d0 f3       ..
    beq c8c55                                                         ; 8bfc: f0 57       .W
.c8bfe
    asl l006a                                                         ; 8bfe: 06 6a       .j
    rol l006b                                                         ; 8c00: 26 6b       &k
    rol l006c                                                         ; 8c02: 26 6c       &l
    rol l006d                                                         ; 8c04: 26 6d       &m
.c8c06
    rol l004a                                                         ; 8c06: 26 4a       &J
    rol l004b                                                         ; 8c08: 26 4b       &K
    rol l004c                                                         ; 8c0a: 26 4c       &L
    rol l004d                                                         ; 8c0c: 26 4d       &M
    sec                                                               ; 8c0e: 38          8
    lda l004a                                                         ; 8c0f: a5 4a       .J
    sbc l0046                                                         ; 8c11: e5 46       .F
    sta l000c                                                         ; 8c13: 85 0c       ..
    lda l004b                                                         ; 8c15: a5 4b       .K
    sbc l0047                                                         ; 8c17: e5 47       .G
    sta l000d                                                         ; 8c19: 85 0d       ..
    lda l004c                                                         ; 8c1b: a5 4c       .L
    sbc l0048                                                         ; 8c1d: e5 48       .H
    tay                                                               ; 8c1f: a8          .
    lda l004d                                                         ; 8c20: a5 4d       .M
    sbc l0049                                                         ; 8c22: e5 49       .I
    bcc c8c34                                                         ; 8c24: 90 0e       ..
    sta l004d                                                         ; 8c26: 85 4d       .M
    sty l004c                                                         ; 8c28: 84 4c       .L
    lda l000d                                                         ; 8c2a: a5 0d       ..
    sta l004b                                                         ; 8c2c: 85 4b       .K
    lda l000c                                                         ; 8c2e: a5 0c       ..
    sta l004a                                                         ; 8c30: 85 4a       .J
    inc l006a                                                         ; 8c32: e6 6a       .j
.c8c34
    dex                                                               ; 8c34: ca          .
    bne c8bfe                                                         ; 8c35: d0 c7       ..
    lda l0661                                                         ; 8c37: ad 61 06    .a.
    bpl c8c55                                                         ; 8c3a: 10 19       ..
.sub_c8c3c
    lda #&6a ; 'j'                                                    ; 8c3c: a9 6a       .j
.c8c3e
    sta l000c                                                         ; 8c3e: 85 0c       ..
    lda #0                                                            ; 8c40: a9 00       ..
    sta l000d                                                         ; 8c42: 85 0d       ..
.sub_c8c44
    sec                                                               ; 8c44: 38          8
    ldx #4                                                            ; 8c45: a2 04       ..
    ldy #0                                                            ; 8c47: a0 00       ..
.loop_c8c49
    lda #0                                                            ; 8c49: a9 00       ..
    sbc (l000c),y                                                     ; 8c4b: f1 0c       ..
    sta (l000c),y                                                     ; 8c4d: 91 0c       ..
    iny                                                               ; 8c4f: c8          .
    dex                                                               ; 8c50: ca          .
    bne loop_c8c49                                                    ; 8c51: d0 f6       ..
    bvs c8cbb                                                         ; 8c53: 70 66       pf
.c8c55
    rts                                                               ; 8c55: 60          `

.loop_c8c56
    brk                                                               ; 8c56: 00          .

    equb &17                                                          ; 8c57: 17          .              ; error code
    equb 128 + 2                                                      ; 8c58: 82          .              ; "Bad " (token 2)
    equs "MOD"                                                        ; 8c59: 4d 4f 44    MOD
    equb 0                                                            ; 8c5c: 00          .

.opcode_76_sub_handler
    lda l0049                                                         ; 8c5d: a5 49       .I
    bmi loop_c8c56                                                    ; 8c5f: 30 f5       0.
    jsr opcode_75_sub_handler                                         ; 8c61: 20 d6 8b     ..
    jsr c8d13                                                         ; 8c64: 20 13 8d     ..
    ora l006b                                                         ; 8c67: 05 6b       .k
    ora l006c                                                         ; 8c69: 05 6c       .l
    ora l006d                                                         ; 8c6b: 05 6d       .m
    beq c8c8b                                                         ; 8c6d: f0 1c       ..
    lda l0661                                                         ; 8c6f: ad 61 06    .a.
    bpl c8c8b                                                         ; 8c72: 10 17       ..
    jsr sub_c8c3c                                                     ; 8c74: 20 3c 8c     <.
.opcode_72_sub_handler
    clc                                                               ; 8c77: 18          .
    ldx #4                                                            ; 8c78: a2 04       ..
    ldy #0                                                            ; 8c7a: a0 00       ..
.loop_c8c7c
    lda l006a,y                                                       ; 8c7c: b9 6a 00    .j.
    adc l0046,y                                                       ; 8c7f: 79 46 00    yF.
    sta l006a,y                                                       ; 8c82: 99 6a 00    .j.
    iny                                                               ; 8c85: c8          .
    dex                                                               ; 8c86: ca          .
    bne loop_c8c7c                                                    ; 8c87: d0 f3       ..
    bvs c8cbb                                                         ; 8c89: 70 30       p0
.c8c8b
    rts                                                               ; 8c8b: 60          `

.opcode_74_sub_handler
    jsr sub_c8ba9                                                     ; 8c8c: 20 a9 8b     ..
    lda l0046                                                         ; 8c8f: a5 46       .F
    cmp l006a                                                         ; 8c91: c5 6a       .j
    lda l0047                                                         ; 8c93: a5 47       .G
    sbc l006b                                                         ; 8c95: e5 6b       .k
    lda l0048                                                         ; 8c97: a5 48       .H
    sbc l006c                                                         ; 8c99: e5 6c       .l
    lda l0049                                                         ; 8c9b: a5 49       .I
    sbc l006d                                                         ; 8c9d: e5 6d       .m
    bcs c8cb0                                                         ; 8c9f: b0 0f       ..
    ldy #3                                                            ; 8ca1: a0 03       ..
.loop_c8ca3
    lda l006a,y                                                       ; 8ca3: b9 6a 00    .j.
    ldx l0046,y                                                       ; 8ca6: b6 46       .F
    stx l006a,y                                                       ; 8ca8: 96 6a       .j
    sta l0046,y                                                       ; 8caa: 99 46 00    .F.
    dey                                                               ; 8cad: 88          .
    bpl loop_c8ca3                                                    ; 8cae: 10 f3       ..
.c8cb0
    ldy #3                                                            ; 8cb0: a0 03       ..
.loop_c8cb2
    lda l006a,y                                                       ; 8cb2: b9 6a 00    .j.
    bne c8cc6                                                         ; 8cb5: d0 0f       ..
    dey                                                               ; 8cb7: 88          .
    bpl loop_c8cb2                                                    ; 8cb8: 10 f8       ..
    rts                                                               ; 8cba: 60          `

.c8cbb
    brk                                                               ; 8cbb: 00          .

    equb &0f                                                          ; 8cbc: 0f          .              ; error code
    equs "Intege"                                                     ; 8cbd: 49 6e 74... Int
    equb 128 + ('r')                                                  ; 8cc3: f2          .              ; "r "
    equb 128 + 5                                                      ; 8cc4: 85          .              ; "overflow" (token 5)
    equb 0                                                            ; 8cc5: 00          .

.c8cc6
    ldx la727,y                                                       ; 8cc6: be 27 a7    .'.
    ldy #0                                                            ; 8cc9: a0 00       ..
    sty l004b                                                         ; 8ccb: 84 4b       .K
    sty l004c                                                         ; 8ccd: 84 4c       .L
    sty l004d                                                         ; 8ccf: 84 4d       .M
.loop_c8cd1
    rol a                                                             ; 8cd1: 2a          *
    bcs c8ce1                                                         ; 8cd2: b0 0d       ..
    dex                                                               ; 8cd4: ca          .
    bne loop_c8cd1                                                    ; 8cd5: d0 fa       ..
.c8cd7
    asl l0046                                                         ; 8cd7: 06 46       .F
    rol l0047                                                         ; 8cd9: 26 47       &G
    rol l0048                                                         ; 8cdb: 26 48       &H
    rol l0049                                                         ; 8cdd: 26 49       &I
    bmi c8cbb                                                         ; 8cdf: 30 da       0.
.c8ce1
    ror l006d                                                         ; 8ce1: 66 6d       fm
    ror l006c                                                         ; 8ce3: 66 6c       fl
    ror l006b                                                         ; 8ce5: 66 6b       fk
    ror l006a                                                         ; 8ce7: 66 6a       fj
    bcc c8d02                                                         ; 8ce9: 90 17       ..
    clc                                                               ; 8ceb: 18          .
    tya                                                               ; 8cec: 98          .
    adc l0046                                                         ; 8ced: 65 46       eF
    tay                                                               ; 8cef: a8          .
    lda l004b                                                         ; 8cf0: a5 4b       .K
    adc l0047                                                         ; 8cf2: 65 47       eG
    sta l004b                                                         ; 8cf4: 85 4b       .K
    lda l004c                                                         ; 8cf6: a5 4c       .L
    adc l0048                                                         ; 8cf8: 65 48       eH
    sta l004c                                                         ; 8cfa: 85 4c       .L
    lda l004d                                                         ; 8cfc: a5 4d       .M
    adc l0049                                                         ; 8cfe: 65 49       eI
    sta l004d                                                         ; 8d00: 85 4d       .M
.c8d02
    dex                                                               ; 8d02: ca          .
    bne c8cd7                                                         ; 8d03: d0 d2       ..
    sty l004a                                                         ; 8d05: 84 4a       .J
    lda l004d                                                         ; 8d07: a5 4d       .M
    bmi c8cbb                                                         ; 8d09: 30 b0       0.
    lda l0661                                                         ; 8d0b: ad 61 06    .a.
    bpl c8d13                                                         ; 8d0e: 10 03       ..
    jsr sub_c8bc1                                                     ; 8d10: 20 c1 8b     ..
.c8d13
    ldy #3                                                            ; 8d13: a0 03       ..
.loop_c8d15
    lda l004a,y                                                       ; 8d15: b9 4a 00    .J.
    sta l006a,y                                                       ; 8d18: 99 6a 00    .j.
    dey                                                               ; 8d1b: 88          .
    bpl loop_c8d15                                                    ; 8d1c: 10 f7       ..
    rts                                                               ; 8d1e: 60          `

.opcode_73_sub_handler
    sec                                                               ; 8d1f: 38          8
    ldx #4                                                            ; 8d20: a2 04       ..
    ldy #0                                                            ; 8d22: a0 00       ..
.loop_c8d24
    lda l006a,y                                                       ; 8d24: b9 6a 00    .j.
    sbc l0046,y                                                       ; 8d27: f9 46 00    .F.
    sta l006a,y                                                       ; 8d2a: 99 6a 00    .j.
    iny                                                               ; 8d2d: c8          .
    dex                                                               ; 8d2e: ca          .
    bne loop_c8d24                                                    ; 8d2f: d0 f3       ..
    bvs c8cbb                                                         ; 8d31: 70 88       p.
    rts                                                               ; 8d33: 60          `

.bytecode_opcode_72_handler
.bytecode_opcode_73_handler
.bytecode_opcode_74_handler
.bytecode_opcode_75_handler
.bytecode_opcode_76_handler
    lda opcode_subrange3_jump_table_low - 114,x                       ; 8d34: bd 95 a5    ...
    sta l0008                                                         ; 8d37: 85 08       ..
    lda opcode_subrange3_jump_table_high - 114,x                      ; 8d39: bd 9a a6    ...
    sta l0009                                                         ; 8d3c: 85 09       ..
    jsr sub_c9a68                                                     ; 8d3e: 20 68 9a     h.
    jsr sub_c8b96                                                     ; 8d41: 20 96 8b     ..
    jsr sub_c9a46                                                     ; 8d44: 20 46 9a     F.
    jsr sub_c8b8b                                                     ; 8d47: 20 8b 8b     ..
    jsr jmp_indirect_via_l0008                                        ; 8d4a: 20 e2 87     ..
    jsr sub_c9d96                                                     ; 8d4d: 20 96 9d     ..
    lda #1                                                            ; 8d50: a9 01       ..
    rts                                                               ; 8d52: 60          `

.bytecode_opcode_c5_handler
.bytecode_opcode_c6_handler
    jsr c9a8a                                                         ; 8d53: 20 8a 9a     ..
    cpx #&c6                                                          ; 8d56: e0 c6       ..
    bne c8d60                                                         ; 8d58: d0 06       ..
    ldy #3                                                            ; 8d5a: a0 03       ..
    lda (l000c),y                                                     ; 8d5c: b1 0c       ..
    bpl c8d63                                                         ; 8d5e: 10 03       ..
.c8d60
    jsr sub_c8c44                                                     ; 8d60: 20 44 8c     D.
.c8d63
    lda #1                                                            ; 8d63: a9 01       ..
    rts                                                               ; 8d65: 60          `

.bytecode_opcode_c7_handler
    jsr sub_c9a46                                                     ; 8d66: 20 46 9a     F.
    jsr sub_c8b96                                                     ; 8d69: 20 96 8b     ..
    jsr sub_c8b8b                                                     ; 8d6c: 20 8b 8b     ..
    jsr opcode_74_sub_handler                                         ; 8d6f: 20 8c 8c     ..
    jsr sub_c9d96                                                     ; 8d72: 20 96 9d     ..
    lda #1                                                            ; 8d75: a9 01       ..
    rts                                                               ; 8d77: 60          `

.bytecode_opcode_7e_handler
    jsr sub_c9a35                                                     ; 8d78: 20 35 9a     5.
.loop_c8d7b
    lda (l000a),y                                                     ; 8d7b: b1 0a       ..
    ora (l0000),y                                                     ; 8d7d: 11 00       ..
    sta (l000a),y                                                     ; 8d7f: 91 0a       ..
    dey                                                               ; 8d81: 88          .
    bpl loop_c8d7b                                                    ; 8d82: 10 f7       ..
    lda #1                                                            ; 8d84: a9 01       ..
    rts                                                               ; 8d86: 60          `

.bytecode_opcode_7f_handler
    jsr sub_c9a35                                                     ; 8d87: 20 35 9a     5.
.loop_c8d8a
    lda (l0000),y                                                     ; 8d8a: b1 00       ..
    eor #&ff                                                          ; 8d8c: 49 ff       I.
    and (l000a),y                                                     ; 8d8e: 31 0a       1.
    sta (l000a),y                                                     ; 8d90: 91 0a       ..
    dey                                                               ; 8d92: 88          .
    bpl loop_c8d8a                                                    ; 8d93: 10 f5       ..
    lda #1                                                            ; 8d95: a9 01       ..
    rts                                                               ; 8d97: 60          `

.bytecode_opcode_80_handler
    jsr sub_c9a35                                                     ; 8d98: 20 35 9a     5.
.loop_c8d9b
    lda (l000a),y                                                     ; 8d9b: b1 0a       ..
    and (l0000),y                                                     ; 8d9d: 31 00       1.
    sta (l000a),y                                                     ; 8d9f: 91 0a       ..
    dey                                                               ; 8da1: 88          .
    bpl loop_c8d9b                                                    ; 8da2: 10 f7       ..
    lda #1                                                            ; 8da4: a9 01       ..
    rts                                                               ; 8da6: 60          `

.bytecode_opcode_c2_handler
    jsr sub_c9a3e                                                     ; 8da7: 20 3e 9a     >.
    sec                                                               ; 8daa: 38          8
    lda (l000a),y                                                     ; 8dab: b1 0a       ..
    sbc #1                                                            ; 8dad: e9 01       ..
    sta (l000a),y                                                     ; 8daf: 91 0a       ..
    bcc c8dd8                                                         ; 8db1: 90 25       .%
    lda #1                                                            ; 8db3: a9 01       ..
    rts                                                               ; 8db5: 60          `

.bytecode_opcode_c1_handler
    jsr sub_c9a3e                                                     ; 8db6: 20 3e 9a     >.
    clc                                                               ; 8db9: 18          .
    lda (l000a),y                                                     ; 8dba: b1 0a       ..
    adc #1                                                            ; 8dbc: 69 01       i.
    sta (l000a),y                                                     ; 8dbe: 91 0a       ..
    bcs c8dd8                                                         ; 8dc0: b0 16       ..
    lda #1                                                            ; 8dc2: a9 01       ..
    rts                                                               ; 8dc4: 60          `

.bytecode_opcode_c3_handler
    jsr sub_c9a46                                                     ; 8dc5: 20 46 9a     F.
    jsr sub_c8b58                                                     ; 8dc8: 20 58 8b     X.
    bvs c8dd8                                                         ; 8dcb: 70 0b       p.
.loop_c8dcd
    lda #1                                                            ; 8dcd: a9 01       ..
    rts                                                               ; 8dcf: 60          `

.bytecode_opcode_c4_handler
    jsr sub_c9a46                                                     ; 8dd0: 20 46 9a     F.
    jsr sub_c8b70                                                     ; 8dd3: 20 70 8b     p.
    bvc loop_c8dcd                                                    ; 8dd6: 50 f5       P.
.c8dd8
    brk                                                               ; 8dd8: 00          .

    equb &0d                                                          ; 8dd9: 0d          .              ; error code
    equs "Sub"                                                        ; 8dda: 53 75 62    Sub
    equb 128 + 7                                                      ; 8ddd: 87          .              ; "range" (token 7)
    equb 0                                                            ; 8dde: 00          .

.bytecode_opcode_c0_handler
    tya                                                               ; 8ddf: 98          .
    ldy #3                                                            ; 8de0: a0 03       ..
.loop_c8de2
    sta (l0000),y                                                     ; 8de2: 91 00       ..
    dey                                                               ; 8de4: 88          .
    bpl loop_c8de2                                                    ; 8de5: 10 fb       ..
    lda #3                                                            ; 8de7: a9 03       ..
    jsr c99fe                                                         ; 8de9: 20 fe 99     ..
    lda #1                                                            ; 8dec: a9 01       ..
    rts                                                               ; 8dee: 60          `

.bytecode_opcode_bf_handler
    jsr sub_c9cb4                                                     ; 8def: 20 b4 9c     ..
    bcs c8dfa                                                         ; 8df2: b0 06       ..
    jsr sub_c99f8                                                     ; 8df4: 20 f8 99     ..
    lda #1                                                            ; 8df7: a9 01       ..
    rts                                                               ; 8df9: 60          `

.c8dfa
    brk                                                               ; 8dfa: 00          .

    equb &16                                                          ; 8dfb: 16          .              ; error code
    equs "CH"                                                         ; 8dfc: 43 48       CH
    equb 128 + ('R')                                                  ; 8dfe: d2          .              ; "R "
    equb 128 + 7                                                      ; 8dff: 87          .              ; "range" (token 7)
    equb 0                                                            ; 8e00: 00          .

.bytecode_opcode_be_handler
    jsr sub_c9a19                                                     ; 8e01: 20 19 9a     ..
    lda (l0000),y                                                     ; 8e04: b1 00       ..
    and #1                                                            ; 8e06: 29 01       ).
    bpl c8e46                                                         ; 8e08: 10 3c       .<
.bytecode_opcode_84_handler
    jsr sub_c9a15                                                     ; 8e0a: 20 15 9a     ..
    lda (l0000),y                                                     ; 8e0d: b1 00       ..
    iny                                                               ; 8e0f: c8          .
    and (l0000),y                                                     ; 8e10: 31 00       1.
    bpl c8e4a                                                         ; 8e12: 10 36       .6
.bytecode_opcode_85_handler
    jsr sub_c9a15                                                     ; 8e14: 20 15 9a     ..
    lda (l0000),y                                                     ; 8e17: b1 00       ..
    iny                                                               ; 8e19: c8          .
    ora (l0000),y                                                     ; 8e1a: 11 00       ..
    bpl c8e4a                                                         ; 8e1c: 10 2c       .,
.bytecode_opcode_86_handler
    jsr sub_c9a11                                                     ; 8e1e: 20 11 9a     ..
    lda (l0000),y                                                     ; 8e21: b1 00       ..
    eor #1                                                            ; 8e23: 49 01       I.
    bpl c8e4a                                                         ; 8e25: 10 23       .#
.bytecode_opcode_54_handler
.bytecode_opcode_55_handler
.bytecode_opcode_56_handler
.bytecode_opcode_57_handler
.bytecode_opcode_58_handler
.bytecode_opcode_59_handler
    lda something_table - 84,x                                        ; 8e27: bd bd a6    ...
    sta l0663                                                         ; 8e2a: 8d 63 06    .c.
    jsr sub_c9a15                                                     ; 8e2d: 20 15 9a     ..
    lda (l0000),y                                                     ; 8e30: b1 00       ..
    iny                                                               ; 8e32: c8          .
    cmp (l0000),y                                                     ; 8e33: d1 00       ..
.c8e35
    beq c8e3d                                                         ; 8e35: f0 06       ..
    bcs c8e41                                                         ; 8e37: b0 08       ..
    lda #4                                                            ; 8e39: a9 04       ..
    bne c8e43                                                         ; 8e3b: d0 06       ..
.c8e3d
    lda #2                                                            ; 8e3d: a9 02       ..
    bne c8e43                                                         ; 8e3f: d0 02       ..
.c8e41
    lda #1                                                            ; 8e41: a9 01       ..
.c8e43
    and l0663                                                         ; 8e43: 2d 63 06    -c.
.c8e46
    beq bytecode_opcode_fb_handler                                    ; 8e46: f0 0a       ..
.bytecode_opcode_fe_handler
    lda #1                                                            ; 8e48: a9 01       ..
.c8e4a
    jsr sub_c99f8                                                     ; 8e4a: 20 f8 99     ..
    lda #1                                                            ; 8e4d: a9 01       ..
    rts                                                               ; 8e4f: 60          `

.sub_c8e50
    beq bytecode_opcode_fe_handler                                    ; 8e50: f0 f6       ..
.bytecode_opcode_fb_handler
    lda #0                                                            ; 8e52: a9 00       ..
    beq c8e4a                                                         ; 8e54: f0 f4       ..
.bytecode_opcode_5a_handler
.bytecode_opcode_5b_handler
    lda something_table - 90,x                                        ; 8e56: bd b7 a6    ...
    sta l0663                                                         ; 8e59: 8d 63 06    .c.
    jsr sub_c8b88                                                     ; 8e5c: 20 88 8b     ..
    lda l006a                                                         ; 8e5f: a5 6a       .j
    cmp l006c                                                         ; 8e61: c5 6c       .l
    bne c8e41                                                         ; 8e63: d0 dc       ..
    lda l006b                                                         ; 8e65: a5 6b       .k
    cmp l006d                                                         ; 8e67: c5 6d       .m
    jmp c8e35                                                         ; 8e69: 4c 35 8e    L5.

.bytecode_opcode_68_handler
.bytecode_opcode_69_handler
    lda something_table - 104,x                                       ; 8e6c: bd a9 a6    ...
    sta l0663                                                         ; 8e6f: 8d 63 06    .c.
    jsr sub_c9a08                                                     ; 8e72: 20 08 9a     ..
.loop_c8e75
    lda (l0000),y                                                     ; 8e75: b1 00       ..
    eor (l000a),y                                                     ; 8e77: 51 0a       Q.
    bne c8e41                                                         ; 8e79: d0 c6       ..
    dey                                                               ; 8e7b: 88          .
    bpl loop_c8e75                                                    ; 8e7c: 10 f7       ..
    bmi c8e3d                                                         ; 8e7e: 30 bd       0.
.bytecode_opcode_6a_handler
    jsr sub_c9a08                                                     ; 8e80: 20 08 9a     ..
.loop_c8e83
    lda (l000a),y                                                     ; 8e83: b1 0a       ..
    eor #&ff                                                          ; 8e85: 49 ff       I.
    and (l0000),y                                                     ; 8e87: 31 00       1.
    bne bytecode_opcode_fb_handler                                    ; 8e89: d0 c7       ..
    dey                                                               ; 8e8b: 88          .
    bpl loop_c8e83                                                    ; 8e8c: 10 f5       ..
    bmi bytecode_opcode_fe_handler                                    ; 8e8e: 30 b8       0.
.bytecode_opcode_6b_handler
    jsr sub_c9a08                                                     ; 8e90: 20 08 9a     ..
.loop_c8e93
    lda (l0000),y                                                     ; 8e93: b1 00       ..
    eor #&ff                                                          ; 8e95: 49 ff       I.
    and (l000a),y                                                     ; 8e97: 31 0a       1.
    bne bytecode_opcode_fb_handler                                    ; 8e99: d0 b7       ..
    dey                                                               ; 8e9b: 88          .
    bpl loop_c8e93                                                    ; 8e9c: 10 f5       ..
    bmi bytecode_opcode_fe_handler                                    ; 8e9e: 30 a8       0.
.bytecode_opcode_5c_handler
.bytecode_opcode_5d_handler
.bytecode_opcode_5e_handler
.bytecode_opcode_5f_handler
.bytecode_opcode_60_handler
.bytecode_opcode_61_handler
    lda something_table - 92,x                                        ; 8ea0: bd b5 a6    ...
    sta l0663                                                         ; 8ea3: 8d 63 06    .c.
    jsr sub_c9a68                                                     ; 8ea6: 20 68 9a     h.
    jsr c9a8a                                                         ; 8ea9: 20 8a 9a     ..
    jsr sub_c9a19                                                     ; 8eac: 20 19 9a     ..
    jsr c8eb5                                                         ; 8eaf: 20 b5 8e     ..
    jmp c8e35                                                         ; 8eb2: 4c 35 8e    L5.

.c8eb5
    ldy #3                                                            ; 8eb5: a0 03       ..
    lda (l000c),y                                                     ; 8eb7: b1 0c       ..
    eor (l000a),y                                                     ; 8eb9: 51 0a       Q.
    sta l0661                                                         ; 8ebb: 8d 61 06    .a.
.loop_c8ebe
    lda (l000c),y                                                     ; 8ebe: b1 0c       ..
    cmp (l000a),y                                                     ; 8ec0: d1 0a       ..
    bne c8ec9                                                         ; 8ec2: d0 05       ..
    dey                                                               ; 8ec4: 88          .
    bpl loop_c8ebe                                                    ; 8ec5: 10 f7       ..
    iny                                                               ; 8ec7: c8          .
    rts                                                               ; 8ec8: 60          `

.c8ec9
    ror a                                                             ; 8ec9: 6a          j
    eor l0661                                                         ; 8eca: 4d 61 06    Ma.
    rol a                                                             ; 8ecd: 2a          *
    lda #1                                                            ; 8ece: a9 01       ..
    rts                                                               ; 8ed0: 60          `

.bytecode_opcode_6c_handler
.bytecode_opcode_6d_handler
.bytecode_opcode_6e_handler
.bytecode_opcode_6f_handler
.bytecode_opcode_70_handler
.bytecode_opcode_71_handler
    lda something_table - 108,x                                       ; 8ed1: bd a5 a6    ...
    sta l0663                                                         ; 8ed4: 8d 63 06    .c.
    jsr sub_c9af9                                                     ; 8ed7: 20 f9 9a     ..
    jsr sub_c8b88                                                     ; 8eda: 20 88 8b     ..
    ldy #0                                                            ; 8edd: a0 00       ..
.c8edf
    lda (l006a),y                                                     ; 8edf: b1 6a       .j
    cmp (l006c),y                                                     ; 8ee1: d1 6c       .l
    bne c8ef6                                                         ; 8ee3: d0 11       ..
    iny                                                               ; 8ee5: c8          .
    bne c8eee                                                         ; 8ee6: d0 06       ..
    inc l006b                                                         ; 8ee8: e6 6b       .k
    inc l006d                                                         ; 8eea: e6 6d       .m
    dec l0013                                                         ; 8eec: c6 13       ..
.c8eee
    cpy l0012                                                         ; 8eee: c4 12       ..
    bne c8edf                                                         ; 8ef0: d0 ed       ..
    lda l0013                                                         ; 8ef2: a5 13       ..
    bne c8edf                                                         ; 8ef4: d0 e9       ..
.c8ef6
    jsr c8e35                                                         ; 8ef6: 20 35 8e     5.
    lda #3                                                            ; 8ef9: a9 03       ..
    rts                                                               ; 8efb: 60          `

.bytecode_opcode_81_handler
    jsr sub_c9a70                                                     ; 8efc: 20 70 9a     p.
    jsr sub_c9af1                                                     ; 8eff: 20 f1 9a     ..
    jmp c8f10                                                         ; 8f02: 4c 10 8f    L..

.bytecode_opcode_83_handler
    jsr sub_c9a70                                                     ; 8f05: 20 70 9a     p.
    jsr sub_c9cb4                                                     ; 8f08: 20 b4 9c     ..
    bcc c8f10                                                         ; 8f0b: 90 03       ..
    jmp bytecode_opcode_fb_handler                                    ; 8f0d: 4c 52 8e    LR.

.c8f10
    tax                                                               ; 8f10: aa          .
    jsr sub_c8f99                                                     ; 8f11: 20 99 8f     ..
    jmp c8e46                                                         ; 8f14: 4c 46 8e    LF.

.bytecode_opcode_2c_handler
    jsr sub_c9cb4                                                     ; 8f17: 20 b4 9c     ..
    tax                                                               ; 8f1a: aa          .
    bcs c8f2c                                                         ; 8f1b: b0 0f       ..
    bcc c8f45                                                         ; 8f1d: 90 26       .&
.bytecode_opcode_2d_handler
    jsr sub_c9cb4                                                     ; 8f1f: 20 b4 9c     ..
    tax                                                               ; 8f22: aa          .
    bcs c8f2c                                                         ; 8f23: b0 07       ..
    jsr sub_c9cb4                                                     ; 8f25: 20 b4 9c     ..
    bcs c8f2c                                                         ; 8f28: b0 02       ..
    bcc c8f45                                                         ; 8f2a: 90 19       ..
.c8f2c
    brk                                                               ; 8f2c: 00          .

    equb &0e                                                          ; 8f2d: 0e          .              ; error code
    equs "Se"                                                         ; 8f2e: 53 65       Se
    equb 128 + ('t')                                                  ; 8f30: f4          .              ; "t "
    equs "value"                                                      ; 8f31: 76 61 6c... val
    equb 0                                                            ; 8f36: 00          .

.bytecode_opcode_2a_handler
    jsr sub_c9af1                                                     ; 8f37: 20 f1 9a     ..
    tax                                                               ; 8f3a: aa          .
    jmp c8f45                                                         ; 8f3b: 4c 45 8f    LE.

.bytecode_opcode_2b_handler
    jsr sub_c9af1                                                     ; 8f3e: 20 f1 9a     ..
    tax                                                               ; 8f41: aa          .
    jsr sub_c9af1                                                     ; 8f42: 20 f1 9a     ..
.c8f45
    sta l0046                                                         ; 8f45: 85 46       .F
    stx l0047                                                         ; 8f47: 86 47       .G
    lda #0                                                            ; 8f49: a9 00       ..
    ldy #&1f                                                          ; 8f4b: a0 1f       ..
.loop_c8f4d
    sta (l0000),y                                                     ; 8f4d: 91 00       ..
    dey                                                               ; 8f4f: 88          .
    bpl loop_c8f4d                                                    ; 8f50: 10 fb       ..
    lda l0047                                                         ; 8f52: a5 47       .G
    cmp l0046                                                         ; 8f54: c5 46       .F
    bcc c8f93                                                         ; 8f56: 90 3b       .;
    lda l0046                                                         ; 8f58: a5 46       .F
    lsr a                                                             ; 8f5a: 4a          J
    lsr a                                                             ; 8f5b: 4a          J
    lsr a                                                             ; 8f5c: 4a          J
    sta l0048                                                         ; 8f5d: 85 48       .H
    lda l0047                                                         ; 8f5f: a5 47       .G
    lsr a                                                             ; 8f61: 4a          J
    lsr a                                                             ; 8f62: 4a          J
    lsr a                                                             ; 8f63: 4a          J
    sta l0049                                                         ; 8f64: 85 49       .I
    sec                                                               ; 8f66: 38          8
    sbc l0048                                                         ; 8f67: e5 48       .H
    tax                                                               ; 8f69: aa          .
    lda #&ff                                                          ; 8f6a: a9 ff       ..
    ldy l0048                                                         ; 8f6c: a4 48       .H
.loop_c8f6e
    sta (l0000),y                                                     ; 8f6e: 91 00       ..
    iny                                                               ; 8f70: c8          .
    dex                                                               ; 8f71: ca          .
    bpl loop_c8f6e                                                    ; 8f72: 10 fa       ..
    lda l0046                                                         ; 8f74: a5 46       .F
    and #7                                                            ; 8f76: 29 07       ).
    tax                                                               ; 8f78: aa          .
    lda la717,x                                                       ; 8f79: bd 17 a7    ...
    ldy l0048                                                         ; 8f7c: a4 48       .H
    and (l0000),y                                                     ; 8f7e: 31 00       1.
    sta (l0000),y                                                     ; 8f80: 91 00       ..
    lda l0047                                                         ; 8f82: a5 47       .G
    and #7                                                            ; 8f84: 29 07       ).
    tax                                                               ; 8f86: aa          .
    lda la717,x                                                       ; 8f87: bd 17 a7    ...
    asl a                                                             ; 8f8a: 0a          .
    eor #&ff                                                          ; 8f8b: 49 ff       I.
    ldy l0049                                                         ; 8f8d: a4 49       .I
    and (l0000),y                                                     ; 8f8f: 31 00       1.
    sta (l0000),y                                                     ; 8f91: 91 00       ..
.c8f93
    jsr sub_c99f4                                                     ; 8f93: 20 f4 99     ..
    lda #1                                                            ; 8f96: a9 01       ..
    rts                                                               ; 8f98: 60          `

.sub_c8f99
    txa                                                               ; 8f99: 8a          .
    and #7                                                            ; 8f9a: 29 07       ).
    tay                                                               ; 8f9c: a8          .
    lda la71f,y                                                       ; 8f9d: b9 1f a7    ...
    pha                                                               ; 8fa0: 48          H
    txa                                                               ; 8fa1: 8a          .
    lsr a                                                             ; 8fa2: 4a          J
    lsr a                                                             ; 8fa3: 4a          J
    lsr a                                                             ; 8fa4: 4a          J
    tay                                                               ; 8fa5: a8          .
    pla                                                               ; 8fa6: 68          h
    and (l000a),y                                                     ; 8fa7: 31 0a       1.
    rts                                                               ; 8fa9: 60          `

.sub_c8faa
    lda l0656                                                         ; 8faa: ad 56 06    .V.
    sta l0014                                                         ; 8fad: 85 14       ..
    ldx #8                                                            ; 8faf: a2 08       ..
.c8fb1
    dex                                                               ; 8fb1: ca          .
    asl l0014                                                         ; 8fb2: 06 14       ..
    bcs c8fb9                                                         ; 8fb4: b0 03       ..
    bne c8fb1                                                         ; 8fb6: d0 f9       ..
    rts                                                               ; 8fb8: 60          `

.c8fb9
    lda l0008                                                         ; 8fb9: a5 08       ..
    cmp l0632,x                                                       ; 8fbb: dd 32 06    .2.
    bne c8fb1                                                         ; 8fbe: d0 f1       ..
    lda l0009                                                         ; 8fc0: a5 09       ..
    cmp l063a,x                                                       ; 8fc2: dd 3a 06    .:.
    bne c8fb1                                                         ; 8fc5: d0 ea       ..
    rts                                                               ; 8fc7: 60          `

.sub_c8fc8
    jsr sub_c9052                                                     ; 8fc8: 20 52 90     R.
    ldx l0047                                                         ; 8fcb: a6 47       .G
    bne c8fd4                                                         ; 8fcd: d0 05       ..
    jsr sub_c9170                                                     ; 8fcf: 20 70 91     p.
    bne c8fd9                                                         ; 8fd2: d0 05       ..
.c8fd4
    jsr sub_c915a                                                     ; 8fd4: 20 5a 91     Z.
    beq c8fe1                                                         ; 8fd7: f0 08       ..
.c8fd9
    lda #osfind_open_input                                            ; 8fd9: a9 40       .@
    jsr osfind                                                        ; 8fdb: 20 ce ff     ..            ; Open file for input (A=64)
    tax                                                               ; 8fde: aa          .              ; A=file handle (or zero on failure)
    beq c8fe5                                                         ; 8fdf: f0 04       ..
.c8fe1
    ldx #&e0                                                          ; 8fe1: a2 e0       ..
    bne c900b                                                         ; 8fe3: d0 26       .&
.c8fe5
    brk                                                               ; 8fe5: 00          .

    equb &1c                                                          ; 8fe6: 1c          .              ; error code
    equs "Fil"                                                        ; 8fe7: 46 69 6c    Fil
    equb 128 + ('e')                                                  ; 8fea: e5          .              ; "e "
    equs "no"                                                         ; 8feb: 6e 6f       no
    equb 128 + ('t')                                                  ; 8fed: f4          .              ; "t "
    equb 128 + 15                                                     ; 8fee: 8f          .              ; "found" (token 15)
    equb 0                                                            ; 8fef: 00          .

.sub_c8ff0
    jsr sub_c9052                                                     ; 8ff0: 20 52 90     R.
    ldx l0047                                                         ; 8ff3: a6 47       .G
    bne c8ffc                                                         ; 8ff5: d0 05       ..
    jsr sub_c9170                                                     ; 8ff7: 20 70 91     p.
    bne c9001                                                         ; 8ffa: d0 05       ..
.c8ffc
    jsr sub_c915a                                                     ; 8ffc: 20 5a 91     Z.
    beq c9009                                                         ; 8fff: f0 08       ..
.c9001
    lda #osfind_open_output                                           ; 9001: a9 80       ..
    jsr osfind                                                        ; 9003: 20 ce ff     ..            ; Open file for output (A=128)
    tax                                                               ; 9006: aa          .              ; A=file handle (or zero on failure)
    beq c8fe5                                                         ; 9007: f0 dc       ..
.c9009
    ldx #&30 ; '0'                                                    ; 9009: a2 30       .0
.c900b
    ldy #3                                                            ; 900b: a0 03       ..
    sta (l0008),y                                                     ; 900d: 91 08       ..
    iny                                                               ; 900f: c8          .
    txa                                                               ; 9010: 8a          .
    sta (l0008),y                                                     ; 9011: 91 08       ..
    jsr sub_c8faa                                                     ; 9013: 20 aa 8f     ..
    bcs c902e                                                         ; 9016: b0 16       ..
    lda l0656                                                         ; 9018: ad 56 06    .V.
    cmp #&ff                                                          ; 901b: c9 ff       ..
    beq c9047                                                         ; 901d: f0 28       .(
    ldx #8                                                            ; 901f: a2 08       ..
.loop_c9021
    dex                                                               ; 9021: ca          .
    asl a                                                             ; 9022: 0a          .
    bcs loop_c9021                                                    ; 9023: b0 fc       ..
    lda l0656                                                         ; 9025: ad 56 06    .V.
    ora la71f,x                                                       ; 9028: 1d 1f a7    ...
    sta l0656                                                         ; 902b: 8d 56 06    .V.
.c902e
    lda l0008                                                         ; 902e: a5 08       ..
    sta l0632,x                                                       ; 9030: 9d 32 06    .2.
    lda l0009                                                         ; 9033: a5 09       ..
    sta l063a,x                                                       ; 9035: 9d 3a 06    .:.
    ldy #0                                                            ; 9038: a0 00       ..
    lda (l0008),y                                                     ; 903a: b1 08       ..
    sta l0642,x                                                       ; 903c: 9d 42 06    .B.
    ldy #3                                                            ; 903f: a0 03       ..
    lda (l0008),y                                                     ; 9041: b1 08       ..
    sta l064a,x                                                       ; 9043: 9d 4a 06    .J.
    rts                                                               ; 9046: 60          `

.c9047
    brk                                                               ; 9047: 00          .

    equb &1d                                                          ; 9048: 1d          .              ; error code
    equs "To"                                                         ; 9049: 54 6f       To
    equb 128 + ('o')                                                  ; 904b: ef          .              ; "o "
    equs "man"                                                        ; 904c: 6d 61 6e    man
    equb 128 + ('y')                                                  ; 904f: f9          .              ; "y "
    equb 128 + 8                                                      ; 9050: 88          .              ; "open" (token 8)
    equb 0                                                            ; 9051: 00          .

.sub_c9052
    sty l0047                                                         ; 9052: 84 47       .G
    tya                                                               ; 9054: 98          .
    beq c905a                                                         ; 9055: f0 03       ..
    jsr sub_c9ad3                                                     ; 9057: 20 d3 9a     ..
.c905a
    jsr sub_c9ae2                                                     ; 905a: 20 e2 9a     ..
    ldy #3                                                            ; 905d: a0 03       ..
    lda (l0002),y                                                     ; 905f: b1 02       ..
    dey                                                               ; 9061: 88          .
    sta (l0008),y                                                     ; 9062: 91 08       ..
    lda (l0002),y                                                     ; 9064: b1 02       ..
    dey                                                               ; 9066: 88          .
    sta (l0008),y                                                     ; 9067: 91 08       ..
    lda (l0002),y                                                     ; 9069: b1 02       ..
    sta l0046                                                         ; 906b: 85 46       .F
    jsr sub_c8faa                                                     ; 906d: 20 aa 8f     ..
    bcc c9084                                                         ; 9070: 90 12       ..
    ldy #3                                                            ; 9072: a0 03       ..
    lda (l0008),y                                                     ; 9074: b1 08       ..
    jsr sub_c9137                                                     ; 9076: 20 37 91     7.
    lda l0047                                                         ; 9079: a5 47       .G
    beq c9084                                                         ; 907b: f0 07       ..
    ldy #0                                                            ; 907d: a0 00       ..
    lda (l0008),y                                                     ; 907f: b1 08       ..
    jsr sub_c913f                                                     ; 9081: 20 3f 91     ?.
.c9084
    lda #0                                                            ; 9084: a9 00       ..
    ldx l0047                                                         ; 9086: a6 47       .G
    bne c90ae                                                         ; 9088: d0 24       .$
    jsr sub_c8faa                                                     ; 908a: 20 aa 8f     ..
    bcc c9095                                                         ; 908d: 90 06       ..
    ldy #0                                                            ; 908f: a0 00       ..
    lda (l0008),y                                                     ; 9091: b1 08       ..
    bne c90b2                                                         ; 9093: d0 1d       ..
.c9095
    lda l0655                                                         ; 9095: ad 55 06    .U.
    cmp #&ff                                                          ; 9098: c9 ff       ..
    beq c9047                                                         ; 909a: f0 ab       ..
    ldx #&ff                                                          ; 909c: a2 ff       ..
.loop_c909e
    inx                                                               ; 909e: e8          .
    lsr a                                                             ; 909f: 4a          J
    bcs loop_c909e                                                    ; 90a0: b0 fc       ..
    lda l0655                                                         ; 90a2: ad 55 06    .U.
    ora la71f,x                                                       ; 90a5: 1d 1f a7    ...
    sta l0655                                                         ; 90a8: 8d 55 06    .U.
    lda la71f,x                                                       ; 90ab: bd 1f a7    ...
.c90ae
    ldy #0                                                            ; 90ae: a0 00       ..
    sta (l0008),y                                                     ; 90b0: 91 08       ..
.c90b2
    rts                                                               ; 90b2: 60          `

.bytecode_opcode_a6_handler
.bytecode_opcode_aa_handler
    ldy #0                                                            ; 90b3: a0 00       ..
    lda #4                                                            ; 90b5: a9 04       ..
    cpx #&a6                                                          ; 90b7: e0 a6       ..
    bne c90d7                                                         ; 90b9: d0 1c       ..
    beq c90c5                                                         ; 90bb: f0 08       ..
.bytecode_opcode_a7_handler
.bytecode_opcode_ab_handler
    ldy #1                                                            ; 90bd: a0 01       ..
    lda #5                                                            ; 90bf: a9 05       ..
    cpx #&a7                                                          ; 90c1: e0 a7       ..
    bne c90d7                                                         ; 90c3: d0 12       ..
.c90c5
    pha                                                               ; 90c5: 48          H
    jsr sub_c8fc8                                                     ; 90c6: 20 c8 8f     ..
    lda l0046                                                         ; 90c9: a5 46       .F
    bne c90d2                                                         ; 90cb: d0 05       ..
    jsr c92a7                                                         ; 90cd: 20 a7 92     ..
    pla                                                               ; 90d0: 68          h
    rts                                                               ; 90d1: 60          `

.c90d2
    jsr sub_c944c                                                     ; 90d2: 20 4c 94     L.
    pla                                                               ; 90d5: 68          h
    rts                                                               ; 90d6: 60          `

.c90d7
    pha                                                               ; 90d7: 48          H
    jsr sub_c8ff0                                                     ; 90d8: 20 f0 8f     ..
    pla                                                               ; 90db: 68          h
    rts                                                               ; 90dc: 60          `

.sub_c90dd
    lda #0                                                            ; 90dd: a9 00       ..
    beq c90e5                                                         ; 90df: f0 04       ..
.bytecode_opcode_db_handler
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

.sub_c915a
    ldy #4                                                            ; 915a: a0 04       ..
    jsr sub_c9d7a                                                     ; 915c: 20 7a 9d     z.
    lda l041a                                                         ; 915f: ad 1a 04    ...
    cmp #&0d                                                          ; 9162: c9 0d       ..
    bne set_yx_to_41a                                                 ; 9164: d0 1e       ..
    lda l0046                                                         ; 9166: a5 46       .F
    bne c916b                                                         ; 9168: d0 01       ..
.c916a
    rts                                                               ; 916a: 60          `

.c916b
    brk                                                               ; 916b: 00          .

    equb &1e                                                          ; 916c: 1e          .              ; error code
    equb 128 + 11                                                     ; 916d: 8b          .              ; "Not " (token 11)
    equb 128 + 10                                                     ; 916e: 8a          .              ; "text" (token 10)
    equb 0                                                            ; 916f: 00          .

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
.set_yx_to_41a
    ldx #&1a                                                          ; 9184: a2 1a       ..
    ldy #4                                                            ; 9186: a0 04       ..
    rts                                                               ; 9188: 60          `

.sub_c9189
    ldx #&1a                                                          ; 9189: a2 1a       ..
    ldy #6                                                            ; 918b: a0 06       ..
    rts                                                               ; 918d: 60          `

.sub_c918e
    ldy #7                                                            ; 918e: a0 07       ..
    lda (l001a),y                                                     ; 9190: b1 1a       ..
    sta l0008                                                         ; 9192: 85 08       ..
    iny                                                               ; 9194: c8          .
    lda (l001a),y                                                     ; 9195: b1 1a       ..
    sta l0009                                                         ; 9197: 85 09       ..
    rts                                                               ; 9199: 60          `

.sub_c919a
    clc                                                               ; 919a: 18          .
    lda l0008                                                         ; 919b: a5 08       ..
    adc #5                                                            ; 919d: 69 05       i.
    sta l000a                                                         ; 919f: 85 0a       ..
    lda l0009                                                         ; 91a1: a5 09       ..
    adc #0                                                            ; 91a3: 69 00       i.
    sta l000b                                                         ; 91a5: 85 0b       ..
    rts                                                               ; 91a7: 60          `

.sub_c91a8
    jsr sub_c918e                                                     ; 91a8: 20 8e 91     ..
.sub_c91ab
    jsr sub_c919a                                                     ; 91ab: 20 9a 91     ..
    jsr sub_c9227                                                     ; 91ae: 20 27 92     '.
    ldy #4                                                            ; 91b1: a0 04       ..
    lda (l0008),y                                                     ; 91b3: b1 08       ..
    and #&80                                                          ; 91b5: 29 80       ).
    beq c91c6                                                         ; 91b7: f0 0d       ..
    lda (l0008),y                                                     ; 91b9: b1 08       ..
    and #&10                                                          ; 91bb: 29 10       ).
    bne c91c0                                                         ; 91bd: d0 01       ..
    rts                                                               ; 91bf: 60          `

.c91c0
    brk                                                               ; 91c0: 00          .

    equb &21                                                          ; 91c1: 21          !              ; error code
    equs "EOF"                                                        ; 91c2: 45 4f 46    EOF
    equb 0                                                            ; 91c5: 00          .

.c91c6
    brk                                                               ; 91c6: 00          .

    equb &20                                                          ; 91c7: 20                         ; error code
    equs "Writ"                                                       ; 91c8: 57 72 69... Wri
    equb 128 + ('e')                                                  ; 91cc: e5          .              ; "e "
    equb 128 + 1                                                      ; 91cd: 81          .              ; "only" (token 1)
    equb 0                                                            ; 91ce: 00          .

.sub_c91cf
    jsr sub_c919a                                                     ; 91cf: 20 9a 91     ..
    jsr sub_c91e2                                                     ; 91d2: 20 e2 91     ..
    lda (l0008),y                                                     ; 91d5: b1 08       ..
    and #&40 ; '@'                                                    ; 91d7: 29 40       )@
    beq c91dc                                                         ; 91d9: f0 01       ..
    rts                                                               ; 91db: 60          `

.c91dc
    jmp c8a96                                                         ; 91dc: 4c 96 8a    L..

.sub_c91df
    jsr sub_c918e                                                     ; 91df: 20 8e 91     ..
.sub_c91e2
    jsr sub_c8faa                                                     ; 91e2: 20 aa 8f     ..
    bcc c91f8                                                         ; 91e5: 90 11       ..
    ldy #4                                                            ; 91e7: a0 04       ..
    lda (l0008),y                                                     ; 91e9: b1 08       ..
    and #&80                                                          ; 91eb: 29 80       ).
    bne c91f0                                                         ; 91ed: d0 01       ..
    rts                                                               ; 91ef: 60          `

.c91f0
    brk                                                               ; 91f0: 00          .

    equb &1f                                                          ; 91f1: 1f          .              ; error code
    equs "Rea"                                                        ; 91f2: 52 65 61    Rea
    equb 128 + ('d')                                                  ; 91f5: e4          .              ; "d "
    equb 128 + 1                                                      ; 91f6: 81          .              ; "only" (token 1)
    equb 0                                                            ; 91f7: 00          .

.c91f8
    brk                                                               ; 91f8: 00          .

    equb &13                                                          ; 91f9: 13          .              ; error code
    equb 128 + 4                                                      ; 91fa: 84          .              ; "Undefined " (token 4)
    equb 128 + 6                                                      ; 91fb: 86          .              ; "file" (token 6)
    equb 0                                                            ; 91fc: 00          .

.bytecode_opcode_9b_handler
    jsr sub_c9213                                                     ; 91fd: 20 13 92     ..
    sta l0657                                                         ; 9200: 8d 57 06    .W.
    lda #1                                                            ; 9203: a9 01       ..
    rts                                                               ; 9205: 60          `

.bytecode_opcode_9a_handler
    jsr sub_c9213                                                     ; 9206: 20 13 92     ..
    cmp #&31 ; '1'                                                    ; 9209: c9 31       .1
    bcs c921b                                                         ; 920b: b0 0e       ..
    sta l0658                                                         ; 920d: 8d 58 06    .X.
    lda #1                                                            ; 9210: a9 01       ..
    rts                                                               ; 9212: 60          `

.sub_c9213
    jsr sub_c9cb4                                                     ; 9213: 20 b4 9c     ..
    bcs c921b                                                         ; 9216: b0 03       ..
    beq c921b                                                         ; 9218: f0 01       ..
    rts                                                               ; 921a: 60          `

.c921b
    brk                                                               ; 921b: 00          .

    equb &22                                                          ; 921c: 22          "              ; error code
    equb 128 + 9                                                      ; 921d: 89          .              ; "Field " (token 9)
    equs "width"                                                      ; 921e: 77 69 64... wid
    equb 0                                                            ; 9223: 00          .

.sub_c9224
    jsr sub_c9ae2                                                     ; 9224: 20 e2 9a     ..
.sub_c9227
    jsr sub_c8faa                                                     ; 9227: 20 aa 8f     ..
    bcc c91f8                                                         ; 922a: 90 cc       ..
    ldy #4                                                            ; 922c: a0 04       ..
    lda (l0008),y                                                     ; 922e: b1 08       ..
    and #4                                                            ; 9230: 29 04       ).
    beq c9267                                                         ; 9232: f0 33       .3
    lda (l0008),y                                                     ; 9234: b1 08       ..
    eor #4                                                            ; 9236: 49 04       I.
    sta (l0008),y                                                     ; 9238: 91 08       ..
.c923a
    ldy #4                                                            ; 923a: a0 04       ..
    lda (l0008),y                                                     ; 923c: b1 08       ..
    and #8                                                            ; 923e: 29 08       ).
    bne c927a                                                         ; 9240: d0 38       .8
    dey                                                               ; 9242: 88          .
    lda (l0008),y                                                     ; 9243: b1 08       ..
    bne c9268                                                         ; 9245: d0 21       .!
    jsr sub_c9958                                                     ; 9247: 20 58 99     X.
    cmp #&80                                                          ; 924a: c9 80       ..
    beq c926e                                                         ; 924c: f0 20       .
.loop_c924e
    tax                                                               ; 924e: aa          .
    ldy #4                                                            ; 924f: a0 04       ..
    lda (l0008),y                                                     ; 9251: b1 08       ..
    and #&df                                                          ; 9253: 29 df       ).
    sta (l0008),y                                                     ; 9255: 91 08       ..
    cpx #&0d                                                          ; 9257: e0 0d       ..
    bne c9263                                                         ; 9259: d0 08       ..
.loop_c925b
    lda (l0008),y                                                     ; 925b: b1 08       ..
    ora #&20 ; ' '                                                    ; 925d: 09 20       .
    sta (l0008),y                                                     ; 925f: 91 08       ..
    ldx #&20 ; ' '                                                    ; 9261: a2 20       .
.c9263
    iny                                                               ; 9263: c8          .
    txa                                                               ; 9264: 8a          .
    sta (l0008),y                                                     ; 9265: 91 08       ..
.c9267
    rts                                                               ; 9267: 60          `

.c9268
    tay                                                               ; 9268: a8          .              ; Y=file handle
    jsr osbget                                                        ; 9269: 20 d7 ff     ..            ; Read a single byte from an open file Y
    bcc loop_c924e                                                    ; 926c: 90 e0       ..
.c926e
    ldy #4                                                            ; 926e: a0 04       ..
    lda (l0008),y                                                     ; 9270: b1 08       ..
    ora #8                                                            ; 9272: 09 08       ..
    sta (l0008),y                                                     ; 9274: 91 08       ..
    and #&20 ; ' '                                                    ; 9276: 29 20       )
    beq loop_c925b                                                    ; 9278: f0 e1       ..
.c927a
    lda (l0008),y                                                     ; 927a: b1 08       ..
    eor #&70 ; 'p'                                                    ; 927c: 49 70       Ip
    sta (l0008),y                                                     ; 927e: 91 08       ..
    lda #0                                                            ; 9280: a9 00       ..
    rts                                                               ; 9282: 60          `

.bytecode_opcode_87_handler
    jsr sub_c91a8                                                     ; 9283: 20 a8 91     ..
.loop_c9286
    ldy #4                                                            ; 9286: a0 04       ..
    lda (l0008),y                                                     ; 9288: b1 08       ..
    and #&20 ; ' '                                                    ; 928a: 29 20       )
    bne c92a7                                                         ; 928c: d0 19       ..
    jsr c923a                                                         ; 928e: 20 3a 92     :.
    jmp loop_c9286                                                    ; 9291: 4c 86 92    L..

.bytecode_opcode_8d_handler
    jsr sub_c9ae2                                                     ; 9294: 20 e2 9a     ..
    jsr sub_c91ab                                                     ; 9297: 20 ab 91     ..
    jmp c92a7                                                         ; 929a: 4c a7 92    L..

.bytecode_opcode_88_handler
    jsr sub_c91a8                                                     ; 929d: 20 a8 91     ..
    ldy #0                                                            ; 92a0: a0 00       ..
    lda (l000a),y                                                     ; 92a2: b1 0a       ..
    jsr sub_c99f8                                                     ; 92a4: 20 f8 99     ..
.c92a7
    ldy #3                                                            ; 92a7: a0 03       ..
    lda (l0008),y                                                     ; 92a9: b1 08       ..
    bne c92b7                                                         ; 92ab: d0 0a       ..
    iny                                                               ; 92ad: c8          .
    lda (l0008),y                                                     ; 92ae: b1 08       ..
    ora #4                                                            ; 92b0: 09 04       ..
    sta (l0008),y                                                     ; 92b2: 91 08       ..
    lda #1                                                            ; 92b4: a9 01       ..
    rts                                                               ; 92b6: 60          `

.c92b7
    jsr c923a                                                         ; 92b7: 20 3a 92     :.
    lda #1                                                            ; 92ba: a9 01       ..
    rts                                                               ; 92bc: 60          `

.bytecode_opcode_8a_handler
    jsr sub_c91a8                                                     ; 92bd: 20 a8 91     ..
    lda #0                                                            ; 92c0: a9 00       ..
    jsr sub_c9daa                                                     ; 92c2: 20 aa 9d     ..
    jsr sub_c9d90                                                     ; 92c5: 20 90 9d     ..
    lda #1                                                            ; 92c8: a9 01       ..
    rts                                                               ; 92ca: 60          `

.bytecode_opcode_8b_handler
    jsr sub_c91a8                                                     ; 92cb: 20 a8 91     ..
    lda #0                                                            ; 92ce: a9 00       ..
    jsr sub_c9dc3                                                     ; 92d0: 20 c3 9d     ..
    jsr sub_c9da1                                                     ; 92d3: 20 a1 9d     ..
    lda #1                                                            ; 92d6: a9 01       ..
    rts                                                               ; 92d8: 60          `

.oswrch_or_osbput
    tax                                                               ; 92d9: aa          .
    ldy #4                                                            ; 92da: a0 04       ..
    lda (l0008),y                                                     ; 92dc: b1 08       ..
    and #&9f                                                          ; 92de: 29 9f       ).
    sta (l0008),y                                                     ; 92e0: 91 08       ..
    dey                                                               ; 92e2: 88          .
    lda (l0008),y                                                     ; 92e3: b1 08       ..
    bne c92eb                                                         ; 92e5: d0 04       ..
    txa                                                               ; 92e7: 8a          .
    jmp oswrch                                                        ; 92e8: 4c ee ff    L..            ; Write character

.c92eb
    tay                                                               ; 92eb: a8          .              ; Y=file handle
    txa                                                               ; 92ec: 8a          .
    jmp osbput                                                        ; 92ed: 4c d4 ff    L..            ; Write a single byte A to an open file Y

.bytecode_opcode_8f_handler
    jsr sub_c9ae2                                                     ; 92f0: 20 e2 9a     ..
    jsr sub_c91cf                                                     ; 92f3: 20 cf 91     ..
    ldy #0                                                            ; 92f6: a0 00       ..
    lda (l000a),y                                                     ; 92f8: b1 0a       ..
    jsr oswrch_or_osbput                                              ; 92fa: 20 d9 92     ..
    lda #1                                                            ; 92fd: a9 01       ..
    rts                                                               ; 92ff: 60          `

.sub_c9300
    lda l0657                                                         ; 9300: ad 57 06    .W.
    bne c9308                                                         ; 9303: d0 03       ..
    sty l0657                                                         ; 9305: 8c 57 06    .W.
.c9308
    rts                                                               ; 9308: 60          `

.bytecode_opcode_97_handler
    jsr sub_c91df                                                     ; 9309: 20 df 91     ..
    ldy #&0c                                                          ; 930c: a0 0c       ..
    jsr sub_c9300                                                     ; 930e: 20 00 93     ..
    jsr sub_c8b88                                                     ; 9311: 20 88 8b     ..
    jsr sub_ca3ea                                                     ; 9314: 20 ea a3     ..
    ldx #1                                                            ; 9317: a2 01       ..
    lda #0                                                            ; 9319: a9 00       ..
.c931b
    jsr sub_c9f3c                                                     ; 931b: 20 3c 9f     <.
.c931e
    jsr set_yx_to_41a                                                 ; 931e: 20 84 91     ..
    jmp c9340                                                         ; 9321: 4c 40 93    L@.

.bytecode_opcode_95_handler
    jsr sub_c91df                                                     ; 9324: 20 df 91     ..
    ldy #1                                                            ; 9327: a0 01       ..
    jsr sub_c9300                                                     ; 9329: 20 00 93     ..
    jsr sub_c9a11                                                     ; 932c: 20 11 9a     ..
    ldx l0000                                                         ; 932f: a6 00       ..
    ldy l0001                                                         ; 9331: a4 01       ..
    lda #1                                                            ; 9333: a9 01       ..
.oswrch_or_osbput_aligned_string_yx
    cmp l0657                                                         ; 9335: cd 57 06    .W.
    bcc c933d                                                         ; 9338: 90 03       ..
    lda l0657                                                         ; 933a: ad 57 06    .W.
.c933d
    sta l065f                                                         ; 933d: 8d 5f 06    ._.
.c9340
    stx l000a                                                         ; 9340: 86 0a       ..
    sty l000b                                                         ; 9342: 84 0b       ..
.loop_c9344
    lda l065f                                                         ; 9344: ad 5f 06    ._.
    cmp l0657                                                         ; 9347: cd 57 06    .W.
    bcs c9356                                                         ; 934a: b0 0a       ..
    lda #&20 ; ' '                                                    ; 934c: a9 20       .
    jsr oswrch_or_osbput                                              ; 934e: 20 d9 92     ..
    dec l0657                                                         ; 9351: ce 57 06    .W.
    bne loop_c9344                                                    ; 9354: d0 ee       ..
.c9356
    ldy #0                                                            ; 9356: a0 00       ..
    sty l0016                                                         ; 9358: 84 16       ..
    sty l0657                                                         ; 935a: 8c 57 06    .W.
    sty l0658                                                         ; 935d: 8c 58 06    .X.
.loop_c9360
    ldy l0016                                                         ; 9360: a4 16       ..
    lda (l000a),y                                                     ; 9362: b1 0a       ..
    jsr oswrch_or_osbput                                              ; 9364: 20 d9 92     ..
    inc l0016                                                         ; 9367: e6 16       ..
    dec l065f                                                         ; 9369: ce 5f 06    ._.
    bne loop_c9360                                                    ; 936c: d0 f2       ..
    lda #1                                                            ; 936e: a9 01       ..
    rts                                                               ; 9370: 60          `

.bytecode_opcode_9c_handler
    jsr sub_c91df                                                     ; 9371: 20 df 91     ..
    jsr sub_c9ac4                                                     ; 9374: 20 c4 9a     ..
    ldy #1                                                            ; 9377: a0 01       ..
    jsr sub_c9afb                                                     ; 9379: 20 fb 9a     ..
    beq c9391                                                         ; 937c: f0 13       ..
    lda l0657                                                         ; 937e: ad 57 06    .W.
    bne c9397                                                         ; 9381: d0 14       ..
.loop_c9383
    ldy #0                                                            ; 9383: a0 00       ..
    lda (l000a),y                                                     ; 9385: b1 0a       ..
    jsr oswrch_or_osbput                                              ; 9387: 20 d9 92     ..
    jsr sub_c94ba                                                     ; 938a: 20 ba 94     ..
    bne loop_c9383                                                    ; 938d: d0 f4       ..
    beq c939e                                                         ; 938f: f0 0d       ..
.c9391
    ldy l0012                                                         ; 9391: a4 12       ..
    jsr sub_c9300                                                     ; 9393: 20 00 93     ..
    tya                                                               ; 9396: 98          .
.c9397
    ldx l000a                                                         ; 9397: a6 0a       ..
    ldy l000b                                                         ; 9399: a4 0b       ..
    jsr oswrch_or_osbput_aligned_string_yx                            ; 939b: 20 35 93     5.
.c939e
    lda #3                                                            ; 939e: a9 03       ..
    rts                                                               ; 93a0: 60          `

.bytecode_opcode_94_handler
    jsr sub_c91df                                                     ; 93a1: 20 df 91     ..
.sub_c93a4
    ldy #3                                                            ; 93a4: a0 03       ..
    lda (l0008),y                                                     ; 93a6: b1 08       ..
    bne c93af                                                         ; 93a8: d0 05       ..
    lda #&0a                                                          ; 93aa: a9 0a       ..
    jsr oswrch_or_osbput                                              ; 93ac: 20 d9 92     ..
.c93af
    lda #&0d                                                          ; 93af: a9 0d       ..
    jsr oswrch_or_osbput                                              ; 93b1: 20 d9 92     ..
    ldy #4                                                            ; 93b4: a0 04       ..
    lda (l0008),y                                                     ; 93b6: b1 08       ..
    ora #&20 ; ' '                                                    ; 93b8: 09 20       .
    sta (l0008),y                                                     ; 93ba: 91 08       ..
    lda #1                                                            ; 93bc: a9 01       ..
    rts                                                               ; 93be: 60          `

.bytecode_opcode_89_handler
    jsr sub_c9ae2                                                     ; 93bf: 20 e2 9a     ..
    jsr sub_c91e2                                                     ; 93c2: 20 e2 91     ..
    lda (l0008),y                                                     ; 93c5: b1 08       ..
    and #&20 ; ' '                                                    ; 93c7: 29 20       )
    bne c93ce                                                         ; 93c9: d0 03       ..
    jsr sub_c93a4                                                     ; 93cb: 20 a4 93     ..
.c93ce
    lda #&0c                                                          ; 93ce: a9 0c       ..
    jsr oswrch_or_osbput                                              ; 93d0: 20 d9 92     ..
    lda #1                                                            ; 93d3: a9 01       ..
    rts                                                               ; 93d5: 60          `

.bytecode_opcode_ad_handler
    jsr sub_c9224                                                     ; 93d6: 20 24 92     $.
    ldy #4                                                            ; 93d9: a0 04       ..
    lda (l0008),y                                                     ; 93db: b1 08       ..
    and #&10                                                          ; 93dd: 29 10       ).
    bne c93e8                                                         ; 93df: d0 07       ..
    lda (l0008),y                                                     ; 93e1: b1 08       ..
    and #&20 ; ' '                                                    ; 93e3: 29 20       )
    jmp c8e46                                                         ; 93e5: 4c 46 8e    LF.

.c93e8
    jmp c91c0                                                         ; 93e8: 4c c0 91    L..

.bytecode_opcode_ae_handler
    jsr sub_c9224                                                     ; 93eb: 20 24 92     $.
    ldy #4                                                            ; 93ee: a0 04       ..
    lda (l0008),y                                                     ; 93f0: b1 08       ..
    and #&10                                                          ; 93f2: 29 10       ).
    jmp c8e46                                                         ; 93f4: 4c 46 8e    LF.

.bytecode_opcode_8e_handler
    jsr sub_c9ae2                                                     ; 93f7: 20 e2 9a     ..
    jsr sub_c91ab                                                     ; 93fa: 20 ab 91     ..
    jmp c944f                                                         ; 93fd: 4c 4f 94    LO.

.bytecode_opcode_8c_handler
    jsr sub_c91a8                                                     ; 9400: 20 a8 91     ..
    ldy #1                                                            ; 9403: a0 01       ..
    lda (l0008),y                                                     ; 9405: b1 08       ..
    tax                                                               ; 9407: aa          .
    tay                                                               ; 9408: a8          .
    dey                                                               ; 9409: 88          .
.loop_c940a
    lda (l000a),y                                                     ; 940a: b1 0a       ..
    sta (l0000),y                                                     ; 940c: 91 00       ..
    dey                                                               ; 940e: 88          .
    bpl loop_c940a                                                    ; 940f: 10 f9       ..
    txa                                                               ; 9411: 8a          .
    jsr c99fe                                                         ; 9412: 20 fe 99     ..
    jmp c944f                                                         ; 9415: 4c 4f 94    LO.

.bytecode_opcode_91_handler
.bytecode_opcode_92_handler
    lda something_else_table - 145,x                                  ; 9418: bd a3 a6    ...
    sta l004c                                                         ; 941b: 85 4c       .L
    jsr sub_c91a8                                                     ; 941d: 20 a8 91     ..
    lda #0                                                            ; 9420: a9 00       ..
    ldy #3                                                            ; 9422: a0 03       ..
.loop_c9424
    sta (l0000),y                                                     ; 9424: 91 00       ..
    dey                                                               ; 9426: 88          .
    cpy l004c                                                         ; 9427: c4 4c       .L
    bne loop_c9424                                                    ; 9429: d0 f9       ..
.loop_c942b
    lda (l000a),y                                                     ; 942b: b1 0a       ..
    sta (l0000),y                                                     ; 942d: 91 00       ..
    dey                                                               ; 942f: 88          .
    bpl loop_c942b                                                    ; 9430: 10 f9       ..
    jsr sub_c99e4                                                     ; 9432: 20 e4 99     ..
    jmp c944f                                                         ; 9435: 4c 4f 94    LO.

.bytecode_opcode_93_handler
    jsr sub_c9ad3                                                     ; 9438: 20 d3 9a     ..
    jsr sub_c91a8                                                     ; 943b: 20 a8 91     ..
    ldy #1                                                            ; 943e: a0 01       ..
    lda (l0008),y                                                     ; 9440: b1 08       ..
    sta l0012                                                         ; 9442: 85 12       ..
    iny                                                               ; 9444: c8          .
    lda (l0008),y                                                     ; 9445: b1 08       ..
    sta l0013                                                         ; 9447: 85 13       ..
    jsr sub_c89d9                                                     ; 9449: 20 d9 89     ..
.sub_c944c
    jsr sub_c919a                                                     ; 944c: 20 9a 91     ..
.c944f
    jsr sub_c94a8                                                     ; 944f: 20 a8 94     ..
.loop_c9452
    jsr osbget                                                        ; 9452: 20 d7 ff     ..            ; Read a single byte from an open file Y
    bcs c9460                                                         ; 9455: b0 09       ..
    sta (l000a,x)                                                     ; 9457: 81 0a       ..
    jsr sub_c94ba                                                     ; 9459: 20 ba 94     ..
    bne loop_c9452                                                    ; 945c: d0 f4       ..
    beq c9468                                                         ; 945e: f0 08       ..
.c9460
    ldy #4                                                            ; 9460: a0 04       ..
    lda (l0008),y                                                     ; 9462: b1 08       ..
    eor #&50 ; 'P'                                                    ; 9464: 49 50       IP
    sta (l0008),y                                                     ; 9466: 91 08       ..
.c9468
    lda #1                                                            ; 9468: a9 01       ..
    rts                                                               ; 946a: 60          `

.bytecode_opcode_90_handler
    jsr sub_c9ae2                                                     ; 946b: 20 e2 9a     ..
    jsr sub_c91cf                                                     ; 946e: 20 cf 91     ..
    jmp c9490                                                         ; 9471: 4c 90 94    L..

.bytecode_opcode_9d_handler
    jsr sub_c91df                                                     ; 9474: 20 df 91     ..
    ldy #1                                                            ; 9477: a0 01       ..
    lda (l0008),y                                                     ; 9479: b1 08       ..
    jsr c9a72                                                         ; 947b: 20 72 9a     r.
    jmp c9490                                                         ; 947e: 4c 90 94    L..

.bytecode_opcode_a2_handler
.bytecode_opcode_a3_handler
    jsr sub_c9a68                                                     ; 9481: 20 68 9a     h.
    jsr sub_c91df                                                     ; 9484: 20 df 91     ..
    jmp c9490                                                         ; 9487: 4c 90 94    L..

.bytecode_opcode_a4_handler
    jsr sub_c9ac4                                                     ; 948a: 20 c4 9a     ..
    jsr sub_c91df                                                     ; 948d: 20 df 91     ..
.c9490
    jsr sub_c94a8                                                     ; 9490: 20 a8 94     ..
.loop_c9493
    lda (l000a,x)                                                     ; 9493: a1 0a       ..
    jsr osbput                                                        ; 9495: 20 d4 ff     ..            ; Write a single byte A to an open file Y
    jsr sub_c94ba                                                     ; 9498: 20 ba 94     ..
    bne loop_c9493                                                    ; 949b: d0 f6       ..
    ldy #4                                                            ; 949d: a0 04       ..
    lda (l0008),y                                                     ; 949f: b1 08       ..
    and #&bf                                                          ; 94a1: 29 bf       ).
    sta (l0008),y                                                     ; 94a3: 91 08       ..
    lda #1                                                            ; 94a5: a9 01       ..
    rts                                                               ; 94a7: 60          `

.sub_c94a8
    ldy #1                                                            ; 94a8: a0 01       ..
    lda (l0008),y                                                     ; 94aa: b1 08       ..
    sta l0012                                                         ; 94ac: 85 12       ..
    iny                                                               ; 94ae: c8          .
    lda (l0008),y                                                     ; 94af: b1 08       ..
    sta l0013                                                         ; 94b1: 85 13       ..
    iny                                                               ; 94b3: c8          .
    lda (l0008),y                                                     ; 94b4: b1 08       ..
    tay                                                               ; 94b6: a8          .
    ldx #0                                                            ; 94b7: a2 00       ..
    rts                                                               ; 94b9: 60          `

.sub_c94ba
    inc l000a                                                         ; 94ba: e6 0a       ..
    bne c94c0                                                         ; 94bc: d0 02       ..
    inc l000b                                                         ; 94be: e6 0b       ..
.c94c0
    lda l0012                                                         ; 94c0: a5 12       ..
    bne c94c6                                                         ; 94c2: d0 02       ..
    dec l0013                                                         ; 94c4: c6 13       ..
.c94c6
    dec l0012                                                         ; 94c6: c6 12       ..
    bne c94cc                                                         ; 94c8: d0 02       ..
    lda l0013                                                         ; 94ca: a5 13       ..
.c94cc
    rts                                                               ; 94cc: 60          `

.bytecode_opcode_af_handler
    sty l0631                                                         ; 94cd: 8c 31 06    .1.
    sty l0655                                                         ; 94d0: 8c 55 06    .U.
    sty l0656                                                         ; 94d3: 8c 56 06    .V.
    sty l0657                                                         ; 94d6: 8c 57 06    .W.
    sty l0658                                                         ; 94d9: 8c 58 06    .X.
    sty l0652                                                         ; 94dc: 8c 52 06    .R.
    iny                                                               ; 94df: c8          .
    lda (l0002),y                                                     ; 94e0: b1 02       ..
    bne c94e6                                                         ; 94e2: d0 02       ..
    sta l0017                                                         ; 94e4: 85 17       ..
.c94e6
    clc                                                               ; 94e6: 18          .
    iny                                                               ; 94e7: c8          .
    lda l001e                                                         ; 94e8: a5 1e       ..
    adc (l0002),y                                                     ; 94ea: 71 02       q.
    sta l001c                                                         ; 94ec: 85 1c       ..
    iny                                                               ; 94ee: c8          .
    lda l001f                                                         ; 94ef: a5 1f       ..
    adc (l0002),y                                                     ; 94f1: 71 02       q.
    sta l001d                                                         ; 94f3: 85 1d       ..
    lda machine_high_order_address_low                                ; 94f5: ad 00 04    ...
    bne c9510                                                         ; 94f8: d0 16       ..
    sta l0630                                                         ; 94fa: 8d 30 06    .0.
    sta pydis_end                                                     ; 94fd: 8d 00 c0    ...
    sta lc001                                                         ; 9500: 8d 01 c0    ...
    sta lc002                                                         ; 9503: 8d 02 c0    ...
    lda #&38 ; '8'                                                    ; 9506: a9 38       .8
    sta lc003                                                         ; 9508: 8d 03 c0    ...
    lda #&c0                                                          ; 950b: a9 c0       ..
    sta l0631                                                         ; 950d: 8d 31 06    .1.
.c9510
    clc                                                               ; 9510: 18          .
    lda l0018                                                         ; 9511: a5 18       ..
    sta l001a                                                         ; 9513: 85 1a       ..
    adc #9                                                            ; 9515: 69 09       i.
    sta l0000                                                         ; 9517: 85 00       ..
    lda l0019                                                         ; 9519: a5 19       ..
    sta l001b                                                         ; 951b: 85 1b       ..
    adc #0                                                            ; 951d: 69 00       i.
    sta l0001                                                         ; 951f: 85 01       ..
    lda #4                                                            ; 9521: a9 04       ..
    rts                                                               ; 9523: 60          `

.bytecode_opcode_b0_handler
    jsr sub_c90dd                                                     ; 9524: 20 dd 90     ..
    lda l0659                                                         ; 9527: ad 59 06    .Y.
    bne c952f                                                         ; 952a: d0 03       ..
    jmp language_entry_common                                         ; 952c: 4c 44 83    LD.

; TODO: Why do we do this indirect OSCLI via ROM? We could save a few bytes by doing
; LDX#/LDY# and getting rid of the pointer. AFAICS we do not rely on this do vary the
; command depending on which of our two ROMs is paged in, but maybe we do.
.c952f
    ldx oscli_ptr                                                     ; 952f: ae 39 95    .9.
    ldy oscli_ptr + 1                                                 ; 9532: ac 3a 95    .:.
    jmp oscli                                                         ; 9535: 4c f7 ff    L..

    equb &ad                                                          ; 9538: ad          .
.oscli_ptr
    equw fx163_192_2                                                  ; 9539: 46 a7       F.

.bytecode_opcode_b1_handler
    lda l0653                                                         ; 953b: ad 53 06    .S.
    sta (l0000),y                                                     ; 953e: 91 00       ..
    iny                                                               ; 9540: c8          .
    lda l0654                                                         ; 9541: ad 54 06    .T.
    sta (l0000),y                                                     ; 9544: 91 00       ..
    lda l0000                                                         ; 9546: a5 00       ..
    sta l0653                                                         ; 9548: 8d 53 06    .S.
    lda l0001                                                         ; 954b: a5 01       ..
    sta l0654                                                         ; 954d: 8d 54 06    .T.
    lda #9                                                            ; 9550: a9 09       ..
    jsr c99fe                                                         ; 9552: 20 fe 99     ..
    lda #1                                                            ; 9555: a9 01       ..
    rts                                                               ; 9557: 60          `

.bytecode_opcode_df_handler
    jsr bytecode_opcode_b1_handler                                    ; 9558: 20 3b 95     ;.
.bytecode_opcode_7c_handler
    jsr sub_c9a9c                                                     ; 955b: 20 9c 9a     ..
    ldx #2                                                            ; 955e: a2 02       ..
.c9560
    ldy #0                                                            ; 9560: a0 00       ..
    lda (l0008),y                                                     ; 9562: b1 08       ..
.c9564
    asl a                                                             ; 9564: 0a          .
    sta l0016                                                         ; 9565: 85 16       ..
    lda l0653                                                         ; 9567: ad 53 06    .S.
    sta l000c                                                         ; 956a: 85 0c       ..
    lda l0654                                                         ; 956c: ad 54 06    .T.
    sta l000d                                                         ; 956f: 85 0d       ..
    clc                                                               ; 9571: 18          .
    ldy #4                                                            ; 9572: a0 04       ..
    txa                                                               ; 9574: 8a          .
    adc l0002                                                         ; 9575: 65 02       e.
    sta (l000c),y                                                     ; 9577: 91 0c       ..
    iny                                                               ; 9579: c8          .
    lda #0                                                            ; 957a: a9 00       ..
    adc l0003                                                         ; 957c: 65 03       e.
    sta (l000c),y                                                     ; 957e: 91 0c       ..
    ldy #1                                                            ; 9580: a0 01       ..
    lda (l000c),y                                                     ; 9582: b1 0c       ..
    sta l0654                                                         ; 9584: 8d 54 06    .T.
    lda l001b                                                         ; 9587: a5 1b       ..
    sta (l000c),y                                                     ; 9589: 91 0c       ..
    dey                                                               ; 958b: 88          .
    lda (l000c),y                                                     ; 958c: b1 0c       ..
    sta l0653                                                         ; 958e: 8d 53 06    .S.
    lda l001a                                                         ; 9591: a5 1a       ..
    sta (l000c),y                                                     ; 9593: 91 0c       ..
    ldy l0016                                                         ; 9595: a4 16       ..
    lda l001e                                                         ; 9597: a5 1e       ..
    adc (l001c),y                                                     ; 9599: 71 1c       q.
    sta l0002                                                         ; 959b: 85 02       ..
    iny                                                               ; 959d: c8          .
    lda l001f                                                         ; 959e: a5 1f       ..
    adc (l001c),y                                                     ; 95a0: 71 1c       q.
    sta l0003                                                         ; 95a2: 85 03       ..
    lda l000c                                                         ; 95a4: a5 0c       ..
    sta l001a                                                         ; 95a6: 85 1a       ..
    lda l000d                                                         ; 95a8: a5 0d       ..
    sta l001b                                                         ; 95aa: 85 1b       ..
    lda #0                                                            ; 95ac: a9 00       ..
    rts                                                               ; 95ae: 60          `

.bytecode_opcode_dd_handler
    ldy #2                                                            ; 95af: a0 02       ..
    jsr sub_c9afb                                                     ; 95b1: 20 fb 9a     ..
    iny                                                               ; 95b4: c8          .
    lda (l0002),y                                                     ; 95b5: b1 02       ..
    sta l004a                                                         ; 95b7: 85 4a       .J
    iny                                                               ; 95b9: c8          .
    lda (l0002),y                                                     ; 95ba: b1 02       ..
    sta l004b                                                         ; 95bc: 85 4b       .K
    jsr sub_c95d0                                                     ; 95be: 20 d0 95     ..
    lda #6                                                            ; 95c1: a9 06       ..
    rts                                                               ; 95c3: 60          `

.bytecode_opcode_b3_handler
    sty l004b                                                         ; 95c4: 84 4b       .K
    ldy #2                                                            ; 95c6: a0 02       ..
    jsr sub_c9b07                                                     ; 95c8: 20 07 9b     ..
    iny                                                               ; 95cb: c8          .
    lda (l0002),y                                                     ; 95cc: b1 02       ..
    sta l004a                                                         ; 95ce: 85 4a       .J
.sub_c95d0
    ldy #1                                                            ; 95d0: a0 01       ..
    lda (l0002),y                                                     ; 95d2: b1 02       ..
    ldy #6                                                            ; 95d4: a0 06       ..
    sta (l001a),y                                                     ; 95d6: 91 1a       ..
    tax                                                               ; 95d8: aa          .
    stx l0020                                                         ; 95d9: 86 20       .
    clc                                                               ; 95db: 18          .
    lda l0000                                                         ; 95dc: a5 00       ..
    adc l0012                                                         ; 95de: 65 12       e.
    sta l062c                                                         ; 95e0: 8d 2c 06    .,.
    lda l0001                                                         ; 95e3: a5 01       ..
    adc l0013                                                         ; 95e5: 65 13       e.
    sta l062d                                                         ; 95e7: 8d 2d 06    .-.
    jsr sub_c981e                                                     ; 95ea: 20 1e 98     ..
    ldy #3                                                            ; 95ed: a0 03       ..
    lda l0029,x                                                       ; 95ef: b5 29       .)
    sta (l001a),y                                                     ; 95f1: 91 1a       ..
    dey                                                               ; 95f3: 88          .
    lda l0021,x                                                       ; 95f4: b5 21       .!
    sta (l001a),y                                                     ; 95f6: 91 1a       ..
    lda l001a                                                         ; 95f8: a5 1a       ..
    sta l0021,x                                                       ; 95fa: 95 21       .!
    lda l001b                                                         ; 95fc: a5 1b       ..
    sta l0029,x                                                       ; 95fe: 95 29       .)
    lda l065a                                                         ; 9600: ad 5a 06    .Z.
    beq c9614                                                         ; 9603: f0 0f       ..
    ldx l0000                                                         ; 9605: a6 00       ..
    lda l0001                                                         ; 9607: a5 01       ..
    ldy l004a                                                         ; 9609: a4 4a       .J
    sty l0012                                                         ; 960b: 84 12       ..
    ldy l004b                                                         ; 960d: a4 4b       .K
    sty l0013                                                         ; 960f: 84 13       ..
    jsr sub_c99ac                                                     ; 9611: 20 ac 99     ..
.c9614
    clc                                                               ; 9614: 18          .
    lda l0000                                                         ; 9615: a5 00       ..
    adc l004a                                                         ; 9617: 65 4a       eJ
    sta l0000                                                         ; 9619: 85 00       ..
    lda l0001                                                         ; 961b: a5 01       ..
    adc l004b                                                         ; 961d: 65 4b       eK
    sta l0001                                                         ; 961f: 85 01       ..
    lda #4                                                            ; 9621: a9 04       ..
    rts                                                               ; 9623: 60          `

.bytecode_opcode_7d_handler
    lda l001a                                                         ; 9624: a5 1a       ..
    sta l0000                                                         ; 9626: 85 00       ..
    lda l001b                                                         ; 9628: a5 1b       ..
    sta l0001                                                         ; 962a: 85 01       ..
    ldy #6                                                            ; 962c: a0 06       ..
    lda (l001a),y                                                     ; 962e: b1 1a       ..
    tax                                                               ; 9630: aa          .
    dey                                                               ; 9631: 88          .
    lda (l001a),y                                                     ; 9632: b1 1a       ..
    sta l0003                                                         ; 9634: 85 03       ..
    dey                                                               ; 9636: 88          .
    lda (l001a),y                                                     ; 9637: b1 1a       ..
    sta l0002                                                         ; 9639: 85 02       ..
    dey                                                               ; 963b: 88          .
    lda (l001a),y                                                     ; 963c: b1 1a       ..
    sta l0029,x                                                       ; 963e: 95 29       .)
    dey                                                               ; 9640: 88          .
    lda (l001a),y                                                     ; 9641: b1 1a       ..
    sta l0021,x                                                       ; 9643: 95 21       .!
    dey                                                               ; 9645: 88          .
    lda (l0000),y                                                     ; 9646: b1 00       ..
    sta l001b                                                         ; 9648: 85 1b       ..
    dey                                                               ; 964a: 88          .
    lda (l0000),y                                                     ; 964b: b1 00       ..
    sta l001a                                                         ; 964d: 85 1a       ..
    ldy #6                                                            ; 964f: a0 06       ..
    lda (l001a),y                                                     ; 9651: b1 1a       ..
    sta l0020                                                         ; 9653: 85 20       .
    lda #0                                                            ; 9655: a9 00       ..
    rts                                                               ; 9657: 60          `

.sub_c9658
    jsr sub_c9673                                                     ; 9658: 20 73 96     s.
    ldy #2                                                            ; 965b: a0 02       ..
    lda (l000a),y                                                     ; 965d: b1 0a       ..
    tax                                                               ; 965f: aa          .
    iny                                                               ; 9660: c8          .
    cmp (l000a),y                                                     ; 9661: d1 0a       ..
    rts                                                               ; 9663: 60          `

.sub_c9664
    jsr sub_c9a52                                                     ; 9664: 20 52 9a     R.
    jsr sub_c9676                                                     ; 9667: 20 76 96     v.
    jsr c9a8a                                                         ; 966a: 20 8a 9a     ..
    jsr sub_c9a4e                                                     ; 966d: 20 4e 9a     N.
    jmp c8eb5                                                         ; 9670: 4c b5 8e    L..

.sub_c9673
    jsr sub_c9a46                                                     ; 9673: 20 46 9a     F.
.sub_c9676
    jsr sub_c8a1e                                                     ; 9676: 20 1e 8a     ..
    ldy #1                                                            ; 9679: a0 01       ..
    lda (l000a),y                                                     ; 967b: b1 0a       ..
    sta l0009                                                         ; 967d: 85 09       ..
    dey                                                               ; 967f: 88          .
    lda (l000a),y                                                     ; 9680: b1 0a       ..
    sta l0008                                                         ; 9682: 85 08       ..
    rts                                                               ; 9684: 60          `

.sub_c9685
    jsr sub_c9a52                                                     ; 9685: 20 52 9a     R.
    jsr sub_c8a1e                                                     ; 9688: 20 1e 8a     ..
    ldy #1                                                            ; 968b: a0 01       ..
    lda (l000a),y                                                     ; 968d: b1 0a       ..
    tax                                                               ; 968f: aa          .
    dey                                                               ; 9690: 88          .
    lda (l000a),y                                                     ; 9691: b1 0a       ..
    sta l000a                                                         ; 9693: 85 0a       ..
    stx l000b                                                         ; 9695: 86 0b       ..
    jmp c9a8a                                                         ; 9697: 4c 8a 9a    L..

.bytecode_opcode_b6_handler
    jsr sub_c9658                                                     ; 969a: 20 58 96     X.
    beq c96a1                                                         ; 969d: f0 02       ..
    bcs c96bf                                                         ; 969f: b0 1e       ..
.c96a1
    ldy #0                                                            ; 96a1: a0 00       ..
    txa                                                               ; 96a3: 8a          .
    sta (l0008),y                                                     ; 96a4: 91 08       ..
    lda #3                                                            ; 96a6: a9 03       ..
    rts                                                               ; 96a8: 60          `

.bytecode_opcode_b8_handler
    jsr sub_c9664                                                     ; 96a9: 20 64 96     d.
    bcc c96cc                                                         ; 96ac: 90 1e       ..
.c96ae
    ldy #3                                                            ; 96ae: a0 03       ..
.loop_c96b0
    lda (l000a),y                                                     ; 96b0: b1 0a       ..
    sta (l0008),y                                                     ; 96b2: 91 08       ..
    dey                                                               ; 96b4: 88          .
    bpl loop_c96b0                                                    ; 96b5: 10 f9       ..
    lda #3                                                            ; 96b7: a9 03       ..
    rts                                                               ; 96b9: 60          `

.bytecode_opcode_ba_handler
    jsr sub_c9658                                                     ; 96ba: 20 58 96     X.
    bcs c96a1                                                         ; 96bd: b0 e2       ..
.c96bf
    jsr c9709                                                         ; 96bf: 20 09 97     ..
    jmp c9735                                                         ; 96c2: 4c 35 97    L5.

.bytecode_opcode_bc_handler
    jsr sub_c9664                                                     ; 96c5: 20 64 96     d.
    bcc c96ae                                                         ; 96c8: 90 e4       ..
    beq c96ae                                                         ; 96ca: f0 e2       ..
.c96cc
    jsr c971c                                                         ; 96cc: 20 1c 97     ..
    jmp c9735                                                         ; 96cf: 4c 35 97    L5.

.bytecode_opcode_b7_handler
    jsr sub_c9673                                                     ; 96d2: 20 73 96     s.
    clc                                                               ; 96d5: 18          .
    lda (l0008),y                                                     ; 96d6: b1 08       ..
    adc #1                                                            ; 96d8: 69 01       i.
    sta (l0008),y                                                     ; 96da: 91 08       ..
    bcs c9709                                                         ; 96dc: b0 2b       .+
    ldy #3                                                            ; 96de: a0 03       ..
    cmp (l000a),y                                                     ; 96e0: d1 0a       ..
    bcc c9735                                                         ; 96e2: 90 51       .Q
    beq c9735                                                         ; 96e4: f0 4f       .O
    bne c9709                                                         ; 96e6: d0 21       .!
.bytecode_opcode_b9_handler
    jsr sub_c9685                                                     ; 96e8: 20 85 96     ..
    jsr sub_c8b58                                                     ; 96eb: 20 58 8b     X.
    bvs c971c                                                         ; 96ee: 70 2c       p,
    jsr c8eb5                                                         ; 96f0: 20 b5 8e     ..
    bcs c9735                                                         ; 96f3: b0 40       .@
    bcc c971c                                                         ; 96f5: 90 25       .%
.bytecode_opcode_bb_handler
    jsr sub_c9673                                                     ; 96f7: 20 73 96     s.
    sec                                                               ; 96fa: 38          8
    lda (l0008),y                                                     ; 96fb: b1 08       ..
    sbc #1                                                            ; 96fd: e9 01       ..
    sta (l0008),y                                                     ; 96ff: 91 08       ..
    bcc c9709                                                         ; 9701: 90 06       ..
    ldy #3                                                            ; 9703: a0 03       ..
    cmp (l000a),y                                                     ; 9705: d1 0a       ..
    bcs c9735                                                         ; 9707: b0 2c       .,
.c9709
    lda #1                                                            ; 9709: a9 01       ..
    bne c971e                                                         ; 970b: d0 11       ..
.bytecode_opcode_bd_handler
    jsr sub_c9685                                                     ; 970d: 20 85 96     ..
    jsr sub_c8b70                                                     ; 9710: 20 70 8b     p.
    bvs c971c                                                         ; 9713: 70 07       p.
    jsr c8eb5                                                         ; 9715: 20 b5 8e     ..
    bcc c9735                                                         ; 9718: 90 1b       ..
    beq c9735                                                         ; 971a: f0 19       ..
.c971c
    lda #4                                                            ; 971c: a9 04       ..
.c971e
    tax                                                               ; 971e: aa          .
    asl a                                                             ; 971f: 0a          .
    jsr c9a27                                                         ; 9720: 20 27 9a     '.
    jsr sub_c9ae2                                                     ; 9723: 20 e2 9a     ..
    txa                                                               ; 9726: 8a          .
    tay                                                               ; 9727: a8          .
    lda #&b8                                                          ; 9728: a9 b8       ..
.loop_c972a
    dey                                                               ; 972a: 88          .
    sta (l0008),y                                                     ; 972b: 91 08       ..
    bne loop_c972a                                                    ; 972d: d0 fb       ..
    lda #3                                                            ; 972f: a9 03       ..
    rts                                                               ; 9731: 60          `

.bytecode_opcode_44_handler
    jsr sub_c8a1e                                                     ; 9732: 20 1e 8a     ..
.c9735
    ldy #2                                                            ; 9735: a0 02       ..
    lda (l0002),y                                                     ; 9737: b1 02       ..
    tax                                                               ; 9739: aa          .
    dey                                                               ; 973a: 88          .
    lda (l0002),y                                                     ; 973b: b1 02       ..
.c973d
    clc                                                               ; 973d: 18          .
    adc l001e                                                         ; 973e: 65 1e       e.
    sta l0002                                                         ; 9740: 85 02       ..
    txa                                                               ; 9742: 8a          .
    adc l001f                                                         ; 9743: 65 1f       e.
    sta l0003                                                         ; 9745: 85 03       ..
    lda #0                                                            ; 9747: a9 00       ..
    rts                                                               ; 9749: 60          `

.bytecode_opcode_45_handler
    jsr sub_c8a1e                                                     ; 974a: 20 1e 8a     ..
    jsr sub_c9af1                                                     ; 974d: 20 f1 9a     ..
    beq c9735                                                         ; 9750: f0 e3       ..
    lda #3                                                            ; 9752: a9 03       ..
    rts                                                               ; 9754: 60          `

.bytecode_opcode_46_handler
    jsr sub_c8a1e                                                     ; 9755: 20 1e 8a     ..
.loop_c9758
    ldy #1                                                            ; 9758: a0 01       ..
    ldx #0                                                            ; 975a: a2 00       ..
    lda (l0002),y                                                     ; 975c: b1 02       ..
    bpl c9761                                                         ; 975e: 10 01       ..
    dex                                                               ; 9760: ca          .
.c9761
    clc                                                               ; 9761: 18          .
    adc l0002                                                         ; 9762: 65 02       e.
    sta l0002                                                         ; 9764: 85 02       ..
    txa                                                               ; 9766: 8a          .
    adc l0003                                                         ; 9767: 65 03       e.
    sta l0003                                                         ; 9769: 85 03       ..
    lda #0                                                            ; 976b: a9 00       ..
    rts                                                               ; 976d: 60          `

.bytecode_opcode_47_handler
    jsr sub_c8a1e                                                     ; 976e: 20 1e 8a     ..
    jsr sub_c9af1                                                     ; 9771: 20 f1 9a     ..
    beq loop_c9758                                                    ; 9774: f0 e2       ..
    lda #2                                                            ; 9776: a9 02       ..
    rts                                                               ; 9778: 60          `

.bytecode_opcode_48_handler
    ldy #3                                                            ; 9779: a0 03       ..
    lda (l0002),y                                                     ; 977b: b1 02       ..
    sta l0020                                                         ; 977d: 85 20       .
    tax                                                               ; 977f: aa          .
    clc                                                               ; 9780: 18          .
    iny                                                               ; 9781: c8          .
    lda l0021,x                                                       ; 9782: b5 21       .!
    sta l001a                                                         ; 9784: 85 1a       ..
    adc (l0002),y                                                     ; 9786: 71 02       q.
    sta l0000                                                         ; 9788: 85 00       ..
    iny                                                               ; 978a: c8          .
    lda l0029,x                                                       ; 978b: b5 29       .)
    sta l001b                                                         ; 978d: 85 1b       ..
    adc (l0002),y                                                     ; 978f: 71 02       q.
    sta l0001                                                         ; 9791: 85 01       ..
    ldx l0000                                                         ; 9793: a6 00       ..
    jsr c90e5                                                         ; 9795: 20 e5 90     ..
    bne c9735                                                         ; 9798: d0 9b       ..
.sub_c979a
    clc                                                               ; 979a: 18          .
    lda l0012                                                         ; 979b: a5 12       ..
    adc #3                                                            ; 979d: 69 03       i.
    and #&fc                                                          ; 979f: 29 fc       ).
    sta l0012                                                         ; 97a1: 85 12       ..
    bcc c97a7                                                         ; 97a3: 90 02       ..
    inc l0013                                                         ; 97a5: e6 13       ..
.c97a7
    lda #&30 ; '0'                                                    ; 97a7: a9 30       .0
    sta l0008                                                         ; 97a9: 85 08       ..
    ldx #6                                                            ; 97ab: a2 06       ..
.loop_c97ad
    lda l0008                                                         ; 97ad: a5 08       ..
    sta l0010                                                         ; 97af: 85 10       ..
    stx l0011                                                         ; 97b1: 86 11       ..
    ldy #0                                                            ; 97b3: a0 00       ..
    lda (l0010),y                                                     ; 97b5: b1 10       ..
    sta l0008                                                         ; 97b7: 85 08       ..
    iny                                                               ; 97b9: c8          .
    lda (l0010),y                                                     ; 97ba: b1 10       ..
    tax                                                               ; 97bc: aa          .
    beq c9801                                                         ; 97bd: f0 42       .B
    stx l0009                                                         ; 97bf: 86 09       ..
    iny                                                               ; 97c1: c8          .
    lda (l0008),y                                                     ; 97c2: b1 08       ..
    cmp l0012                                                         ; 97c4: c5 12       ..
    iny                                                               ; 97c6: c8          .
    lda (l0008),y                                                     ; 97c7: b1 08       ..
    sbc l0013                                                         ; 97c9: e5 13       ..
    bcc loop_c97ad                                                    ; 97cb: 90 e0       ..
    bne c97e5                                                         ; 97cd: d0 16       ..
    dey                                                               ; 97cf: 88          .
    lda (l0008),y                                                     ; 97d0: b1 08       ..
    cmp l0012                                                         ; 97d2: c5 12       ..
    bne c97e5                                                         ; 97d4: d0 0f       ..
    dey                                                               ; 97d6: 88          .
    lda (l0008),y                                                     ; 97d7: b1 08       ..
    sta (l0010),y                                                     ; 97d9: 91 10       ..
    dey                                                               ; 97db: 88          .
    lda (l0008),y                                                     ; 97dc: b1 08       ..
    sta (l0010),y                                                     ; 97de: 91 10       ..
    ldx l0008                                                         ; 97e0: a6 08       ..
    ldy l0009                                                         ; 97e2: a4 09       ..
    rts                                                               ; 97e4: 60          `

.c97e5
    sec                                                               ; 97e5: 38          8
    ldy #2                                                            ; 97e6: a0 02       ..
    lda (l0008),y                                                     ; 97e8: b1 08       ..
    sbc l0012                                                         ; 97ea: e5 12       ..
    sta (l0008),y                                                     ; 97ec: 91 08       ..
    tax                                                               ; 97ee: aa          .
    iny                                                               ; 97ef: c8          .
    lda (l0008),y                                                     ; 97f0: b1 08       ..
    sbc l0013                                                         ; 97f2: e5 13       ..
    sta (l0008),y                                                     ; 97f4: 91 08       ..
    tay                                                               ; 97f6: a8          .
    clc                                                               ; 97f7: 18          .
    txa                                                               ; 97f8: 8a          .
    adc l0008                                                         ; 97f9: 65 08       e.
    tax                                                               ; 97fb: aa          .
    tya                                                               ; 97fc: 98          .
    adc l0009                                                         ; 97fd: 65 09       e.
    tay                                                               ; 97ff: a8          .
    rts                                                               ; 9800: 60          `

.c9801
    sec                                                               ; 9801: 38          8
    lda l062e                                                         ; 9802: ad 2e 06    ...
    sbc l0012                                                         ; 9805: e5 12       ..
    sta l062e                                                         ; 9807: 8d 2e 06    ...
    tax                                                               ; 980a: aa          .
    lda l062f                                                         ; 980b: ad 2f 06    ./.
    sbc l0013                                                         ; 980e: e5 13       ..
    sta l062f                                                         ; 9810: 8d 2f 06    ./.
    tay                                                               ; 9813: a8          .
.sub_c9814
    bcs c9820                                                         ; 9814: b0 0a       ..
.c9816
    brk                                                               ; 9816: 00          .

    equb &0a                                                          ; 9817: 0a          .              ; error code
    equb 128 + 0                                                      ; 9818: 80          .              ; "No " (token 0)
    equs "room"                                                       ; 9819: 72 6f 6f... roo
    equb 0                                                            ; 981d: 00          .

.sub_c981e
    bcs c9816                                                         ; 981e: b0 f6       ..
.c9820
    lda l062e                                                         ; 9820: ad 2e 06    ...
    cmp l062c                                                         ; 9823: cd 2c 06    .,.
    lda l062f                                                         ; 9826: ad 2f 06    ./.
    sbc l062d                                                         ; 9829: ed 2d 06    .-.
    bcc c9816                                                         ; 982c: 90 e8       ..
    rts                                                               ; 982e: 60          `

.sub_c982f
    clc                                                               ; 982f: 18          .
    lda l0012                                                         ; 9830: a5 12       ..
    adc #3                                                            ; 9832: 69 03       i.
    and #&fc                                                          ; 9834: 29 fc       ).
    sta l0012                                                         ; 9836: 85 12       ..
    bcc c983c                                                         ; 9838: 90 02       ..
    inc l0013                                                         ; 983a: e6 13       ..
.c983c
    lda #&30 ; '0'                                                    ; 983c: a9 30       .0
    sta l004a                                                         ; 983e: 85 4a       .J
    ldx #6                                                            ; 9840: a2 06       ..
.loop_c9842
    lda l004a                                                         ; 9842: a5 4a       .J
    sta l0010                                                         ; 9844: 85 10       ..
    stx l0011                                                         ; 9846: 86 11       ..
    ldy #0                                                            ; 9848: a0 00       ..
    lda (l0010),y                                                     ; 984a: b1 10       ..
    sta l004a                                                         ; 984c: 85 4a       .J
    cmp l0008                                                         ; 984e: c5 08       ..
    iny                                                               ; 9850: c8          .
    lda (l0010),y                                                     ; 9851: b1 10       ..
    sta l004b                                                         ; 9853: 85 4b       .K
    beq c9887                                                         ; 9855: f0 30       .0
    tax                                                               ; 9857: aa          .
    sbc l0009                                                         ; 9858: e5 09       ..
    bcc loop_c9842                                                    ; 985a: 90 e6       ..
    clc                                                               ; 985c: 18          .
    lda l0008                                                         ; 985d: a5 08       ..
    adc l0012                                                         ; 985f: 65 12       e.
    tax                                                               ; 9861: aa          .
    lda l0009                                                         ; 9862: a5 09       ..
    adc l0013                                                         ; 9864: 65 13       e.
    cpx l004a                                                         ; 9866: e4 4a       .J
    sbc l004b                                                         ; 9868: e5 4b       .K
    bcc c9887                                                         ; 986a: 90 1b       ..
    clc                                                               ; 986c: 18          .
    iny                                                               ; 986d: c8          .
    lda l0012                                                         ; 986e: a5 12       ..
    adc (l004a),y                                                     ; 9870: 71 4a       qJ
    sta l0012                                                         ; 9872: 85 12       ..
    iny                                                               ; 9874: c8          .
    lda l0013                                                         ; 9875: a5 13       ..
    adc (l004a),y                                                     ; 9877: 71 4a       qJ
    sta l0013                                                         ; 9879: 85 13       ..
    ldy #0                                                            ; 987b: a0 00       ..
    lda (l004a),y                                                     ; 987d: b1 4a       .J
    tax                                                               ; 987f: aa          .
    iny                                                               ; 9880: c8          .
    lda (l004a),y                                                     ; 9881: b1 4a       .J
    stx l004a                                                         ; 9883: 86 4a       .J
    sta l004b                                                         ; 9885: 85 4b       .K
.c9887
    ldy #0                                                            ; 9887: a0 00       ..
    lda l0008                                                         ; 9889: a5 08       ..
    sta (l0010),y                                                     ; 988b: 91 10       ..
    lda l004a                                                         ; 988d: a5 4a       .J
    sta (l0008),y                                                     ; 988f: 91 08       ..
    iny                                                               ; 9891: c8          .
    lda l0009                                                         ; 9892: a5 09       ..
    sta (l0010),y                                                     ; 9894: 91 10       ..
    lda l004b                                                         ; 9896: a5 4b       .K
    sta (l0008),y                                                     ; 9898: 91 08       ..
    iny                                                               ; 989a: c8          .
    lda l0012                                                         ; 989b: a5 12       ..
    sta (l0008),y                                                     ; 989d: 91 08       ..
    iny                                                               ; 989f: c8          .
    lda l0013                                                         ; 98a0: a5 13       ..
    sta (l0008),y                                                     ; 98a2: 91 08       ..
    lda l0011                                                         ; 98a4: a5 11       ..
    cmp #8                                                            ; 98a6: c9 08       ..
    bcc c990b                                                         ; 98a8: 90 61       .a
    clc                                                               ; 98aa: 18          .
    ldy #2                                                            ; 98ab: a0 02       ..
    lda l0010                                                         ; 98ad: a5 10       ..
    adc (l0010),y                                                     ; 98af: 71 10       q.
    tax                                                               ; 98b1: aa          .
    iny                                                               ; 98b2: c8          .
    lda l0011                                                         ; 98b3: a5 11       ..
    adc (l0010),y                                                     ; 98b5: 71 10       q.
    cpx l0008                                                         ; 98b7: e4 08       ..
    sbc l0009                                                         ; 98b9: e5 09       ..
    bcc c98d7                                                         ; 98bb: 90 1a       ..
    ldy #0                                                            ; 98bd: a0 00       ..
    lda (l0008),y                                                     ; 98bf: b1 08       ..
    sta (l0010),y                                                     ; 98c1: 91 10       ..
    iny                                                               ; 98c3: c8          .
    lda (l0008),y                                                     ; 98c4: b1 08       ..
    sta (l0010),y                                                     ; 98c6: 91 10       ..
    clc                                                               ; 98c8: 18          .
    iny                                                               ; 98c9: c8          .
    lda (l0010),y                                                     ; 98ca: b1 10       ..
    adc (l0008),y                                                     ; 98cc: 71 08       q.
    sta (l0010),y                                                     ; 98ce: 91 10       ..
    iny                                                               ; 98d0: c8          .
    lda (l0010),y                                                     ; 98d1: b1 10       ..
    adc (l0008),y                                                     ; 98d3: 71 08       q.
    sta (l0010),y                                                     ; 98d5: 91 10       ..
.c98d7
    lda l0630                                                         ; 98d7: ad 30 06    .0.
    cmp l062e                                                         ; 98da: cd 2e 06    ...
    bne c990b                                                         ; 98dd: d0 2c       .,
    ldx l0631                                                         ; 98df: ae 31 06    .1.
    cpx l062f                                                         ; 98e2: ec 2f 06    ./.
    bne c990b                                                         ; 98e5: d0 24       .$
    sta l004a                                                         ; 98e7: 85 4a       .J
    stx l004b                                                         ; 98e9: 86 4b       .K
    ldy #0                                                            ; 98eb: a0 00       ..
    lda (l004a),y                                                     ; 98ed: b1 4a       .J
    sta l0630                                                         ; 98ef: 8d 30 06    .0.
    iny                                                               ; 98f2: c8          .
    lda (l004a),y                                                     ; 98f3: b1 4a       .J
    sta l0631                                                         ; 98f5: 8d 31 06    .1.
    clc                                                               ; 98f8: 18          .
    iny                                                               ; 98f9: c8          .
    lda (l004a),y                                                     ; 98fa: b1 4a       .J
    adc l062e                                                         ; 98fc: 6d 2e 06    m..
    sta l062e                                                         ; 98ff: 8d 2e 06    ...
    iny                                                               ; 9902: c8          .
    lda (l004a),y                                                     ; 9903: b1 4a       .J
    adc l062f                                                         ; 9905: 6d 2f 06    m/.
    sta l062f                                                         ; 9908: 8d 2f 06    ./.
.c990b
    rts                                                               ; 990b: 60          `

.bytecode_opcode_dc_handler
    jsr sub_c9af9                                                     ; 990c: 20 f9 9a     ..
    jsr sub_c9918                                                     ; 990f: 20 18 99     ..
    lda #3                                                            ; 9912: a9 03       ..
    rts                                                               ; 9914: 60          `

.bytecode_opcode_b2_handler
    jsr sub_c9b05                                                     ; 9915: 20 05 9b     ..
.sub_c9918
    jsr sub_c9ad3                                                     ; 9918: 20 d3 9a     ..
    jsr sub_c979a                                                     ; 991b: 20 9a 97     ..
    tya                                                               ; 991e: 98          .
    pha                                                               ; 991f: 48          H
    ldy #1                                                            ; 9920: a0 01       ..
    sta (l000e),y                                                     ; 9922: 91 0e       ..
    dey                                                               ; 9924: 88          .
    txa                                                               ; 9925: 8a          .
    sta (l000e),y                                                     ; 9926: 91 0e       ..
    pla                                                               ; 9928: 68          h
    ldy l065a                                                         ; 9929: ac 5a 06    .Z.
    beq c9931                                                         ; 992c: f0 03       ..
    jsr sub_c99ac                                                     ; 992e: 20 ac 99     ..
.c9931
    lda #2                                                            ; 9931: a9 02       ..
    rts                                                               ; 9933: 60          `

.bytecode_opcode_de_handler
    jsr sub_c9af9                                                     ; 9934: 20 f9 9a     ..
    jsr sub_c9940                                                     ; 9937: 20 40 99     @.
    lda #3                                                            ; 993a: a9 03       ..
    rts                                                               ; 993c: 60          `

.bytecode_opcode_b4_handler
    jsr sub_c9b05                                                     ; 993d: 20 05 9b     ..
.sub_c9940
    jsr sub_c9ae2                                                     ; 9940: 20 e2 9a     ..
    lda l0009                                                         ; 9943: a5 09       ..
    beq c9955                                                         ; 9945: f0 0e       ..
    cmp l0008                                                         ; 9947: c5 08       ..
    bne c994f                                                         ; 9949: d0 04       ..
    cmp #&b8                                                          ; 994b: c9 b8       ..
    beq c9955                                                         ; 994d: f0 06       ..
.c994f
    jsr sub_c982f                                                     ; 994f: 20 2f 98     /.
    lda #2                                                            ; 9952: a9 02       ..
    rts                                                               ; 9954: 60          `

.c9955
    jmp c8830                                                         ; 9955: 4c 30 88    L0.

.sub_c9958
    ldx l0017                                                         ; 9958: a6 17       ..
    bne c9961                                                         ; 995a: d0 05       ..
    jsr c996e                                                         ; 995c: 20 6e 99     n.
    ldx #0                                                            ; 995f: a2 00       ..
.c9961
    lda input_buffer,x                                                ; 9961: bd 1a 05    ...
    inx                                                               ; 9964: e8          .
    cmp #&0d                                                          ; 9965: c9 0d       ..
    bne c996b                                                         ; 9967: d0 02       ..
    ldx #0                                                            ; 9969: a2 00       ..
.c996b
    stx l0017                                                         ; 996b: 86 17       ..
    rts                                                               ; 996d: 60          `

.c996e
    jsr sub_c998c                                                     ; 996e: 20 8c 99     ..
.c9971
    bit escape_flag                                                   ; 9971: 24 ff       $.
    bmi escape                                                        ; 9973: 30 01       0.
    rts                                                               ; 9975: 60          `

.escape
    lda #osbyte_acknowledge_escape                                    ; 9976: a9 7e       .~
    jsr osbyte                                                        ; 9978: 20 f4 ff     ..            ; Clear escape condition and perform escape effects
    lda l0416                                                         ; 997b: ad 16 04    ...
    cmp #2                                                            ; 997e: c9 02       ..
    bcc c9988                                                         ; 9980: 90 06       ..
    jsr cb7cc                                                         ; 9982: 20 cc b7     ..
    jmp caf8d                                                         ; 9985: 4c 8d af    L..

.c9988
    brk                                                               ; 9988: 00          .

    equb &11                                                          ; 9989: 11          .              ; error code
    equb 128 + 14                                                     ; 998a: 8e          .              ; "Escape" (token 14)
    equb 0                                                            ; 998b: 00          .

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

.bytecode_opcode_50_handler
    iny                                                               ; 99a3: c8          .
    lda (l0002),y                                                     ; 99a4: b1 02       ..
    sta l065a                                                         ; 99a6: 8d 5a 06    .Z.
    lda #2                                                            ; 99a9: a9 02       ..
    rts                                                               ; 99ab: 60          `

.sub_c99ac
    stx l000a                                                         ; 99ac: 86 0a       ..
    sta l000b                                                         ; 99ae: 85 0b       ..
    ldx l0013                                                         ; 99b0: a6 13       ..
    inx                                                               ; 99b2: e8          .
    sec                                                               ; 99b3: 38          8
    lda #0                                                            ; 99b4: a9 00       ..
    sbc l0012                                                         ; 99b6: e5 12       ..
    tay                                                               ; 99b8: a8          .
    beq c99d1                                                         ; 99b9: f0 16       ..
    sta l0014                                                         ; 99bb: 85 14       ..
    sec                                                               ; 99bd: 38          8
    lda l000a                                                         ; 99be: a5 0a       ..
    sbc l0014                                                         ; 99c0: e5 14       ..
    sta l000a                                                         ; 99c2: 85 0a       ..
    bcs c99c8                                                         ; 99c4: b0 02       ..
    dec l000b                                                         ; 99c6: c6 0b       ..
.c99c8
    lda #&b8                                                          ; 99c8: a9 b8       ..
.loop_c99ca
    sta (l000a),y                                                     ; 99ca: 91 0a       ..
    iny                                                               ; 99cc: c8          .
    bne loop_c99ca                                                    ; 99cd: d0 fb       ..
    inc l000b                                                         ; 99cf: e6 0b       ..
.c99d1
    dex                                                               ; 99d1: ca          .
    bne c99c8                                                         ; 99d2: d0 f4       ..
    rts                                                               ; 99d4: 60          `

.sub_c99d5
    ldy #1                                                            ; 99d5: a0 01       ..
    lda l0009                                                         ; 99d7: a5 09       ..
    sta (l0000),y                                                     ; 99d9: 91 00       ..
    dey                                                               ; 99db: 88          .
    lda l0008                                                         ; 99dc: a5 08       ..
    sta (l0000),y                                                     ; 99de: 91 00       ..
    lda #2                                                            ; 99e0: a9 02       ..
    bne c99fe                                                         ; 99e2: d0 1a       ..
.sub_c99e4
    lda #4                                                            ; 99e4: a9 04       ..
    bne c99fe                                                         ; 99e6: d0 16       ..
.sub_c99e8
    lda #5                                                            ; 99e8: a9 05       ..
    bne c99fe                                                         ; 99ea: d0 12       ..
    lda #6                                                            ; 99ec: a9 06       ..
    bne c99fe                                                         ; 99ee: d0 0e       ..
.sub_c99f0
    lda #&10                                                          ; 99f0: a9 10       ..
    bne c99fe                                                         ; 99f2: d0 0a       ..
.sub_c99f4
    lda #&20 ; ' '                                                    ; 99f4: a9 20       .
    bne c99fe                                                         ; 99f6: d0 06       ..
.sub_c99f8
    ldy #0                                                            ; 99f8: a0 00       ..
    sta (l0000),y                                                     ; 99fa: 91 00       ..
.sub_c99fc
    lda #1                                                            ; 99fc: a9 01       ..
.c99fe
    clc                                                               ; 99fe: 18          .
    adc l0000                                                         ; 99ff: 65 00       e.
    sta l0000                                                         ; 9a01: 85 00       ..
    bcc c9a07                                                         ; 9a03: 90 02       ..
    inc l0001                                                         ; 9a05: e6 01       ..
.c9a07
    rts                                                               ; 9a07: 60          `

.sub_c9a08
    ldy #&1f                                                          ; 9a08: a0 1f       ..
    jsr sub_c9a70                                                     ; 9a0a: 20 70 9a     p.
.sub_c9a0d
    lda #&20 ; ' '                                                    ; 9a0d: a9 20       .
    bne c9a27                                                         ; 9a0f: d0 16       ..
.sub_c9a11
    lda #1                                                            ; 9a11: a9 01       ..
    bne c9a27                                                         ; 9a13: d0 12       ..
.sub_c9a15
    lda #2                                                            ; 9a15: a9 02       ..
    bne c9a27                                                         ; 9a17: d0 0e       ..
.sub_c9a19
    lda #4                                                            ; 9a19: a9 04       ..
    bne c9a27                                                         ; 9a1b: d0 0a       ..
.sub_c9a1d
    lda #8                                                            ; 9a1d: a9 08       ..
    bne c9a27                                                         ; 9a1f: d0 06       ..
    lda #&0a                                                          ; 9a21: a9 0a       ..
    bne c9a27                                                         ; 9a23: d0 02       ..
.sub_c9a25
    lda #&10                                                          ; 9a25: a9 10       ..
.c9a27
    sta l0014                                                         ; 9a27: 85 14       ..
    sec                                                               ; 9a29: 38          8
    lda l0000                                                         ; 9a2a: a5 00       ..
    sbc l0014                                                         ; 9a2c: e5 14       ..
    sta l0000                                                         ; 9a2e: 85 00       ..
    bcs c9a34                                                         ; 9a30: b0 02       ..
    dec l0001                                                         ; 9a32: c6 01       ..
.c9a34
    rts                                                               ; 9a34: 60          `

.sub_c9a35
    ldy #&1f                                                          ; 9a35: a0 1f       ..
    jsr sub_c9a0d                                                     ; 9a37: 20 0d 9a     ..
.sub_c9a3a
    lda #&20 ; ' '                                                    ; 9a3a: a9 20       .
    bne c9a54                                                         ; 9a3c: d0 16       ..
.sub_c9a3e
    lda #1                                                            ; 9a3e: a9 01       ..
    bne c9a54                                                         ; 9a40: d0 12       ..
.sub_c9a42
    lda #2                                                            ; 9a42: a9 02       ..
    bne c9a54                                                         ; 9a44: d0 0e       ..
.sub_c9a46
    lda #4                                                            ; 9a46: a9 04       ..
    bne c9a54                                                         ; 9a48: d0 0a       ..
.sub_c9a4a
    lda #5                                                            ; 9a4a: a9 05       ..
    bne c9a54                                                         ; 9a4c: d0 06       ..
.sub_c9a4e
    lda #8                                                            ; 9a4e: a9 08       ..
    bne c9a54                                                         ; 9a50: d0 02       ..
.sub_c9a52
    lda #&0a                                                          ; 9a52: a9 0a       ..
.c9a54
    sta l0014                                                         ; 9a54: 85 14       ..
    sec                                                               ; 9a56: 38          8
    lda l0000                                                         ; 9a57: a5 00       ..
    sbc l0014                                                         ; 9a59: e5 14       ..
    sta l000a                                                         ; 9a5b: 85 0a       ..
    lda l0001                                                         ; 9a5d: a5 01       ..
    sbc #0                                                            ; 9a5f: e9 00       ..
    sta l000b                                                         ; 9a61: 85 0b       ..
    rts                                                               ; 9a63: 60          `

    equb &a9,   2, &d0, &0a                                           ; 9a64: a9 02 d0... ...

.sub_c9a68
    lda #4                                                            ; 9a68: a9 04       ..
    bne c9a72                                                         ; 9a6a: d0 06       ..
.sub_c9a6c
    lda #5                                                            ; 9a6c: a9 05       ..
    bne c9a72                                                         ; 9a6e: d0 02       ..
.sub_c9a70
    lda #&20 ; ' '                                                    ; 9a70: a9 20       .
.c9a72
    sta l0014                                                         ; 9a72: 85 14       ..
    sec                                                               ; 9a74: 38          8
    lda l0000                                                         ; 9a75: a5 00       ..
    sbc l0014                                                         ; 9a77: e5 14       ..
    sta l0000                                                         ; 9a79: 85 00       ..
    sta l000a                                                         ; 9a7b: 85 0a       ..
    lda l0001                                                         ; 9a7d: a5 01       ..
    sbc #0                                                            ; 9a7f: e9 00       ..
    sta l0001                                                         ; 9a81: 85 01       ..
    sta l000b                                                         ; 9a83: 85 0b       ..
    rts                                                               ; 9a85: 60          `

.sub_c9a86
    lda #1                                                            ; 9a86: a9 01       ..
    bne c9a8c                                                         ; 9a88: d0 02       ..
.c9a8a
    lda #4                                                            ; 9a8a: a9 04       ..
.c9a8c
    sta l0014                                                         ; 9a8c: 85 14       ..
    sec                                                               ; 9a8e: 38          8
    lda l0000                                                         ; 9a8f: a5 00       ..
    sbc l0014                                                         ; 9a91: e5 14       ..
    sta l000c                                                         ; 9a93: 85 0c       ..
    lda l0001                                                         ; 9a95: a5 01       ..
    sbc #0                                                            ; 9a97: e9 00       ..
    sta l000d                                                         ; 9a99: 85 0d       ..
    rts                                                               ; 9a9b: 60          `

.sub_c9a9c
    lda #1                                                            ; 9a9c: a9 01       ..
    bne c9aaa                                                         ; 9a9e: d0 0a       ..
.sub_c9aa0
    lda #2                                                            ; 9aa0: a9 02       ..
    bne c9aaa                                                         ; 9aa2: d0 06       ..
.sub_c9aa4
    lda #4                                                            ; 9aa4: a9 04       ..
    bne c9aaa                                                         ; 9aa6: d0 02       ..
.sub_c9aa8
    lda #5                                                            ; 9aa8: a9 05       ..
.c9aaa
    clc                                                               ; 9aaa: 18          .
    adc l0002                                                         ; 9aab: 65 02       e.
    sta l0008                                                         ; 9aad: 85 08       ..
    lda #0                                                            ; 9aaf: a9 00       ..
    adc l0003                                                         ; 9ab1: 65 03       e.
    sta l0009                                                         ; 9ab3: 85 09       ..
    rts                                                               ; 9ab5: 60          `

.sub_c9ab6
    clc                                                               ; 9ab6: 18          .
    lda l0002                                                         ; 9ab7: a5 02       ..
    adc #1                                                            ; 9ab9: 69 01       i.
    sta l000a                                                         ; 9abb: 85 0a       ..
    lda l0003                                                         ; 9abd: a5 03       ..
    adc #0                                                            ; 9abf: 69 00       i.
    sta l000b                                                         ; 9ac1: 85 0b       ..
    rts                                                               ; 9ac3: 60          `

.sub_c9ac4
    jsr sub_c9a15                                                     ; 9ac4: 20 15 9a     ..
    ldy #1                                                            ; 9ac7: a0 01       ..
    lda (l0000),y                                                     ; 9ac9: b1 00       ..
    sta l000b                                                         ; 9acb: 85 0b       ..
    dey                                                               ; 9acd: 88          .
    lda (l0000),y                                                     ; 9ace: b1 00       ..
    sta l000a                                                         ; 9ad0: 85 0a       ..
    rts                                                               ; 9ad2: 60          `

.sub_c9ad3
    jsr sub_c9a15                                                     ; 9ad3: 20 15 9a     ..
    ldy #1                                                            ; 9ad6: a0 01       ..
    lda (l0000),y                                                     ; 9ad8: b1 00       ..
    sta l000f                                                         ; 9ada: 85 0f       ..
    dey                                                               ; 9adc: 88          .
    lda (l0000),y                                                     ; 9add: b1 00       ..
    sta l000e                                                         ; 9adf: 85 0e       ..
    rts                                                               ; 9ae1: 60          `

.sub_c9ae2
    jsr sub_c9a15                                                     ; 9ae2: 20 15 9a     ..
    ldy #1                                                            ; 9ae5: a0 01       ..
    lda (l0000),y                                                     ; 9ae7: b1 00       ..
    sta l0009                                                         ; 9ae9: 85 09       ..
    dey                                                               ; 9aeb: 88          .
    lda (l0000),y                                                     ; 9aec: b1 00       ..
    sta l0008                                                         ; 9aee: 85 08       ..
    rts                                                               ; 9af0: 60          `

.sub_c9af1
    jsr sub_c9a11                                                     ; 9af1: 20 11 9a     ..
    ldy #0                                                            ; 9af4: a0 00       ..
    lda (l0000),y                                                     ; 9af6: b1 00       ..
    rts                                                               ; 9af8: 60          `

.sub_c9af9
    ldy #1                                                            ; 9af9: a0 01       ..
.sub_c9afb
    lda (l0002),y                                                     ; 9afb: b1 02       ..
    sta l0012                                                         ; 9afd: 85 12       ..
    iny                                                               ; 9aff: c8          .
    lda (l0002),y                                                     ; 9b00: b1 02       ..
    sta l0013                                                         ; 9b02: 85 13       ..
    rts                                                               ; 9b04: 60          `

.sub_c9b05
    ldy #1                                                            ; 9b05: a0 01       ..
.sub_c9b07
    lda (l0002),y                                                     ; 9b07: b1 02       ..
    sta l0012                                                         ; 9b09: 85 12       ..
    lda #0                                                            ; 9b0b: a9 00       ..
    sta l0013                                                         ; 9b0d: 85 13       ..
    rts                                                               ; 9b0f: 60          `

.bytecode_opcode_42_handler
    ldy #1                                                            ; 9b10: a0 01       ..
    lda (l0002),y                                                     ; 9b12: b1 02       ..
    jsr c9a27                                                         ; 9b14: 20 27 9a     '.
    iny                                                               ; 9b17: c8          .
    lda (l0002),y                                                     ; 9b18: b1 02       ..
.sub_c9b1a
    sta l0015                                                         ; 9b1a: 85 15       ..
    ldy #0                                                            ; 9b1c: a0 00       ..
    lda (l0000),y                                                     ; 9b1e: b1 00       ..
    sta l0008                                                         ; 9b20: 85 08       ..
    iny                                                               ; 9b22: c8          .
    lda (l0000),y                                                     ; 9b23: b1 00       ..
    sta l0009                                                         ; 9b25: 85 09       ..
    iny                                                               ; 9b27: c8          .
    lda (l0000),y                                                     ; 9b28: b1 00       ..
    sta l000a                                                         ; 9b2a: 85 0a       ..
    iny                                                               ; 9b2c: c8          .
    lda (l0000),y                                                     ; 9b2d: b1 00       ..
    sta l000b                                                         ; 9b2f: 85 0b       ..
    iny                                                               ; 9b31: c8          .
    sty l0016                                                         ; 9b32: 84 16       ..
.c9b34
    ldy #2                                                            ; 9b34: a0 02       ..
    lda (l000a),y                                                     ; 9b36: b1 0a       ..
    cmp #1                                                            ; 9b38: c9 01       ..
    bne c9b42                                                         ; 9b3a: d0 06       ..
    ldy #4                                                            ; 9b3c: a0 04       ..
    lda (l000a),y                                                     ; 9b3e: b1 0a       ..
    bcs c9b47                                                         ; 9b40: b0 05       ..
.c9b42
    ldy l0016                                                         ; 9b42: a4 16       ..
    iny                                                               ; 9b44: c8          .
    lda (l0000),y                                                     ; 9b45: b1 00       ..
.c9b47
    pha                                                               ; 9b47: 48          H
    ldy l0016                                                         ; 9b48: a4 16       ..
    lda (l0000),y                                                     ; 9b4a: b1 00       ..
    ldy #3                                                            ; 9b4c: a0 03       ..
    sbc (l000a),y                                                     ; 9b4e: f1 0a       ..
    tax                                                               ; 9b50: aa          .
    iny                                                               ; 9b51: c8          .
    pla                                                               ; 9b52: 68          h
    sbc (l000a),y                                                     ; 9b53: f1 0a       ..
    jsr sub_c9b7f                                                     ; 9b55: 20 7f 9b     ..
    clc                                                               ; 9b58: 18          .
    txa                                                               ; 9b59: 8a          .
    adc l0008                                                         ; 9b5a: 65 08       e.
    sta l0008                                                         ; 9b5c: 85 08       ..
    tya                                                               ; 9b5e: 98          .
    adc l0009                                                         ; 9b5f: 65 09       e.
    sta l0009                                                         ; 9b61: 85 09       ..
    ldy #2                                                            ; 9b63: a0 02       ..
    lda l0016                                                         ; 9b65: a5 16       ..
    adc (l000a),y                                                     ; 9b67: 71 0a       q.
    sta l0016                                                         ; 9b69: 85 16       ..
    lda l000a                                                         ; 9b6b: a5 0a       ..
    adc #&0b                                                          ; 9b6d: 69 0b       i.
    sta l000a                                                         ; 9b6f: 85 0a       ..
    bcc c9b75                                                         ; 9b71: 90 02       ..
    inc l000b                                                         ; 9b73: e6 0b       ..
.c9b75
    dec l0015                                                         ; 9b75: c6 15       ..
    bne c9b34                                                         ; 9b77: d0 bb       ..
    jsr sub_c99d5                                                     ; 9b79: 20 d5 99     ..
    lda #3                                                            ; 9b7c: a9 03       ..
    rts                                                               ; 9b7e: 60          `

.sub_c9b7f
    stx l0048                                                         ; 9b7f: 86 48       .H
    sta l0049                                                         ; 9b81: 85 49       .I
.sub_c9b83
    ldy #0                                                            ; 9b83: a0 00       ..
    lda (l000a),y                                                     ; 9b85: b1 0a       ..
    tax                                                               ; 9b87: aa          .
    iny                                                               ; 9b88: c8          .
    lda (l000a),y                                                     ; 9b89: b1 0a       ..
    bne c9bb3                                                         ; 9b8b: d0 26       .&
    cpx #6                                                            ; 9b8d: e0 06       ..
    bcs c9bb3                                                         ; 9b8f: b0 22       ."
    txa                                                               ; 9b91: 8a          .
.loop_c9b92
    ldx l0048                                                         ; 9b92: a6 48       .H
    ldy l0049                                                         ; 9b94: a4 49       .I
    cmp #2                                                            ; 9b96: c9 02       ..
    bcc c9bb2                                                         ; 9b98: 90 18       ..
    cmp #4                                                            ; 9b9a: c9 04       ..
    bcc c9ba2                                                         ; 9b9c: 90 04       ..
    asl l0048                                                         ; 9b9e: 06 48       .H
    rol l0049                                                         ; 9ba0: 26 49       &I
.c9ba2
    asl l0048                                                         ; 9ba2: 06 48       .H
    rol l0049                                                         ; 9ba4: 26 49       &I
    and #1                                                            ; 9ba6: 29 01       ).
    beq loop_c9b92                                                    ; 9ba8: f0 e8       ..
    txa                                                               ; 9baa: 8a          .
    adc l0048                                                         ; 9bab: 65 48       eH
    tax                                                               ; 9bad: aa          .
    tya                                                               ; 9bae: 98          .
    adc l0049                                                         ; 9baf: 65 49       eI
    tay                                                               ; 9bb1: a8          .
.c9bb2
    rts                                                               ; 9bb2: 60          `

.c9bb3
    stx l0046                                                         ; 9bb3: 86 46       .F
    sta l0047                                                         ; 9bb5: 85 47       .G
    ldx #0                                                            ; 9bb7: a2 00       ..
    ldy #0                                                            ; 9bb9: a0 00       ..
.loop_c9bbb
    ror l0049                                                         ; 9bbb: 66 49       fI
    ror l0048                                                         ; 9bbd: 66 48       fH
    bcc c9bca                                                         ; 9bbf: 90 09       ..
    clc                                                               ; 9bc1: 18          .
    txa                                                               ; 9bc2: 8a          .
    adc l0046                                                         ; 9bc3: 65 46       eF
    tax                                                               ; 9bc5: aa          .
    tya                                                               ; 9bc6: 98          .
    adc l0047                                                         ; 9bc7: 65 47       eG
    tay                                                               ; 9bc9: a8          .
.c9bca
    asl l0046                                                         ; 9bca: 06 46       .F
    rol l0047                                                         ; 9bcc: 26 47       &G
    lda l0048                                                         ; 9bce: a5 48       .H
    ora l0049                                                         ; 9bd0: 05 49       .I
    bne loop_c9bbb                                                    ; 9bd2: d0 e7       ..
    rts                                                               ; 9bd4: 60          `

.bytecode_opcode_d6_handler
    jsr sub_c9aa4                                                     ; 9bd5: 20 a4 9a     ..
    jsr sub_c9af1                                                     ; 9bd8: 20 f1 9a     ..
    sta l0014                                                         ; 9bdb: 85 14       ..
    ldy #3                                                            ; 9bdd: a0 03       ..
    lda (l0002),y                                                     ; 9bdf: b1 02       ..
    tax                                                               ; 9be1: aa          .
    ldy #0                                                            ; 9be2: a0 00       ..
.loop_c9be4
    lda l0014                                                         ; 9be4: a5 14       ..
    cmp (l0008),y                                                     ; 9be6: d1 08       ..
    beq c9bfa                                                         ; 9be8: f0 10       ..
    clc                                                               ; 9bea: 18          .
    lda l0008                                                         ; 9beb: a5 08       ..
    adc #3                                                            ; 9bed: 69 03       i.
    sta l0008                                                         ; 9bef: 85 08       ..
    bcc c9bf5                                                         ; 9bf1: 90 02       ..
    inc l0009                                                         ; 9bf3: e6 09       ..
.c9bf5
    dex                                                               ; 9bf5: ca          .
    bne loop_c9be4                                                    ; 9bf6: d0 ec       ..
    beq c9c3c                                                         ; 9bf8: f0 42       .B
.c9bfa
    ldy #2                                                            ; 9bfa: a0 02       ..
    bne c9c1c                                                         ; 9bfc: d0 1e       ..
.bytecode_opcode_d8_handler
    jsr sub_c9aa8                                                     ; 9bfe: 20 a8 9a     ..
    jsr sub_c8b88                                                     ; 9c01: 20 88 8b     ..
    ldy #3                                                            ; 9c04: a0 03       ..
    lda (l0002),y                                                     ; 9c06: b1 02       ..
    tax                                                               ; 9c08: aa          .
    iny                                                               ; 9c09: c8          .
    lda (l0002),y                                                     ; 9c0a: b1 02       ..
    sta l0016                                                         ; 9c0c: 85 16       ..
.c9c0e
    ldy #3                                                            ; 9c0e: a0 03       ..
.loop_c9c10
    lda l006a,y                                                       ; 9c10: b9 6a 00    .j.
    cmp (l0008),y                                                     ; 9c13: d1 08       ..
    bne c9c25                                                         ; 9c15: d0 0e       ..
    dey                                                               ; 9c17: 88          .
    bpl loop_c9c10                                                    ; 9c18: 10 f6       ..
    ldy #5                                                            ; 9c1a: a0 05       ..
.c9c1c
    lda (l0008),y                                                     ; 9c1c: b1 08       ..
    tax                                                               ; 9c1e: aa          .
    dey                                                               ; 9c1f: 88          .
    lda (l0008),y                                                     ; 9c20: b1 08       ..
    jmp c973d                                                         ; 9c22: 4c 3d 97    L=.

.c9c25
    clc                                                               ; 9c25: 18          .
    lda l0008                                                         ; 9c26: a5 08       ..
    adc #6                                                            ; 9c28: 69 06       i.
    sta l0008                                                         ; 9c2a: 85 08       ..
    bcc c9c30                                                         ; 9c2c: 90 02       ..
    inc l0009                                                         ; 9c2e: e6 09       ..
.c9c30
    txa                                                               ; 9c30: 8a          .
    bne c9c35                                                         ; 9c31: d0 02       ..
    dec l0016                                                         ; 9c33: c6 16       ..
.c9c35
    dex                                                               ; 9c35: ca          .
    bne c9c0e                                                         ; 9c36: d0 d6       ..
    lda l0017                                                         ; 9c38: a5 17       ..
    bne c9c0e                                                         ; 9c3a: d0 d2       ..
.c9c3c
    ldy #1                                                            ; 9c3c: a0 01       ..
    lda (l0002),y                                                     ; 9c3e: b1 02       ..
    iny                                                               ; 9c40: c8          .
    ora (l0002),y                                                     ; 9c41: 11 02       ..
    beq c9c48                                                         ; 9c43: f0 03       ..
    jmp c9735                                                         ; 9c45: 4c 35 97    L5.

.c9c48
    brk                                                               ; 9c48: 00          .

    equb &0b                                                          ; 9c49: 0b          .              ; error code
    equs "Cas"                                                        ; 9c4a: 43 61 73    Cas
    equb 128 + ('e')                                                  ; 9c4d: e5          .              ; "e "
    equs "index"                                                      ; 9c4e: 69 6e 64... ind
    equb 0                                                            ; 9c53: 00          .

.bytecode_opcode_d5_handler
    jsr sub_c9aa8                                                     ; 9c54: 20 a8 9a     ..
    jsr sub_c9af1                                                     ; 9c57: 20 f1 9a     ..
    sec                                                               ; 9c5a: 38          8
    ldy #3                                                            ; 9c5b: a0 03       ..
    sbc (l0002),y                                                     ; 9c5d: f1 02       ..
    bcc c9c3c                                                         ; 9c5f: 90 db       ..
    iny                                                               ; 9c61: c8          .
    cmp (l0002),y                                                     ; 9c62: d1 02       ..
    bcs c9c3c                                                         ; 9c64: b0 d6       ..
    bcc c9c9d                                                         ; 9c66: 90 35       .5
.bytecode_opcode_d7_handler
    lda #9                                                            ; 9c68: a9 09       ..
    jsr c9aaa                                                         ; 9c6a: 20 aa 9a     ..
    jsr sub_c8b88                                                     ; 9c6d: 20 88 8b     ..
    sec                                                               ; 9c70: 38          8
    ldx #4                                                            ; 9c71: a2 04       ..
    ldy #3                                                            ; 9c73: a0 03       ..
.loop_c9c75
    lda l0067,y                                                       ; 9c75: b9 67 00    .g.
    sbc (l0002),y                                                     ; 9c78: f1 02       ..
    sta l0067,y                                                       ; 9c7a: 99 67 00    .g.
    iny                                                               ; 9c7d: c8          .
    dex                                                               ; 9c7e: ca          .
    bne loop_c9c75                                                    ; 9c7f: d0 f4       ..
    bvs c9c3c                                                         ; 9c81: 70 b9       p.
    ora l006c                                                         ; 9c83: 05 6c       .l
    bne c9c3c                                                         ; 9c85: d0 b5       ..
    ldy #7                                                            ; 9c87: a0 07       ..
    lda l006a                                                         ; 9c89: a5 6a       .j
    cmp (l0002),y                                                     ; 9c8b: d1 02       ..
    iny                                                               ; 9c8d: c8          .
    lda l006b                                                         ; 9c8e: a5 6b       .k
    sbc (l0002),y                                                     ; 9c90: f1 02       ..
    bcs c9c3c                                                         ; 9c92: b0 a8       ..
    lda l006b                                                         ; 9c94: a5 6b       .k
    asl a                                                             ; 9c96: 0a          .
    adc l0009                                                         ; 9c97: 65 09       e.
    sta l0009                                                         ; 9c99: 85 09       ..
    lda l006a                                                         ; 9c9b: a5 6a       .j
.c9c9d
    asl a                                                             ; 9c9d: 0a          .
    tay                                                               ; 9c9e: a8          .
    bcc c9ca3                                                         ; 9c9f: 90 02       ..
    inc l0009                                                         ; 9ca1: e6 09       ..
.c9ca3
    lda (l0008),y                                                     ; 9ca3: b1 08       ..
    sta l0014                                                         ; 9ca5: 85 14       ..
    iny                                                               ; 9ca7: c8          .
    lda (l0008),y                                                     ; 9ca8: b1 08       ..
    tax                                                               ; 9caa: aa          .
    ora l0014                                                         ; 9cab: 05 14       ..
    beq c9c3c                                                         ; 9cad: f0 8d       ..
    lda l0014                                                         ; 9caf: a5 14       ..
    jmp c973d                                                         ; 9cb1: 4c 3d 97    L=.

.sub_c9cb4
    jsr sub_c9a19                                                     ; 9cb4: 20 19 9a     ..
    ldy #3                                                            ; 9cb7: a0 03       ..
.loop_c9cb9
    lda (l0000),y                                                     ; 9cb9: b1 00       ..
    bne c9cc4                                                         ; 9cbb: d0 07       ..
    dey                                                               ; 9cbd: 88          .
    bne loop_c9cb9                                                    ; 9cbe: d0 f9       ..
    lda (l0000),y                                                     ; 9cc0: b1 00       ..
    clc                                                               ; 9cc2: 18          .
    rts                                                               ; 9cc3: 60          `

.c9cc4
    sec                                                               ; 9cc4: 38          8
    rts                                                               ; 9cc5: 60          `

.bytecode_opcode_f1_handler
    jsr c9735                                                         ; 9cc6: 20 35 97     5.
    lda l0002                                                         ; 9cc9: a5 02       ..
    sta l001e                                                         ; 9ccb: 85 1e       ..
    lda l0003                                                         ; 9ccd: a5 03       ..
    sta l001f                                                         ; 9ccf: 85 1f       ..
    lda #0                                                            ; 9cd1: a9 00       ..
    rts                                                               ; 9cd3: 60          `

.bytecode_opcode_ee_handler
    jsr sub_c9a1d                                                     ; 9cd4: 20 1d 9a     ..
    ldy #&0c                                                          ; 9cd7: a0 0c       ..
    bne c9ce0                                                         ; 9cd9: d0 05       ..
.bytecode_opcode_ed_handler
    jsr sub_c9a15                                                     ; 9cdb: 20 15 9a     ..
    ldy #9                                                            ; 9cde: a0 09       ..
.c9ce0
    sty l0016                                                         ; 9ce0: 84 16       ..
    jsr sub_c8b88                                                     ; 9ce2: 20 88 8b     ..
    jsr sub_c9d3b                                                     ; 9ce5: 20 3b 9d     ;.
    ldy #8                                                            ; 9ce8: a0 08       ..
    lda (l0000),y                                                     ; 9cea: b1 00       ..
    tax                                                               ; 9cec: aa          .
    ldy l0016                                                         ; 9ced: a4 16       ..
    lda (l0000),y                                                     ; 9cef: b1 00       ..
    tay                                                               ; 9cf1: a8          .
    lda l006a                                                         ; 9cf2: a5 6a       .j
    jsr jmp_indirect_via_l0008                                        ; 9cf4: 20 e2 87     ..
    sta l006a                                                         ; 9cf7: 85 6a       .j
    stx l006b                                                         ; 9cf9: 86 6b       .k
    sty l006c                                                         ; 9cfb: 84 6c       .l
    php                                                               ; 9cfd: 08          .
    pla                                                               ; 9cfe: 68          h
    sta l006d                                                         ; 9cff: 85 6d       .m
    jsr sub_c9d90                                                     ; 9d01: 20 90 9d     ..
    lda #1                                                            ; 9d04: a9 01       ..
    rts                                                               ; 9d06: 60          `

.bytecode_opcode_f9_handler
    sec                                                               ; 9d07: 38          8
    lda l062e                                                         ; 9d08: ad 2e 06    ...
    sbc l062c                                                         ; 9d0b: ed 2c 06    .,.
    tax                                                               ; 9d0e: aa          .
    lda l062f                                                         ; 9d0f: ad 2f 06    ./.
    sbc l062d                                                         ; 9d12: ed 2d 06    .-.
    tay                                                               ; 9d15: a8          .
    jmp c9d1f                                                         ; 9d16: 4c 1f 9d    L..

.bytecode_opcode_fa_handler
    jsr sub_c9d4a                                                     ; 9d19: 20 4a 9d     J.
    jsr sub_c979a                                                     ; 9d1c: 20 9a 97     ..
.c9d1f
    lda #0                                                            ; 9d1f: a9 00       ..
.c9d21
    stx l006a                                                         ; 9d21: 86 6a       .j
    sty l006b                                                         ; 9d23: 84 6b       .k
    sta l006c                                                         ; 9d25: 85 6c       .l
    sta l006d                                                         ; 9d27: 85 6d       .m
    jsr sub_c9d90                                                     ; 9d29: 20 90 9d     ..
    lda #1                                                            ; 9d2c: a9 01       ..
    rts                                                               ; 9d2e: 60          `

.bytecode_opcode_a8_handler
    jsr sub_c9d4a                                                     ; 9d2f: 20 4a 9d     J.
    jsr sub_c9d3b                                                     ; 9d32: 20 3b 9d     ;.
    jsr sub_c982f                                                     ; 9d35: 20 2f 98     /.
    lda #1                                                            ; 9d38: a9 01       ..
    rts                                                               ; 9d3a: 60          `

.sub_c9d3b
    jsr sub_c9a19                                                     ; 9d3b: 20 19 9a     ..
    ldy #0                                                            ; 9d3e: a0 00       ..
    lda (l0000),y                                                     ; 9d40: b1 00       ..
    sta l0008                                                         ; 9d42: 85 08       ..
    iny                                                               ; 9d44: c8          .
    lda (l0000),y                                                     ; 9d45: b1 00       ..
    sta l0009                                                         ; 9d47: 85 09       ..
    rts                                                               ; 9d49: 60          `

.sub_c9d4a
    jsr sub_c9a19                                                     ; 9d4a: 20 19 9a     ..
    ldy #0                                                            ; 9d4d: a0 00       ..
    lda (l0000),y                                                     ; 9d4f: b1 00       ..
    sta l0012                                                         ; 9d51: 85 12       ..
    iny                                                               ; 9d53: c8          .
    lda (l0000),y                                                     ; 9d54: b1 00       ..
    sta l0013                                                         ; 9d56: 85 13       ..
    rts                                                               ; 9d58: 60          `

.bytecode_opcode_d3_handler
    jsr sub_c9d75                                                     ; 9d59: 20 75 9d     u.
    lda #1                                                            ; 9d5c: a9 01       ..
    jsr sub_c9daa                                                     ; 9d5e: 20 aa 9d     ..
    jsr sub_c9d90                                                     ; 9d61: 20 90 9d     ..
    lda #2                                                            ; 9d64: a9 02       ..
    rts                                                               ; 9d66: 60          `

.bytecode_opcode_d4_handler
    jsr sub_c9d75                                                     ; 9d67: 20 75 9d     u.
    lda #1                                                            ; 9d6a: a9 01       ..
    jsr sub_c9dc3                                                     ; 9d6c: 20 c3 9d     ..
    jsr sub_c9da1                                                     ; 9d6f: 20 a1 9d     ..
    lda #2                                                            ; 9d72: a9 02       ..
    rts                                                               ; 9d74: 60          `

.sub_c9d75
    jsr sub_c9ad3                                                     ; 9d75: 20 d3 9a     ..
    ldy #1                                                            ; 9d78: a0 01       ..
.sub_c9d7a
    lda (l0002),y                                                     ; 9d7a: b1 02       ..
    tay                                                               ; 9d7c: a8          .
    lda #&0d                                                          ; 9d7d: a9 0d       ..
    sta l041a,y                                                       ; 9d7f: 99 1a 04    ...
.loop_c9d82
    dey                                                               ; 9d82: 88          .
    cpy #&ff                                                          ; 9d83: c0 ff       ..
    beq c9d8f                                                         ; 9d85: f0 08       ..
    lda (l000e),y                                                     ; 9d87: b1 0e       ..
    sta l041a,y                                                       ; 9d89: 99 1a 04    ...
    jmp loop_c9d82                                                    ; 9d8c: 4c 82 9d    L..

.c9d8f
    rts                                                               ; 9d8f: 60          `

.sub_c9d90
    jsr sub_c99e4                                                     ; 9d90: 20 e4 99     ..
    jsr sub_c9a46                                                     ; 9d93: 20 46 9a     F.
.sub_c9d96
    ldy #3                                                            ; 9d96: a0 03       ..
.loop_c9d98
    lda l006a,y                                                       ; 9d98: b9 6a 00    .j.
    sta (l000a),y                                                     ; 9d9b: 91 0a       ..
    dey                                                               ; 9d9d: 88          .
    bpl loop_c9d98                                                    ; 9d9e: 10 f8       ..
    rts                                                               ; 9da0: 60          `

.sub_c9da1
    jsr sub_c99e8                                                     ; 9da1: 20 e8 99     ..
    jsr sub_c9a4a                                                     ; 9da4: 20 4a 9a     J.
    jmp ca2df                                                         ; 9da7: 4c df a2    L..

.sub_c9daa
    ldx #0                                                            ; 9daa: a2 00       ..
    jsr sub_c9dc5                                                     ; 9dac: 20 c5 9d     ..
.sub_c9daf
    jsr sub_ca371                                                     ; 9daf: 20 71 a3     q.
    lda l0041                                                         ; 9db2: a5 41       .A
    sta l006d                                                         ; 9db4: 85 6d       .m
    lda l0042                                                         ; 9db6: a5 42       .B
    sta l006c                                                         ; 9db8: 85 6c       .l
    lda l0043                                                         ; 9dba: a5 43       .C
    sta l006b                                                         ; 9dbc: 85 6b       .k
    lda l0044                                                         ; 9dbe: a5 44       .D
    sta l006a                                                         ; 9dc0: 85 6a       .j
    rts                                                               ; 9dc2: 60          `

.sub_c9dc3
    ldx #1                                                            ; 9dc3: a2 01       ..
.sub_c9dc5
    sta l0666                                                         ; 9dc5: 8d 66 06    .f.
    stx l0665                                                         ; 9dc8: 8e 65 06    .e.
    jsr zero_misc_values                                              ; 9dcb: 20 93 a4     ..
    sta l0016                                                         ; 9dce: 85 16       ..
    sta l0661                                                         ; 9dd0: 8d 61 06    .a.
    sta l0035                                                         ; 9dd3: 85 35       .5
    sta l0036                                                         ; 9dd5: 85 36       .6
    sta l0664                                                         ; 9dd7: 8d 64 06    .d.
    tay                                                               ; 9dda: a8          .
    lda (l000a),y                                                     ; 9ddb: b1 0a       ..
    ldx l0666                                                         ; 9ddd: ae 66 06    .f.
    beq c9de5                                                         ; 9de0: f0 03       ..
.loop_c9de2
    jsr sub_c9ef3                                                     ; 9de2: 20 f3 9e     ..
.c9de5
    cmp #&20 ; ' '                                                    ; 9de5: c9 20       .
    beq loop_c9de2                                                    ; 9de7: f0 f9       ..
    cmp #&2b ; '+'                                                    ; 9de9: c9 2b       .+
    beq c9df4                                                         ; 9deb: f0 07       ..
    cmp #&2d ; '-'                                                    ; 9ded: c9 2d       .-
    bne c9df7                                                         ; 9def: d0 06       ..
    inc l0661                                                         ; 9df1: ee 61 06    .a.
.c9df4
    jsr sub_c9ef3                                                     ; 9df4: 20 f3 9e     ..
.c9df7
    tay                                                               ; 9df7: a8          .
    cmp #&3a ; ':'                                                    ; 9df8: c9 3a       .:
    bcs c9e34                                                         ; 9dfa: b0 38       .8
    sbc #&2f ; '/'                                                    ; 9dfc: e9 2f       ./
    bcc c9e34                                                         ; 9dfe: 90 34       .4
    inc l0664                                                         ; 9e00: ee 64 06    .d.
    ldx l0041                                                         ; 9e03: a6 41       .A
    cpx #&18                                                          ; 9e05: e0 18       ..
    bcc c9e13                                                         ; 9e07: 90 0a       ..
    ldx l0035                                                         ; 9e09: a6 35       .5
    bne c9df4                                                         ; 9e0b: d0 e7       ..
    inc l0036                                                         ; 9e0d: e6 36       .6
    bmi c9e48                                                         ; 9e0f: 30 37       07
    bcs c9df4                                                         ; 9e11: b0 e1       ..
.c9e13
    ldx l0035                                                         ; 9e13: a6 35       .5
    beq c9e1b                                                         ; 9e15: f0 04       ..
    dec l0036                                                         ; 9e17: c6 36       .6
    bpl c9e50                                                         ; 9e19: 10 35       .5
.c9e1b
    jsr sub_ca09a                                                     ; 9e1b: 20 9a a0     ..
    adc l0045                                                         ; 9e1e: 65 45       eE
    sta l0045                                                         ; 9e20: 85 45       .E
    bcc c9df4                                                         ; 9e22: 90 d0       ..
    inc l0044                                                         ; 9e24: e6 44       .D
    bne c9df4                                                         ; 9e26: d0 cc       ..
    inc l0043                                                         ; 9e28: e6 43       .C
    bne c9df4                                                         ; 9e2a: d0 c8       ..
    inc l0042                                                         ; 9e2c: e6 42       .B
    bne c9df4                                                         ; 9e2e: d0 c4       ..
    inc l0041                                                         ; 9e30: e6 41       .A
    bne c9df4                                                         ; 9e32: d0 c0       ..
.c9e34
    lda l0664                                                         ; 9e34: ad 64 06    .d.
    beq c9e58                                                         ; 9e37: f0 1f       ..
    ldx l0665                                                         ; 9e39: ae 65 06    .e.
    bne c9e5d                                                         ; 9e3c: d0 1f       ..
    lda l0042                                                         ; 9e3e: a5 42       .B
    and #&80                                                          ; 9e40: 29 80       ).
    ora l0041                                                         ; 9e42: 05 41       .A
    bne c9e4d                                                         ; 9e44: d0 07       ..
    beq c9ebe                                                         ; 9e46: f0 76       .v
.c9e48
    ldx l0665                                                         ; 9e48: ae 65 06    .e.
    bne c9e50                                                         ; 9e4b: d0 03       ..
.c9e4d
    jmp c8cbb                                                         ; 9e4d: 4c bb 8c    L..

.c9e50
    brk                                                               ; 9e50: 00          .

    equb &10                                                          ; 9e51: 10          .              ; error code
    equs "Rea"                                                        ; 9e52: 52 65 61    Rea
    equb 128 + ('l')                                                  ; 9e55: ec          .              ; "l "
    equb 128 + 5                                                      ; 9e56: 85          .              ; "overflow" (token 5)
    equb 0                                                            ; 9e57: 00          .

.c9e58
    brk                                                               ; 9e58: 00          .

    equb &1b                                                          ; 9e59: 1b          .              ; error code
    equb 128 + 2                                                      ; 9e5a: 82          .              ; "Bad " (token 2)
    equb 128 + 12                                                     ; 9e5b: 8c          .              ; "number" (token 12)
    equb 0                                                            ; 9e5c: 00          .

.c9e5d
    lda #0                                                            ; 9e5d: a9 00       ..
    sta l0664                                                         ; 9e5f: 8d 64 06    .d.
    ldx l0035                                                         ; 9e62: a6 35       .5
    bne c9e6c                                                         ; 9e64: d0 06       ..
    inc l0035                                                         ; 9e66: e6 35       .5
    cpy #&2e ; '.'                                                    ; 9e68: c0 2e       ..
    beq c9df4                                                         ; 9e6a: f0 88       ..
.c9e6c
    cpy #&65 ; 'e'                                                    ; 9e6c: c0 65       .e
    beq c9e74                                                         ; 9e6e: f0 04       ..
    cpy #&45 ; 'E'                                                    ; 9e70: c0 45       .E
    bne c9ebe                                                         ; 9e72: d0 4a       .J
.c9e74
    sta l000c                                                         ; 9e74: 85 0c       ..
    sta l0662                                                         ; 9e76: 8d 62 06    .b.
    jsr sub_c9ef3                                                     ; 9e79: 20 f3 9e     ..
    cmp #&2b ; '+'                                                    ; 9e7c: c9 2b       .+
    beq c9e87                                                         ; 9e7e: f0 07       ..
    cmp #&2d ; '-'                                                    ; 9e80: c9 2d       .-
    bne c9e8a                                                         ; 9e82: d0 06       ..
    inc l0662                                                         ; 9e84: ee 62 06    .b.
.c9e87
    jsr sub_c9ef3                                                     ; 9e87: 20 f3 9e     ..
.c9e8a
    cmp #&3a ; ':'                                                    ; 9e8a: c9 3a       .:
    bcs c9ea8                                                         ; 9e8c: b0 1a       ..
    sbc #&2f ; '/'                                                    ; 9e8e: e9 2f       ./
    bcc c9ea8                                                         ; 9e90: 90 16       ..
    inc l0664                                                         ; 9e92: ee 64 06    .d.
    sta l0014                                                         ; 9e95: 85 14       ..
    lda l000c                                                         ; 9e97: a5 0c       ..
    cmp #&1a                                                          ; 9e99: c9 1a       ..
    bcs c9e50                                                         ; 9e9b: b0 b3       ..
    asl a                                                             ; 9e9d: 0a          .
    asl a                                                             ; 9e9e: 0a          .
    adc l000c                                                         ; 9e9f: 65 0c       e.
    asl a                                                             ; 9ea1: 0a          .
    adc l0014                                                         ; 9ea2: 65 14       e.
    sta l000c                                                         ; 9ea4: 85 0c       ..
    bcc c9e87                                                         ; 9ea6: 90 df       ..
.c9ea8
    lda l0664                                                         ; 9ea8: ad 64 06    .d.
    beq c9e58                                                         ; 9eab: f0 ab       ..
    clc                                                               ; 9ead: 18          .
    lda l000c                                                         ; 9eae: a5 0c       ..
    ldx l0662                                                         ; 9eb0: ae 62 06    .b.
    beq c9eb8                                                         ; 9eb3: f0 03       ..
    sec                                                               ; 9eb5: 38          8
    eor #&ff                                                          ; 9eb6: 49 ff       I.
.c9eb8
    adc l0036                                                         ; 9eb8: 65 36       e6
    sta l0036                                                         ; 9eba: 85 36       .6
    bvs c9e50                                                         ; 9ebc: 70 92       p.
.c9ebe
    jsr sub_ca4d6                                                     ; 9ebe: 20 d6 a4     ..
    beq c9ef2                                                         ; 9ec1: f0 2f       ./
    lda #&a8                                                          ; 9ec3: a9 a8       ..
    sta l0040                                                         ; 9ec5: 85 40       .@
    jsr ca428                                                         ; 9ec7: 20 28 a4     (.
    lda l0036                                                         ; 9eca: a5 36       .6
    bmi c9ed9                                                         ; 9ecc: 30 0b       0.
    beq c9ee0                                                         ; 9ece: f0 10       ..
.loop_c9ed0
    jsr sub_ca202                                                     ; 9ed0: 20 02 a2     ..
    dec l0036                                                         ; 9ed3: c6 36       .6
    bne loop_c9ed0                                                    ; 9ed5: d0 f9       ..
    beq c9ee0                                                         ; 9ed7: f0 07       ..
.c9ed9
    jsr sub_ca227                                                     ; 9ed9: 20 27 a2     '.
    inc l0036                                                         ; 9edc: e6 36       .6
    bne c9ed9                                                         ; 9ede: d0 f9       ..
.c9ee0
    jsr ca473                                                         ; 9ee0: 20 73 a4     s.
    ldx l0661                                                         ; 9ee3: ae 61 06    .a.
    beq c9ef2                                                         ; 9ee6: f0 0a       ..
.c9ee8
    lda l0041                                                         ; 9ee8: a5 41       .A
    beq c9ef2                                                         ; 9eea: f0 06       ..
    lda l003e                                                         ; 9eec: a5 3e       .>
    eor #&80                                                          ; 9eee: 49 80       I.
    sta l003e                                                         ; 9ef0: 85 3e       .>
.c9ef2
    rts                                                               ; 9ef2: 60          `

.sub_c9ef3
    lda l0666                                                         ; 9ef3: ad 66 06    .f.
    bne c9efb                                                         ; 9ef6: d0 03       ..
    jmp c923a                                                         ; 9ef8: 4c 3a 92    L:.

.c9efb
    ldy l0016                                                         ; 9efb: a4 16       ..
    lda l041a,y                                                       ; 9efd: b9 1a 04    ...
    inc l0016                                                         ; 9f00: e6 16       ..
    rts                                                               ; 9f02: 60          `

.sub_c9f03
    lda l0045                                                         ; 9f03: a5 45       .E
    adc l004d                                                         ; 9f05: 65 4d       eM
    sta l0045                                                         ; 9f07: 85 45       .E
    lda l0044                                                         ; 9f09: a5 44       .D
    adc l004c                                                         ; 9f0b: 65 4c       eL
    sta l0044                                                         ; 9f0d: 85 44       .D
    lda l0043                                                         ; 9f0f: a5 43       .C
    adc l004b                                                         ; 9f11: 65 4b       eK
    sta l0043                                                         ; 9f13: 85 43       .C
    lda l0042                                                         ; 9f15: a5 42       .B
    adc l004a                                                         ; 9f17: 65 4a       eJ
    sta l0042                                                         ; 9f19: 85 42       .B
    lda l0041                                                         ; 9f1b: a5 41       .A
    adc l0049                                                         ; 9f1d: 65 49       eI
    sta l0041                                                         ; 9f1f: 85 41       .A
    rts                                                               ; 9f21: 60          `

.bytecode_opcode_c8_handler
.bytecode_opcode_c9_handler
    jsr sub_c9a4a                                                     ; 9f22: 20 4a 9a     J.
    jsr ca2a0                                                         ; 9f25: 20 a0 a2     ..
    beq c9f39                                                         ; 9f28: f0 0f       ..
    cpx #&c8                                                          ; 9f2a: e0 c8       ..
    beq c9f32                                                         ; 9f2c: f0 04       ..
    lda l003e                                                         ; 9f2e: a5 3e       .>
    bpl c9f39                                                         ; 9f30: 10 07       ..
.c9f32
    iny                                                               ; 9f32: c8          .
    lda (l000a),y                                                     ; 9f33: b1 0a       ..
    eor #&80                                                          ; 9f35: 49 80       I.
    sta (l000a),y                                                     ; 9f37: 91 0a       ..
.c9f39
    lda #1                                                            ; 9f39: a9 01       ..
    rts                                                               ; 9f3b: 60          `

.sub_c9f3c
    stx l065d                                                         ; 9f3c: 8e 5d 06    .].
    sta l0660                                                         ; 9f3f: 8d 60 06    .`.
    lda #0                                                            ; 9f42: a9 00       ..
    sta l065f                                                         ; 9f44: 8d 5f 06    ._.
    sta l0037                                                         ; 9f47: 85 37       .7
    lda #&2d ; '-'                                                    ; 9f49: a9 2d       .-
    ldx l003e                                                         ; 9f4b: a6 3e       .>
    bmi c9f56                                                         ; 9f4d: 30 07       0.
    ldx l065d                                                         ; 9f4f: ae 5d 06    .].
    bne c9f5b                                                         ; 9f52: d0 07       ..
    lda #&20 ; ' '                                                    ; 9f54: a9 20       .
.c9f56
    sta l003e                                                         ; 9f56: 85 3e       .>
    jsr sub_ca07d                                                     ; 9f58: 20 7d a0     }.
.c9f5b
    ldx l0041                                                         ; 9f5b: a6 41       .A
    bne c9f62                                                         ; 9f5d: d0 03       ..
    jmp c9fe5                                                         ; 9f5f: 4c e5 9f    L..

.c9f62
    lda l0040                                                         ; 9f62: a5 40       .@
    cmp #&81                                                          ; 9f64: c9 81       ..
    bcs c9f75                                                         ; 9f66: b0 0d       ..
    jsr sub_ca202                                                     ; 9f68: 20 02 a2     ..
    dec l0037                                                         ; 9f6b: c6 37       .7
    jmp c9f62                                                         ; 9f6d: 4c 62 9f    Lb.

.c9f70
    jsr sub_ca4fa                                                     ; 9f70: 20 fa a4     ..
    bne c9f84                                                         ; 9f73: d0 0f       ..
.c9f75
    cmp #&84                                                          ; 9f75: c9 84       ..
    bcc c9f89                                                         ; 9f77: 90 10       ..
    bne c9f81                                                         ; 9f79: d0 06       ..
    lda l0041                                                         ; 9f7b: a5 41       .A
    cmp #&a0                                                          ; 9f7d: c9 a0       ..
    bcc c9f89                                                         ; 9f7f: 90 08       ..
.c9f81
    jsr sub_ca227                                                     ; 9f81: 20 27 a2     '.
.c9f84
    inc l0037                                                         ; 9f84: e6 37       .7
    jmp c9f62                                                         ; 9f86: 4c 62 9f    Lb.

.c9f89
    lda l0045                                                         ; 9f89: a5 45       .E
    sta l0033                                                         ; 9f8b: 85 33       .3
    jsr sub_ca2d7                                                     ; 9f8d: 20 d7 a2     ..
    jsr zero_misc_values                                              ; 9f90: 20 93 a4     ..
    lda #&a0                                                          ; 9f93: a9 a0       ..
    sta l0041                                                         ; 9f95: 85 41       .A
    lda #&83                                                          ; 9f97: a9 83       ..
    sta l0040                                                         ; 9f99: 85 40       .@
    lda l0037                                                         ; 9f9b: a5 37       .7
    ldx l065d                                                         ; 9f9d: ae 5d 06    .].
    bne c9fa3                                                         ; 9fa0: d0 01       ..
    txa                                                               ; 9fa2: 8a          .
.c9fa3
    sec                                                               ; 9fa3: 38          8
    adc l0660                                                         ; 9fa4: 6d 60 06    m`.
    cmp #&0b                                                          ; 9fa7: c9 0b       ..
    bcc c9fad                                                         ; 9fa9: 90 02       ..
    lda #&0a                                                          ; 9fab: a9 0a       ..
.c9fad
    sta l0668                                                         ; 9fad: 8d 68 06    .h.
    tax                                                               ; 9fb0: aa          .
    beq c9fb9                                                         ; 9fb1: f0 06       ..
.loop_c9fb3
    jsr sub_ca227                                                     ; 9fb3: 20 27 a2     '.
    dex                                                               ; 9fb6: ca          .
    bne loop_c9fb3                                                    ; 9fb7: d0 fa       ..
.c9fb9
    jsr sub_ca368                                                     ; 9fb9: 20 68 a3     h.
    jsr sub_ca304                                                     ; 9fbc: 20 04 a3     ..
    lda l0033                                                         ; 9fbf: a5 33       .3
    sta l004d                                                         ; 9fc1: 85 4d       .M
    jsr sub_ca10e                                                     ; 9fc3: 20 0e a1     ..
.loop_c9fc6
    lda l0040                                                         ; 9fc6: a5 40       .@
    cmp #&84                                                          ; 9fc8: c9 84       ..
    bcs c9fda                                                         ; 9fca: b0 0e       ..
    ror l0041                                                         ; 9fcc: 66 41       fA
    ror l0042                                                         ; 9fce: 66 42       fB
    ror l0043                                                         ; 9fd0: 66 43       fC
    ror l0044                                                         ; 9fd2: 66 44       fD
    ror l0045                                                         ; 9fd4: 66 45       fE
    inc l0040                                                         ; 9fd6: e6 40       .@
    bne loop_c9fc6                                                    ; 9fd8: d0 ec       ..
.c9fda
    lda l0041                                                         ; 9fda: a5 41       .A
    cmp #&a0                                                          ; 9fdc: c9 a0       ..
    bcs c9f70                                                         ; 9fde: b0 90       ..
    lda l0668                                                         ; 9fe0: ad 68 06    .h.
    bne c9ff1                                                         ; 9fe3: d0 0c       ..
.c9fe5
    jsr zero_misc_values                                              ; 9fe5: 20 93 a4     ..
    sta l0037                                                         ; 9fe8: 85 37       .7
    ldx l0660                                                         ; 9fea: ae 60 06    .`.
    inx                                                               ; 9fed: e8          .
    stx l0668                                                         ; 9fee: 8e 68 06    .h.
.c9ff1
    lda #0                                                            ; 9ff1: a9 00       ..
    ldx l065d                                                         ; 9ff3: ae 5d 06    .].
    beq c9fff                                                         ; 9ff6: f0 07       ..
    ldx l0037                                                         ; 9ff8: a6 37       .7
    bpl c9fff                                                         ; 9ffa: 10 03       ..
    sec                                                               ; 9ffc: 38          8
    sbc l0037                                                         ; 9ffd: e5 37       .7
.c9fff
    sta l066b                                                         ; 9fff: 8d 6b 06    .k.
    lda #1                                                            ; a002: a9 01       ..
    ldx l065d                                                         ; a004: ae 5d 06    .].
    beq ca00f                                                         ; a007: f0 06       ..
    ldx l0037                                                         ; a009: a6 37       .7
    bmi ca00f                                                         ; a00b: 30 02       0.
    inx                                                               ; a00d: e8          .
    txa                                                               ; a00e: 8a          .
.ca00f
    sta l066a                                                         ; a00f: 8d 6a 06    .j.
    clc                                                               ; a012: 18          .
    adc l0660                                                         ; a013: 6d 60 06    m`.
    sta l0669                                                         ; a016: 8d 69 06    .i.
.ca019
    lda l066b                                                         ; a019: ad 6b 06    .k.
    beq ca029                                                         ; a01c: f0 0b       ..
    lda #&30 ; '0'                                                    ; a01e: a9 30       .0
    jsr sub_ca07d                                                     ; a020: 20 7d a0     }.
    dec l066b                                                         ; a023: ce 6b 06    .k.
    jmp ca03c                                                         ; a026: 4c 3c a0    L<.

.ca029
    lda l0668                                                         ; a029: ad 68 06    .h.
    beq ca037                                                         ; a02c: f0 09       ..
    jsr sub_ca08b                                                     ; a02e: 20 8b a0     ..
    dec l0668                                                         ; a031: ce 68 06    .h.
    jmp ca03c                                                         ; a034: 4c 3c a0    L<.

.ca037
    lda #&30 ; '0'                                                    ; a037: a9 30       .0
    jsr sub_ca07d                                                     ; a039: 20 7d a0     }.
.ca03c
    dec l0669                                                         ; a03c: ce 69 06    .i.
    beq ca04e                                                         ; a03f: f0 0d       ..
    dec l066a                                                         ; a041: ce 6a 06    .j.
    bne ca019                                                         ; a044: d0 d3       ..
    lda #&2e ; '.'                                                    ; a046: a9 2e       ..
    jsr sub_ca07d                                                     ; a048: 20 7d a0     }.
    jmp ca019                                                         ; a04b: 4c 19 a0    L..

.ca04e
    lda l065d                                                         ; a04e: ad 5d 06    .].
    bne ca08a                                                         ; a051: d0 37       .7
    lda #&65 ; 'e'                                                    ; a053: a9 65       .e
    jsr sub_ca07d                                                     ; a055: 20 7d a0     }.
    lda #&2b ; '+'                                                    ; a058: a9 2b       .+
    ldy l0037                                                         ; a05a: a4 37       .7
    bpl ca060                                                         ; a05c: 10 02       ..
    lda #&2d ; '-'                                                    ; a05e: a9 2d       .-
.ca060
    jsr sub_ca07d                                                     ; a060: 20 7d a0     }.
    tya                                                               ; a063: 98          .
    bpl ca06b                                                         ; a064: 10 05       ..
    sec                                                               ; a066: 38          8
    lda #0                                                            ; a067: a9 00       ..
    sbc l0037                                                         ; a069: e5 37       .7
.ca06b
    ldx #&ff                                                          ; a06b: a2 ff       ..
    sec                                                               ; a06d: 38          8
.loop_ca06e
    inx                                                               ; a06e: e8          .
    sbc #&0a                                                          ; a06f: e9 0a       ..
    bcs loop_ca06e                                                    ; a071: b0 fb       ..
    adc #&0a                                                          ; a073: 69 0a       i.
    pha                                                               ; a075: 48          H
    txa                                                               ; a076: 8a          .
    jsr sub_ca07b                                                     ; a077: 20 7b a0     {.
    pla                                                               ; a07a: 68          h
.sub_ca07b
    ora #&30 ; '0'                                                    ; a07b: 09 30       .0
.sub_ca07d
    stx l0069                                                         ; a07d: 86 69       .i
    ldx l065f                                                         ; a07f: ae 5f 06    ._.
    sta l041a,x                                                       ; a082: 9d 1a 04    ...
    ldx l0069                                                         ; a085: a6 69       .i
    inc l065f                                                         ; a087: ee 5f 06    ._.
.ca08a
    rts                                                               ; a08a: 60          `

.sub_ca08b
    lda l0041                                                         ; a08b: a5 41       .A
    lsr a                                                             ; a08d: 4a          J
    lsr a                                                             ; a08e: 4a          J
    lsr a                                                             ; a08f: 4a          J
    lsr a                                                             ; a090: 4a          J
    jsr sub_ca07b                                                     ; a091: 20 7b a0     {.
    lda l0041                                                         ; a094: a5 41       .A
    and #&0f                                                          ; a096: 29 0f       ).
    sta l0041                                                         ; a098: 85 41       .A
.sub_ca09a
    pha                                                               ; a09a: 48          H
    ldx l0044                                                         ; a09b: a6 44       .D
    lda l0041                                                         ; a09d: a5 41       .A
    pha                                                               ; a09f: 48          H
    lda l0042                                                         ; a0a0: a5 42       .B
    pha                                                               ; a0a2: 48          H
    lda l0043                                                         ; a0a3: a5 43       .C
    pha                                                               ; a0a5: 48          H
    lda l0045                                                         ; a0a6: a5 45       .E
    asl a                                                             ; a0a8: 0a          .
    rol l0044                                                         ; a0a9: 26 44       &D
    rol l0043                                                         ; a0ab: 26 43       &C
    rol l0042                                                         ; a0ad: 26 42       &B
    rol l0041                                                         ; a0af: 26 41       &A
    asl a                                                             ; a0b1: 0a          .
    rol l0044                                                         ; a0b2: 26 44       &D
    rol l0043                                                         ; a0b4: 26 43       &C
    rol l0042                                                         ; a0b6: 26 42       &B
    rol l0041                                                         ; a0b8: 26 41       &A
    adc l0045                                                         ; a0ba: 65 45       eE
    sta l0045                                                         ; a0bc: 85 45       .E
    txa                                                               ; a0be: 8a          .
    adc l0044                                                         ; a0bf: 65 44       eD
    sta l0044                                                         ; a0c1: 85 44       .D
    pla                                                               ; a0c3: 68          h
    adc l0043                                                         ; a0c4: 65 43       eC
    sta l0043                                                         ; a0c6: 85 43       .C
    pla                                                               ; a0c8: 68          h
    adc l0042                                                         ; a0c9: 65 42       eB
    sta l0042                                                         ; a0cb: 85 42       .B
    pla                                                               ; a0cd: 68          h
    adc l0041                                                         ; a0ce: 65 41       eA
    asl l0045                                                         ; a0d0: 06 45       .E
    rol l0044                                                         ; a0d2: 26 44       &D
    rol l0043                                                         ; a0d4: 26 43       &C
    rol l0042                                                         ; a0d6: 26 42       &B
    rol a                                                             ; a0d8: 2a          *
    sta l0041                                                         ; a0d9: 85 41       .A
    pla                                                               ; a0db: 68          h
    rts                                                               ; a0dc: 60          `

    equb &20,   4, &a3, &20, &df, &a2                                 ; a0dd: 20 04 a3...  ..

.ca0e3
    lda l0046                                                         ; a0e3: a5 46       .F
    sta l003e                                                         ; a0e5: 85 3e       .>
    lda l0048                                                         ; a0e7: a5 48       .H
    sta l0040                                                         ; a0e9: 85 40       .@
.sub_ca0eb
    lda l0049                                                         ; a0eb: a5 49       .I
    sta l0041                                                         ; a0ed: 85 41       .A
    lda l004a                                                         ; a0ef: a5 4a       .J
    sta l0042                                                         ; a0f1: 85 42       .B
    lda l004b                                                         ; a0f3: a5 4b       .K
    sta l0043                                                         ; a0f5: 85 43       .C
    lda l004c                                                         ; a0f7: a5 4c       .L
    sta l0044                                                         ; a0f9: 85 44       .D
    lda l004d                                                         ; a0fb: a5 4d       .M
    sta l0045                                                         ; a0fd: 85 45       .E
.ca0ff
    rts                                                               ; a0ff: 60          `

.opcode_79_sub_handler
    jsr c9ee8                                                         ; a100: 20 e8 9e     ..
.opcode_78_sub_handler
    jsr sub_ca304                                                     ; a103: 20 04 a3     ..
    beq ca0ff                                                         ; a106: f0 f7       ..
.sub_ca108
    jsr sub_ca10e                                                     ; a108: 20 0e a1     ..
    jmp ca473                                                         ; a10b: 4c 73 a4    Ls.

.sub_ca10e
    lda l0041                                                         ; a10e: a5 41       .A
    beq ca0e3                                                         ; a110: f0 d1       ..
    ldy #0                                                            ; a112: a0 00       ..
    sec                                                               ; a114: 38          8
    lda l0040                                                         ; a115: a5 40       .@
    sbc l0048                                                         ; a117: e5 48       .H
    beq ca18d                                                         ; a119: f0 72       .r
    bcc ca152                                                         ; a11b: 90 35       .5
    cmp #&25 ; '%'                                                    ; a11d: c9 25       .%
    bcs ca0ff                                                         ; a11f: b0 de       ..
    pha                                                               ; a121: 48          H
    and #&38 ; '8'                                                    ; a122: 29 38       )8
    beq ca13d                                                         ; a124: f0 17       ..
    sec                                                               ; a126: 38          8
.loop_ca127
    ldx l004c                                                         ; a127: a6 4c       .L
    stx l004d                                                         ; a129: 86 4d       .M
    ldx l004b                                                         ; a12b: a6 4b       .K
    stx l004c                                                         ; a12d: 86 4c       .L
    ldx l004a                                                         ; a12f: a6 4a       .J
    stx l004b                                                         ; a131: 86 4b       .K
    ldx l0049                                                         ; a133: a6 49       .I
    stx l004a                                                         ; a135: 86 4a       .J
    sty l0049                                                         ; a137: 84 49       .I
    sbc #8                                                            ; a139: e9 08       ..
    bne loop_ca127                                                    ; a13b: d0 ea       ..
.ca13d
    pla                                                               ; a13d: 68          h
    and #7                                                            ; a13e: 29 07       ).
    beq ca18d                                                         ; a140: f0 4b       .K
    tax                                                               ; a142: aa          .
.loop_ca143
    lsr l0049                                                         ; a143: 46 49       FI
    ror l004a                                                         ; a145: 66 4a       fJ
    ror l004b                                                         ; a147: 66 4b       fK
    ror l004c                                                         ; a149: 66 4c       fL
    ror l004d                                                         ; a14b: 66 4d       fM
    dex                                                               ; a14d: ca          .
    bne loop_ca143                                                    ; a14e: d0 f3       ..
    beq ca18d                                                         ; a150: f0 3b       .;
.ca152
    eor #&ff                                                          ; a152: 49 ff       I.
    adc #1                                                            ; a154: 69 01       i.
    cmp #&25 ; '%'                                                    ; a156: c9 25       .%
    bcs ca0e3                                                         ; a158: b0 89       ..
    pha                                                               ; a15a: 48          H
    and #&38 ; '8'                                                    ; a15b: 29 38       )8
    beq ca176                                                         ; a15d: f0 17       ..
    sec                                                               ; a15f: 38          8
.loop_ca160
    ldx l0044                                                         ; a160: a6 44       .D
    stx l0045                                                         ; a162: 86 45       .E
    ldx l0043                                                         ; a164: a6 43       .C
    stx l0044                                                         ; a166: 86 44       .D
    ldx l0042                                                         ; a168: a6 42       .B
    stx l0043                                                         ; a16a: 86 43       .C
    ldx l0041                                                         ; a16c: a6 41       .A
    stx l0042                                                         ; a16e: 86 42       .B
    sty l0041                                                         ; a170: 84 41       .A
    sbc #8                                                            ; a172: e9 08       ..
    bne loop_ca160                                                    ; a174: d0 ea       ..
.ca176
    pla                                                               ; a176: 68          h
    and #7                                                            ; a177: 29 07       ).
    beq ca189                                                         ; a179: f0 0e       ..
    tax                                                               ; a17b: aa          .
.loop_ca17c
    lsr l0041                                                         ; a17c: 46 41       FA
    ror l0042                                                         ; a17e: 66 42       fB
    ror l0043                                                         ; a180: 66 43       fC
    ror l0044                                                         ; a182: 66 44       fD
    ror l0045                                                         ; a184: 66 45       fE
    dex                                                               ; a186: ca          .
    bne loop_ca17c                                                    ; a187: d0 f3       ..
.ca189
    lda l0048                                                         ; a189: a5 48       .H
    sta l0040                                                         ; a18b: 85 40       .@
.ca18d
    lda l003e                                                         ; a18d: a5 3e       .>
    eor l0046                                                         ; a18f: 45 46       EF
    bpl ca1dc                                                         ; a191: 10 49       .I
    lda l0041                                                         ; a193: a5 41       .A
    cmp l0049                                                         ; a195: c5 49       .I
    bne ca1b4                                                         ; a197: d0 1b       ..
    lda l0042                                                         ; a199: a5 42       .B
    cmp l004a                                                         ; a19b: c5 4a       .J
    bne ca1b4                                                         ; a19d: d0 15       ..
    lda l0043                                                         ; a19f: a5 43       .C
    cmp l004b                                                         ; a1a1: c5 4b       .K
    bne ca1b4                                                         ; a1a3: d0 0f       ..
    lda l0044                                                         ; a1a5: a5 44       .D
    cmp l004c                                                         ; a1a7: c5 4c       .L
    bne ca1b4                                                         ; a1a9: d0 09       ..
    lda l0045                                                         ; a1ab: a5 45       .E
    cmp l004d                                                         ; a1ad: c5 4d       .M
    bne ca1b4                                                         ; a1af: d0 03       ..
    jmp zero_misc_values                                              ; a1b1: 4c 93 a4    L..

.ca1b4
    bcs ca1e0                                                         ; a1b4: b0 2a       .*
    sec                                                               ; a1b6: 38          8
    lda l004d                                                         ; a1b7: a5 4d       .M
    sbc l0045                                                         ; a1b9: e5 45       .E
    sta l0045                                                         ; a1bb: 85 45       .E
    lda l004c                                                         ; a1bd: a5 4c       .L
    sbc l0044                                                         ; a1bf: e5 44       .D
    sta l0044                                                         ; a1c1: 85 44       .D
    lda l004b                                                         ; a1c3: a5 4b       .K
    sbc l0043                                                         ; a1c5: e5 43       .C
    sta l0043                                                         ; a1c7: 85 43       .C
    lda l004a                                                         ; a1c9: a5 4a       .J
    sbc l0042                                                         ; a1cb: e5 42       .B
    sta l0042                                                         ; a1cd: 85 42       .B
    lda l0049                                                         ; a1cf: a5 49       .I
    sbc l0041                                                         ; a1d1: e5 41       .A
    sta l0041                                                         ; a1d3: 85 41       .A
    lda l0046                                                         ; a1d5: a5 46       .F
    sta l003e                                                         ; a1d7: 85 3e       .>
    jmp ca428                                                         ; a1d9: 4c 28 a4    L(.

.ca1dc
    clc                                                               ; a1dc: 18          .
    jmp ca211                                                         ; a1dd: 4c 11 a2    L..

.ca1e0
    sec                                                               ; a1e0: 38          8
    lda l0045                                                         ; a1e1: a5 45       .E
    sbc l004d                                                         ; a1e3: e5 4d       .M
    sta l0045                                                         ; a1e5: 85 45       .E
    lda l0044                                                         ; a1e7: a5 44       .D
    sbc l004c                                                         ; a1e9: e5 4c       .L
    sta l0044                                                         ; a1eb: 85 44       .D
    lda l0043                                                         ; a1ed: a5 43       .C
    sbc l004b                                                         ; a1ef: e5 4b       .K
    sta l0043                                                         ; a1f1: 85 43       .C
    lda l0042                                                         ; a1f3: a5 42       .B
    sbc l004a                                                         ; a1f5: e5 4a       .J
    sta l0042                                                         ; a1f7: 85 42       .B
    lda l0041                                                         ; a1f9: a5 41       .A
    sbc l0049                                                         ; a1fb: e5 49       .I
    sta l0041                                                         ; a1fd: 85 41       .A
    jmp ca428                                                         ; a1ff: 4c 28 a4    L(.

.sub_ca202
    clc                                                               ; a202: 18          .
    lda l0040                                                         ; a203: a5 40       .@
    adc #3                                                            ; a205: 69 03       i.
    sta l0040                                                         ; a207: 85 40       .@
    rol l003f                                                         ; a209: 26 3f       &?
    jsr sub_ca34e                                                     ; a20b: 20 4e a3     N.
    jsr sub_ca351                                                     ; a20e: 20 51 a3     Q.
.ca211
    jsr sub_c9f03                                                     ; a211: 20 03 9f     ..
.ca214
    bcc ca226                                                         ; a214: 90 10       ..
    ror l0041                                                         ; a216: 66 41       fA
    ror l0042                                                         ; a218: 66 42       fB
    ror l0043                                                         ; a21a: 66 43       fC
    ror l0044                                                         ; a21c: 66 44       fD
    ror l0045                                                         ; a21e: 66 45       fE
    inc l0040                                                         ; a220: e6 40       .@
    bne ca226                                                         ; a222: d0 02       ..
    inc l003f                                                         ; a224: e6 3f       .?
.ca226
    rts                                                               ; a226: 60          `

.sub_ca227
    sec                                                               ; a227: 38          8
    lda l0040                                                         ; a228: a5 40       .@
    sbc #4                                                            ; a22a: e9 04       ..
    sta l0040                                                         ; a22c: 85 40       .@
    bcs ca232                                                         ; a22e: b0 02       ..
    dec l003f                                                         ; a230: c6 3f       .?
.ca232
    jsr sub_ca34e                                                     ; a232: 20 4e a3     N.
    jsr ca211                                                         ; a235: 20 11 a2     ..
    jsr sub_ca34e                                                     ; a238: 20 4e a3     N.
    jsr sub_ca351                                                     ; a23b: 20 51 a3     Q.
    jsr sub_ca351                                                     ; a23e: 20 51 a3     Q.
    jsr sub_ca351                                                     ; a241: 20 51 a3     Q.
    jsr ca211                                                         ; a244: 20 11 a2     ..
    lda #0                                                            ; a247: a9 00       ..
    sta l0049                                                         ; a249: 85 49       .I
    lda l0041                                                         ; a24b: a5 41       .A
    sta l004a                                                         ; a24d: 85 4a       .J
    lda l0042                                                         ; a24f: a5 42       .B
    sta l004b                                                         ; a251: 85 4b       .K
    lda l0043                                                         ; a253: a5 43       .C
    sta l004c                                                         ; a255: 85 4c       .L
    lda l0044                                                         ; a257: a5 44       .D
    sta l004d                                                         ; a259: 85 4d       .M
    lda l0045                                                         ; a25b: a5 45       .E
    rol a                                                             ; a25d: 2a          *
    jsr ca211                                                         ; a25e: 20 11 a2     ..
    lda #0                                                            ; a261: a9 00       ..
    sta l0049                                                         ; a263: 85 49       .I
    sta l004a                                                         ; a265: 85 4a       .J
    lda l0041                                                         ; a267: a5 41       .A
    sta l004b                                                         ; a269: 85 4b       .K
    lda l0042                                                         ; a26b: a5 42       .B
    sta l004c                                                         ; a26d: 85 4c       .L
    lda l0043                                                         ; a26f: a5 43       .C
    sta l004d                                                         ; a271: 85 4d       .M
    lda l0044                                                         ; a273: a5 44       .D
    rol a                                                             ; a275: 2a          *
    jsr ca211                                                         ; a276: 20 11 a2     ..
    lda l0042                                                         ; a279: a5 42       .B
    rol a                                                             ; a27b: 2a          *
    lda l0041                                                         ; a27c: a5 41       .A
.sub_ca27e
    adc l0045                                                         ; a27e: 65 45       eE
    sta l0045                                                         ; a280: 85 45       .E
    bcc ca226                                                         ; a282: 90 a2       ..
    inc l0044                                                         ; a284: e6 44       .D
    bne ca226                                                         ; a286: d0 9e       ..
    inc l0043                                                         ; a288: e6 43       .C
    bne ca226                                                         ; a28a: d0 9a       ..
    inc l0042                                                         ; a28c: e6 42       .B
    bne ca226                                                         ; a28e: d0 96       ..
    inc l0041                                                         ; a290: e6 41       .A
    bne ca226                                                         ; a292: d0 92       ..
    jmp ca214                                                         ; a294: 4c 14 a2    L..

.sub_ca297
    jsr sub_c9a6c                                                     ; a297: 20 6c 9a     l.
    jmp ca2a0                                                         ; a29a: 4c a0 a2    L..

.ca29d
    jsr sub_ca368                                                     ; a29d: 20 68 a3     h.
.ca2a0
    ldy #4                                                            ; a2a0: a0 04       ..
    lda (l000a),y                                                     ; a2a2: b1 0a       ..
    sta l0044                                                         ; a2a4: 85 44       .D
    dey                                                               ; a2a6: 88          .
    lda (l000a),y                                                     ; a2a7: b1 0a       ..
    sta l0043                                                         ; a2a9: 85 43       .C
    dey                                                               ; a2ab: 88          .
    lda (l000a),y                                                     ; a2ac: b1 0a       ..
    sta l0042                                                         ; a2ae: 85 42       .B
    dey                                                               ; a2b0: 88          .
    lda (l000a),y                                                     ; a2b1: b1 0a       ..
    sta l003e                                                         ; a2b3: 85 3e       .>
    dey                                                               ; a2b5: 88          .
    lda (l000a),y                                                     ; a2b6: b1 0a       ..
    sta l0040                                                         ; a2b8: 85 40       .@
    sty l0045                                                         ; a2ba: 84 45       .E
    sty l003f                                                         ; a2bc: 84 3f       .?
    ora l003e                                                         ; a2be: 05 3e       .>
    ora l0042                                                         ; a2c0: 05 42       .B
    ora l0043                                                         ; a2c2: 05 43       .C
    ora l0044                                                         ; a2c4: 05 44       .D
    beq ca2cc                                                         ; a2c6: f0 04       ..
    lda l003e                                                         ; a2c8: a5 3e       .>
    ora #&80                                                          ; a2ca: 09 80       ..
.ca2cc
    sta l0041                                                         ; a2cc: 85 41       .A
    rts                                                               ; a2ce: 60          `

.sub_ca2cf
    lda #&58 ; 'X'                                                    ; a2cf: a9 58       .X
    bne ca2d9                                                         ; a2d1: d0 06       ..
.sub_ca2d3
    lda #&5d ; ']'                                                    ; a2d3: a9 5d       .]
    bne ca2d9                                                         ; a2d5: d0 02       ..
.sub_ca2d7
    lda #&53 ; 'S'                                                    ; a2d7: a9 53       .S
.ca2d9
    sta l000a                                                         ; a2d9: 85 0a       ..
    lda #0                                                            ; a2db: a9 00       ..
    sta l000b                                                         ; a2dd: 85 0b       ..
.ca2df
    ldy #0                                                            ; a2df: a0 00       ..
    lda l0040                                                         ; a2e1: a5 40       .@
    sta (l000a),y                                                     ; a2e3: 91 0a       ..
    iny                                                               ; a2e5: c8          .
    lda l003e                                                         ; a2e6: a5 3e       .>
    and #&80                                                          ; a2e8: 29 80       ).
    sta l003e                                                         ; a2ea: 85 3e       .>
    lda l0041                                                         ; a2ec: a5 41       .A
    and #&7f                                                          ; a2ee: 29 7f       ).
    ora l003e                                                         ; a2f0: 05 3e       .>
    sta (l000a),y                                                     ; a2f2: 91 0a       ..
    iny                                                               ; a2f4: c8          .
    lda l0042                                                         ; a2f5: a5 42       .B
    sta (l000a),y                                                     ; a2f7: 91 0a       ..
    iny                                                               ; a2f9: c8          .
    lda l0043                                                         ; a2fa: a5 43       .C
    sta (l000a),y                                                     ; a2fc: 91 0a       ..
    iny                                                               ; a2fe: c8          .
    lda l0044                                                         ; a2ff: a5 44       .D
    sta (l000a),y                                                     ; a301: 91 0a       ..
    rts                                                               ; a303: 60          `

.sub_ca304
    ldy #4                                                            ; a304: a0 04       ..
    lda (l000a),y                                                     ; a306: b1 0a       ..
    sta l004c                                                         ; a308: 85 4c       .L
    dey                                                               ; a30a: 88          .
    lda (l000a),y                                                     ; a30b: b1 0a       ..
    sta l004b                                                         ; a30d: 85 4b       .K
    dey                                                               ; a30f: 88          .
    lda (l000a),y                                                     ; a310: b1 0a       ..
    sta l004a                                                         ; a312: 85 4a       .J
    dey                                                               ; a314: 88          .
    lda (l000a),y                                                     ; a315: b1 0a       ..
    sta l0046                                                         ; a317: 85 46       .F
    dey                                                               ; a319: 88          .
    sty l004d                                                         ; a31a: 84 4d       .M
    lda (l000a),y                                                     ; a31c: b1 0a       ..
    sta l0048                                                         ; a31e: 85 48       .H
    ora l0046                                                         ; a320: 05 46       .F
    ora l004a                                                         ; a322: 05 4a       .J
    ora l004b                                                         ; a324: 05 4b       .K
    ora l004c                                                         ; a326: 05 4c       .L
    beq ca32e                                                         ; a328: f0 04       ..
    lda l0046                                                         ; a32a: a5 46       .F
    ora #&80                                                          ; a32c: 09 80       ..
.ca32e
    sta l0049                                                         ; a32e: 85 49       .I
    rts                                                               ; a330: 60          `

.sub_ca331
    lda l003e                                                         ; a331: a5 3e       .>
    sta l0046                                                         ; a333: 85 46       .F
    lda l0040                                                         ; a335: a5 40       .@
    sta l0048                                                         ; a337: 85 48       .H
    lda l0041                                                         ; a339: a5 41       .A
    sta l0049                                                         ; a33b: 85 49       .I
    lda l0042                                                         ; a33d: a5 42       .B
    sta l004a                                                         ; a33f: 85 4a       .J
    lda l0043                                                         ; a341: a5 43       .C
    sta l004b                                                         ; a343: 85 4b       .K
    lda l0044                                                         ; a345: a5 44       .D
    sta l004c                                                         ; a347: 85 4c       .L
    lda l0045                                                         ; a349: a5 45       .E
    sta l004d                                                         ; a34b: 85 4d       .M
    rts                                                               ; a34d: 60          `

.sub_ca34e
    jsr sub_ca331                                                     ; a34e: 20 31 a3     1.
.sub_ca351
    lsr l0049                                                         ; a351: 46 49       FI
    ror l004a                                                         ; a353: 66 4a       fJ
    ror l004b                                                         ; a355: 66 4b       fK
    ror l004c                                                         ; a357: 66 4c       fL
    ror l004d                                                         ; a359: 66 4d       fM
    rts                                                               ; a35b: 60          `

.sub_ca35c
    lda #&62 ; 'b'                                                    ; a35c: a9 62       .b
    bne ca36a                                                         ; a35e: d0 0a       ..
.sub_ca360
    lda #&58 ; 'X'                                                    ; a360: a9 58       .X
    bne ca36a                                                         ; a362: d0 06       ..
.sub_ca364
    lda #&5d ; ']'                                                    ; a364: a9 5d       .]
    bne ca36a                                                         ; a366: d0 02       ..
.sub_ca368
    lda #&53 ; 'S'                                                    ; a368: a9 53       .S
.ca36a
    sta l000a                                                         ; a36a: 85 0a       ..
    lda #0                                                            ; a36c: a9 00       ..
    sta l000b                                                         ; a36e: 85 0b       ..
    rts                                                               ; a370: 60          `

.sub_ca371
    lda l0040                                                         ; a371: a5 40       .@
    bpl ca3e1                                                         ; a373: 10 6c       .l
    jsr sub_ca4e9                                                     ; a375: 20 e9 a4     ..
    jsr sub_ca4d6                                                     ; a378: 20 d6 a4     ..
    beq ca3c3                                                         ; a37b: f0 46       .F
.loop_ca37d
    lsr l0041                                                         ; a37d: 46 41       FA
    ror l0042                                                         ; a37f: 66 42       fB
    ror l0043                                                         ; a381: 66 43       fC
    ror l0044                                                         ; a383: 66 44       fD
    ror l0049                                                         ; a385: 66 49       fI
    ror l004a                                                         ; a387: 66 4a       fJ
    ror l004b                                                         ; a389: 66 4b       fK
    ror l004c                                                         ; a38b: 66 4c       fL
    inc l0040                                                         ; a38d: e6 40       .@
    beq ca3e7                                                         ; a38f: f0 56       .V
.ca391
    lda l0040                                                         ; a391: a5 40       .@
    cmp #&a0                                                          ; a393: c9 a0       ..
    beq ca3c3                                                         ; a395: f0 2c       .,
    bcs ca3e7                                                         ; a397: b0 4e       .N
    cmp #&99                                                          ; a399: c9 99       ..
    bcs loop_ca37d                                                    ; a39b: b0 e0       ..
    adc #8                                                            ; a39d: 69 08       i.
    sta l0040                                                         ; a39f: 85 40       .@
    lda l004b                                                         ; a3a1: a5 4b       .K
    sta l004c                                                         ; a3a3: 85 4c       .L
    lda l004a                                                         ; a3a5: a5 4a       .J
    sta l004b                                                         ; a3a7: 85 4b       .K
    lda l0049                                                         ; a3a9: a5 49       .I
    sta l004a                                                         ; a3ab: 85 4a       .J
    lda l0044                                                         ; a3ad: a5 44       .D
    sta l0049                                                         ; a3af: 85 49       .I
    lda l0043                                                         ; a3b1: a5 43       .C
    sta l0044                                                         ; a3b3: 85 44       .D
    lda l0042                                                         ; a3b5: a5 42       .B
    sta l0043                                                         ; a3b7: 85 43       .C
    lda l0041                                                         ; a3b9: a5 41       .A
    sta l0042                                                         ; a3bb: 85 42       .B
    lda #0                                                            ; a3bd: a9 00       ..
    sta l0041                                                         ; a3bf: 85 41       .A
    beq ca391                                                         ; a3c1: f0 ce       ..
.ca3c3
    lda l003e                                                         ; a3c3: a5 3e       .>
    bpl ca3e0                                                         ; a3c5: 10 19       ..
.sub_ca3c7
    sec                                                               ; a3c7: 38          8
    lda #0                                                            ; a3c8: a9 00       ..
    sbc l0044                                                         ; a3ca: e5 44       .D
    sta l0044                                                         ; a3cc: 85 44       .D
    lda #0                                                            ; a3ce: a9 00       ..
    sbc l0043                                                         ; a3d0: e5 43       .C
    sta l0043                                                         ; a3d2: 85 43       .C
    lda #0                                                            ; a3d4: a9 00       ..
    sbc l0042                                                         ; a3d6: e5 42       .B
    sta l0042                                                         ; a3d8: 85 42       .B
    lda #0                                                            ; a3da: a9 00       ..
    sbc l0041                                                         ; a3dc: e5 41       .A
    sta l0041                                                         ; a3de: 85 41       .A
.ca3e0
    rts                                                               ; a3e0: 60          `

.ca3e1
    jsr sub_ca331                                                     ; a3e1: 20 31 a3     1.
    jmp zero_misc_values                                              ; a3e4: 4c 93 a4    L..

.ca3e7
    jmp c8cbb                                                         ; a3e7: 4c bb 8c    L..

.sub_ca3ea
    ldx #0                                                            ; a3ea: a2 00       ..
    stx l0045                                                         ; a3ec: 86 45       .E
    stx l003f                                                         ; a3ee: 86 3f       .?
    lda l006d                                                         ; a3f0: a5 6d       .m
    bpl ca3f9                                                         ; a3f2: 10 05       ..
    jsr sub_c8c3c                                                     ; a3f4: 20 3c 8c     <.
    ldx #&ff                                                          ; a3f7: a2 ff       ..
.ca3f9
    stx l003e                                                         ; a3f9: 86 3e       .>
    lda l006a                                                         ; a3fb: a5 6a       .j
    sta l0044                                                         ; a3fd: 85 44       .D
    lda l006b                                                         ; a3ff: a5 6b       .k
    sta l0043                                                         ; a401: 85 43       .C
    lda l006c                                                         ; a403: a5 6c       .l
    sta l0042                                                         ; a405: 85 42       .B
    lda l006d                                                         ; a407: a5 6d       .m
    sta l0041                                                         ; a409: 85 41       .A
    lda #&a0                                                          ; a40b: a9 a0       ..
    sta l0040                                                         ; a40d: 85 40       .@
    jmp ca428                                                         ; a40f: 4c 28 a4    L(.

.sub_ca412
    pha                                                               ; a412: 48          H
    jsr zero_misc_values                                              ; a413: 20 93 a4     ..
    pla                                                               ; a416: 68          h
    beq ca3e0                                                         ; a417: f0 c7       ..
    bpl ca422                                                         ; a419: 10 07       ..
    sta l003e                                                         ; a41b: 85 3e       .>
    sec                                                               ; a41d: 38          8
    lda #0                                                            ; a41e: a9 00       ..
    sbc l003e                                                         ; a420: e5 3e       .>
.ca422
    sta l0041                                                         ; a422: 85 41       .A
    lda #&88                                                          ; a424: a9 88       ..
    sta l0040                                                         ; a426: 85 40       .@
.ca428
    lda l0041                                                         ; a428: a5 41       .A
    bmi ca3e0                                                         ; a42a: 30 b4       0.
    ora l0042                                                         ; a42c: 05 42       .B
    ora l0043                                                         ; a42e: 05 43       .C
    ora l0044                                                         ; a430: 05 44       .D
    ora l0045                                                         ; a432: 05 45       .E
    beq ca49f                                                         ; a434: f0 69       .i
    lda l0040                                                         ; a436: a5 40       .@
.ca438
    ldy l0041                                                         ; a438: a4 41       .A
    bmi ca3e0                                                         ; a43a: 30 a4       0.
    bne ca45f                                                         ; a43c: d0 21       .!
    ldx l0042                                                         ; a43e: a6 42       .B
    stx l0041                                                         ; a440: 86 41       .A
    ldx l0043                                                         ; a442: a6 43       .C
    stx l0042                                                         ; a444: 86 42       .B
    ldx l0044                                                         ; a446: a6 44       .D
    stx l0043                                                         ; a448: 86 43       .C
    ldx l0045                                                         ; a44a: a6 45       .E
    stx l0044                                                         ; a44c: 86 44       .D
    sty l0045                                                         ; a44e: 84 45       .E
    sec                                                               ; a450: 38          8
    sbc #8                                                            ; a451: e9 08       ..
    sta l0040                                                         ; a453: 85 40       .@
    bcs ca438                                                         ; a455: b0 e1       ..
    dec l003f                                                         ; a457: c6 3f       .?
    bcc ca438                                                         ; a459: 90 dd       ..
.ca45b
    ldy l0041                                                         ; a45b: a4 41       .A
    bmi ca4a5                                                         ; a45d: 30 46       0F
.ca45f
    asl l0045                                                         ; a45f: 06 45       .E
    rol l0044                                                         ; a461: 26 44       &D
    rol l0043                                                         ; a463: 26 43       &C
    rol l0042                                                         ; a465: 26 42       &B
    rol l0041                                                         ; a467: 26 41       &A
    sbc #0                                                            ; a469: e9 00       ..
    sta l0040                                                         ; a46b: 85 40       .@
    bcs ca45b                                                         ; a46d: b0 ec       ..
    dec l003f                                                         ; a46f: c6 3f       .?
    bcc ca45b                                                         ; a471: 90 e8       ..
.ca473
    lda l0045                                                         ; a473: a5 45       .E
    cmp #&80                                                          ; a475: c9 80       ..
    bcc ca489                                                         ; a477: 90 10       ..
    beq ca483                                                         ; a479: f0 08       ..
    lda #&ff                                                          ; a47b: a9 ff       ..
    jsr sub_ca27e                                                     ; a47d: 20 7e a2     ~.
    jmp ca489                                                         ; a480: 4c 89 a4    L..

.ca483
    lda l0044                                                         ; a483: a5 44       .D
    ora #1                                                            ; a485: 09 01       ..
    sta l0044                                                         ; a487: 85 44       .D
.ca489
    lda #0                                                            ; a489: a9 00       ..
    sta l0045                                                         ; a48b: 85 45       .E
    lda l003f                                                         ; a48d: a5 3f       .?
    beq ca4a5                                                         ; a48f: f0 14       ..
    bpl ca4a6                                                         ; a491: 10 13       ..
.zero_misc_values
    lda #0                                                            ; a493: a9 00       ..
    sta l0041                                                         ; a495: 85 41       .A
    sta l0042                                                         ; a497: 85 42       .B
    sta l0043                                                         ; a499: 85 43       .C
    sta l0044                                                         ; a49b: 85 44       .D
    sta l0045                                                         ; a49d: 85 45       .E
.ca49f
    sta l003e                                                         ; a49f: 85 3e       .>
    sta l0040                                                         ; a4a1: 85 40       .@
    sta l003f                                                         ; a4a3: 85 3f       .?
.ca4a5
    rts                                                               ; a4a5: 60          `

.ca4a6
    jmp c9e50                                                         ; a4a6: 4c 50 9e    LP.

.sub_ca4a9
    lda l0040                                                         ; a4a9: a5 40       .@
    bpl ca4d2                                                         ; a4ab: 10 25       .%
    jsr sub_ca371                                                     ; a4ad: 20 71 a3     q.
    lda l0044                                                         ; a4b0: a5 44       .D
    sta l003a                                                         ; a4b2: 85 3a       .:
    jsr sub_ca0eb                                                     ; a4b4: 20 eb a0     ..
    lda #&80                                                          ; a4b7: a9 80       ..
    sta l0040                                                         ; a4b9: 85 40       .@
    ldx l0041                                                         ; a4bb: a6 41       .A
    bpl ca4cf                                                         ; a4bd: 10 10       ..
    eor l003e                                                         ; a4bf: 45 3e       E>
    sta l003e                                                         ; a4c1: 85 3e       .>
    bpl ca4ca                                                         ; a4c3: 10 05       ..
    inc l003a                                                         ; a4c5: e6 3a       .:
    jmp ca4cc                                                         ; a4c7: 4c cc a4    L..

.ca4ca
    dec l003a                                                         ; a4ca: c6 3a       .:
.ca4cc
    jsr sub_ca3c7                                                     ; a4cc: 20 c7 a3     ..
.ca4cf
    jmp ca428                                                         ; a4cf: 4c 28 a4    L(.

.ca4d2
    lda #0                                                            ; a4d2: a9 00       ..
    sta l003a                                                         ; a4d4: 85 3a       .:
.sub_ca4d6
    lda l0041                                                         ; a4d6: a5 41       .A
    ora l0042                                                         ; a4d8: 05 42       .B
    ora l0043                                                         ; a4da: 05 43       .C
    ora l0044                                                         ; a4dc: 05 44       .D
    ora l0045                                                         ; a4de: 05 45       .E
    beq ca49f                                                         ; a4e0: f0 bd       ..
    lda l003e                                                         ; a4e2: a5 3e       .>
    bmi ca4e8                                                         ; a4e4: 30 02       0.
    lda #1                                                            ; a4e6: a9 01       ..
.ca4e8
    rts                                                               ; a4e8: 60          `

.sub_ca4e9
    lda #0                                                            ; a4e9: a9 00       ..
    sta l0046                                                         ; a4eb: 85 46       .F
    sta l0048                                                         ; a4ed: 85 48       .H
    sta l0049                                                         ; a4ef: 85 49       .I
    sta l004a                                                         ; a4f1: 85 4a       .J
    sta l004b                                                         ; a4f3: 85 4b       .K
    sta l004c                                                         ; a4f5: 85 4c       .L
    sta l004d                                                         ; a4f7: 85 4d       .M
    rts                                                               ; a4f9: 60          `

.sub_ca4fa
    jsr zero_misc_values                                              ; a4fa: 20 93 a4     ..
    ldy #&80                                                          ; a4fd: a0 80       ..
    sty l0041                                                         ; a4ff: 84 41       .A
    iny                                                               ; a501: c8          .
    sty l0040                                                         ; a502: 84 40       .@
    tya                                                               ; a504: 98          .
    rts                                                               ; a505: 60          `

    equb &ff                                                          ; a506: ff          .
.bytecode_jump_table_low
    equb <bytecode_opcode_00_handler                                  ; a507: 50          P
    equb <bytecode_opcode_01_handler                                  ; a508: 50          P
    equb <bytecode_opcode_02_handler                                  ; a509: 50          P
    equb <bytecode_opcode_03_handler                                  ; a50a: 50          P
    equb <bytecode_opcode_04_handler                                  ; a50b: bc          .
    equb <bytecode_opcode_05_handler                                  ; a50c: fb          .
    equb <bytecode_opcode_06_handler                                  ; a50d: fb          .
    equb <bytecode_opcode_07_handler                                  ; a50e: 6d          m
    equb <bytecode_opcode_08_handler                                  ; a50f: 1c          .
    equb <bytecode_opcode_09_handler                                  ; a510: 63          c
    equb <bytecode_opcode_0a_handler                                  ; a511: 63          c
    equb <bytecode_opcode_0b_handler                                  ; a512: 63          c
    equb <bytecode_opcode_0c_handler                                  ; a513: 63          c
    equb <bytecode_opcode_0d_handler                                  ; a514: 63          c
    equb <bytecode_opcode_0e_handler                                  ; a515: 0e          .
    equb <bytecode_opcode_0f_handler                                  ; a516: 0e          .
    equb <bytecode_opcode_10_handler                                  ; a517: 54          T
    equb <bytecode_opcode_11_handler                                  ; a518: 5b          [
    equb <bytecode_opcode_12_handler                                  ; a519: 5b          [
    equb <bytecode_opcode_13_handler                                  ; a51a: 5b          [
    equb <bytecode_opcode_14_handler                                  ; a51b: 5b          [
    equb <bytecode_opcode_15_handler                                  ; a51c: 5b          [
    equb <bytecode_opcode_16_handler                                  ; a51d: 71          q
    equb <bytecode_opcode_17_handler                                  ; a51e: 71          q
    equb <bytecode_opcode_18_handler                                  ; a51f: 44          D
    equb <bytecode_opcode_19_handler                                  ; a520: 44          D
    equb <bytecode_opcode_1a_handler                                  ; a521: 44          D
    equb <bytecode_opcode_1b_handler                                  ; a522: 44          D
    equb <bytecode_opcode_1c_handler                                  ; a523: 44          D
    equb <bytecode_opcode_1d_handler                                  ; a524: ef          .
    equb <bytecode_opcode_1e_handler                                  ; a525: ef          .
    equb <bytecode_opcode_1f_handler                                  ; a526: a3          .
    equb <bytecode_opcode_20_handler                                  ; a527: 15          .
    equb <bytecode_opcode_21_handler                                  ; a528: 4c          L
    equb <bytecode_opcode_22_handler                                  ; a529: 4c          L
    equb <bytecode_opcode_23_handler                                  ; a52a: 4c          L
    equb <bytecode_opcode_24_handler                                  ; a52b: 4c          L
    equb <bytecode_opcode_25_handler                                  ; a52c: 4c          L
    equb <bytecode_opcode_26_handler                                  ; a52d: 8b          .
    equb <bytecode_opcode_27_handler                                  ; a52e: 8b          .
    equb <bytecode_opcode_28_handler                                  ; a52f: c6          .
    equb <bytecode_opcode_29_handler                                  ; a530: 25          %
    equb <bytecode_opcode_2a_handler                                  ; a531: 37          7
    equb <bytecode_opcode_2b_handler                                  ; a532: 3e          >
    equb <bytecode_opcode_2c_handler                                  ; a533: 17          .
    equb <bytecode_opcode_2d_handler                                  ; a534: 1f          .
    equb <bytecode_opcode_2e_handler                                  ; a535: 16          .
    equb <bytecode_opcode_2f_handler                                  ; a536: 11          .
    equb <bytecode_opcode_30_handler                                  ; a537: 0b          .
    equb <bytecode_opcode_31_handler                                  ; a538: 66          f
    equb <bytecode_opcode_32_handler                                  ; a539: 0e          .
    equb <bytecode_opcode_33_handler                                  ; a53a: 3a          :
    equb <bytecode_opcode_34_handler                                  ; a53b: 3a          :
    equb <bytecode_opcode_35_handler                                  ; a53c: 3a          :
    equb <bytecode_opcode_36_handler                                  ; a53d: 3a          :
    equb <bytecode_opcode_37_handler                                  ; a53e: 3a          :
    equb <bytecode_opcode_38_handler                                  ; a53f: e5          .
    equb <bytecode_opcode_39_handler                                  ; a540: e5          .
    equb <bytecode_opcode_3a_handler                                  ; a541: 5d          ]
    equb <bytecode_opcode_3b_handler                                  ; a542: 3f          ?
    equb <bytecode_opcode_3c_handler                                  ; a543: 3f          ?
    equb <bytecode_opcode_3d_handler                                  ; a544: 3f          ?
    equb <bytecode_opcode_3e_handler                                  ; a545: 3f          ?
    equb <bytecode_opcode_3f_handler                                  ; a546: 3f          ?
    equb <bytecode_opcode_40_handler                                  ; a547: 7e          ~
    equb <bytecode_opcode_41_handler                                  ; a548: 7e          ~
    equb <bytecode_opcode_42_handler                                  ; a549: 10          .
    equb <bytecode_opcode_43_handler                                  ; a54a: a2          .
    equb <bytecode_opcode_44_handler                                  ; a54b: 32          2
    equb <bytecode_opcode_45_handler                                  ; a54c: 4a          J
    equb <bytecode_opcode_46_handler                                  ; a54d: 55          U
    equb <bytecode_opcode_47_handler                                  ; a54e: 6e          n
    equb <bytecode_opcode_48_handler                                  ; a54f: 79          y
    equb <bytecode_opcode_49_handler                                  ; a550: 9a          .
    equb <bytecode_opcode_4a_handler                                  ; a551: f6          .
    equb <bytecode_opcode_4b_handler                                  ; a552: 88          .
    equb <bytecode_opcode_4c_handler                                  ; a553: 19          .
    equb <bytecode_opcode_4d_handler                                  ; a554: 39          9
    equb <bytecode_opcode_4e_handler                                  ; a555: aa          .
    equb <bytecode_opcode_4f_handler                                  ; a556: f1          .
    equb <bytecode_opcode_50_handler                                  ; a557: a3          .
    equb <bytecode_opcode_51_handler                                  ; a558: 3b          ;
    equb <bytecode_opcode_52_handler                                  ; a559: bd          .
    equb <bytecode_opcode_53_handler                                  ; a55a: 3b          ;
    equb <bytecode_opcode_54_handler                                  ; a55b: 27          '
    equb <bytecode_opcode_55_handler                                  ; a55c: 27          '
    equb <bytecode_opcode_56_handler                                  ; a55d: 27          '
    equb <bytecode_opcode_57_handler                                  ; a55e: 27          '
    equb <bytecode_opcode_58_handler                                  ; a55f: 27          '
    equb <bytecode_opcode_59_handler                                  ; a560: 27          '
    equb <bytecode_opcode_5a_handler                                  ; a561: 56          V
    equb <bytecode_opcode_5b_handler                                  ; a562: 56          V
    equb <bytecode_opcode_5c_handler                                  ; a563: a0          .
    equb <bytecode_opcode_5d_handler                                  ; a564: a0          .
    equb <bytecode_opcode_5e_handler                                  ; a565: a0          .
    equb <bytecode_opcode_5f_handler                                  ; a566: a0          .
    equb <bytecode_opcode_60_handler                                  ; a567: a0          .
    equb <bytecode_opcode_61_handler                                  ; a568: a0          .
    equb <bytecode_opcode_62_handler                                  ; a569: 61          a
    equb <bytecode_opcode_63_handler                                  ; a56a: 61          a
    equb <bytecode_opcode_64_handler                                  ; a56b: 61          a
    equb <bytecode_opcode_65_handler                                  ; a56c: 61          a
    equb <bytecode_opcode_66_handler                                  ; a56d: 61          a
    equb <bytecode_opcode_67_handler                                  ; a56e: 61          a
    equb <bytecode_opcode_68_handler                                  ; a56f: 6c          l
    equb <bytecode_opcode_69_handler                                  ; a570: 6c          l
    equb <bytecode_opcode_6a_handler                                  ; a571: 80          .
    equb <bytecode_opcode_6b_handler                                  ; a572: 90          .
    equb <bytecode_opcode_6c_handler                                  ; a573: d1          .
    equb <bytecode_opcode_6d_handler                                  ; a574: d1          .
    equb <bytecode_opcode_6e_handler                                  ; a575: d1          .
    equb <bytecode_opcode_6f_handler                                  ; a576: d1          .
    equb <bytecode_opcode_70_handler                                  ; a577: d1          .
    equb <bytecode_opcode_71_handler                                  ; a578: d1          .
    equb <bytecode_opcode_72_handler                                  ; a579: 34          4
    equb <bytecode_opcode_73_handler                                  ; a57a: 34          4
    equb <bytecode_opcode_74_handler                                  ; a57b: 34          4
    equb <bytecode_opcode_75_handler                                  ; a57c: 34          4
    equb <bytecode_opcode_76_handler                                  ; a57d: 34          4
    equb <bytecode_opcode_77_handler                                  ; a57e: 21          !
    equb <bytecode_opcode_78_handler                                  ; a57f: ac          .
    equb <bytecode_opcode_79_handler                                  ; a580: ac          .
    equb <bytecode_opcode_7a_handler                                  ; a581: ac          .
    equb <bytecode_opcode_7b_handler                                  ; a582: ac          .
    equb <bytecode_opcode_7c_handler                                  ; a583: 5b          [
    equb <bytecode_opcode_7d_handler                                  ; a584: 24          $
    equb <bytecode_opcode_7e_handler                                  ; a585: 78          x
    equb <bytecode_opcode_7f_handler                                  ; a586: 87          .
    equb <bytecode_opcode_80_handler                                  ; a587: 98          .
    equb <bytecode_opcode_81_handler                                  ; a588: fc          .
    equb <bytecode_opcode_82_handler                                  ; a589: 2d          -
    equb <bytecode_opcode_83_handler                                  ; a58a: 05          .
    equb <bytecode_opcode_84_handler                                  ; a58b: 0a          .
    equb <bytecode_opcode_85_handler                                  ; a58c: 14          .
    equb <bytecode_opcode_86_handler                                  ; a58d: 1e          .
    equb <bytecode_opcode_87_handler                                  ; a58e: 83          .
    equb <bytecode_opcode_88_handler                                  ; a58f: 9d          .
    equb <bytecode_opcode_89_handler                                  ; a590: bf          .
    equb <bytecode_opcode_8a_handler                                  ; a591: bd          .
    equb <bytecode_opcode_8b_handler                                  ; a592: cb          .
    equb <bytecode_opcode_8c_handler                                  ; a593: 00          .
    equb <bytecode_opcode_8d_handler                                  ; a594: 94          .
    equb <bytecode_opcode_8e_handler                                  ; a595: f7          .
    equb <bytecode_opcode_8f_handler                                  ; a596: f0          .
    equb <bytecode_opcode_90_handler                                  ; a597: 6b          k
    equb <bytecode_opcode_91_handler                                  ; a598: 18          .
    equb <bytecode_opcode_92_handler                                  ; a599: 18          .
    equb <bytecode_opcode_93_handler                                  ; a59a: 38          8
    equb <bytecode_opcode_94_handler                                  ; a59b: a1          .
    equb <bytecode_opcode_95_handler                                  ; a59c: 24          $
    equb <bytecode_opcode_96_handler                                  ; a59d: 7a          z
    equb <bytecode_opcode_97_handler                                  ; a59e: 09          .
    equb <bytecode_opcode_98_handler                                  ; a59f: 58          X
    equb <bytecode_opcode_99_handler                                  ; a5a0: 06          .
    equb <bytecode_opcode_9a_handler                                  ; a5a1: 06          .
    equb <bytecode_opcode_9b_handler                                  ; a5a2: fd          .
    equb <bytecode_opcode_9c_handler                                  ; a5a3: 71          q
    equb <bytecode_opcode_9d_handler                                  ; a5a4: 74          t
    equb <bytecode_opcode_9e_handler                                  ; a5a5: 3f          ?
    equb <bytecode_opcode_9f_handler                                  ; a5a6: 0d          .
    equb <bytecode_opcode_a0_handler                                  ; a5a7: 29          )
    equb <bytecode_opcode_a1_handler                                  ; a5a8: 35          5
    equb <bytecode_opcode_a2_handler                                  ; a5a9: 81          .
    equb <bytecode_opcode_a3_handler                                  ; a5aa: 81          .
    equb <bytecode_opcode_a4_handler                                  ; a5ab: 8a          .
    equb <bytecode_opcode_a5_handler                                  ; a5ac: 51          Q
    equb <bytecode_opcode_a6_handler                                  ; a5ad: b3          .
    equb <bytecode_opcode_a7_handler                                  ; a5ae: bd          .
    equb <bytecode_opcode_a8_handler                                  ; a5af: 2f          /
    equb <bytecode_opcode_a9_handler                                  ; a5b0: 1b          .
    equb <bytecode_opcode_aa_handler                                  ; a5b1: b3          .
    equb <bytecode_opcode_ab_handler                                  ; a5b2: bd          .
    equb <bytecode_opcode_ac_handler                                  ; a5b3: 01          .
    equb <bytecode_opcode_ad_handler                                  ; a5b4: d6          .
    equb <bytecode_opcode_ae_handler                                  ; a5b5: eb          .
    equb <bytecode_opcode_af_handler                                  ; a5b6: cd          .
    equb <bytecode_opcode_b0_handler                                  ; a5b7: 24          $
    equb <bytecode_opcode_b1_handler                                  ; a5b8: 3b          ;
    equb <bytecode_opcode_b2_handler                                  ; a5b9: 15          .
    equb <bytecode_opcode_b3_handler                                  ; a5ba: c4          .
    equb <bytecode_opcode_b4_handler                                  ; a5bb: 3d          =
    equb <bytecode_opcode_b5_handler                                  ; a5bc: 9d          .
    equb <bytecode_opcode_b6_handler                                  ; a5bd: 9a          .
    equb <bytecode_opcode_b7_handler                                  ; a5be: d2          .
    equb <bytecode_opcode_b8_handler                                  ; a5bf: a9          .
    equb <bytecode_opcode_b9_handler                                  ; a5c0: e8          .
    equb <bytecode_opcode_ba_handler                                  ; a5c1: ba          .
    equb <bytecode_opcode_bb_handler                                  ; a5c2: f7          .
    equb <bytecode_opcode_bc_handler                                  ; a5c3: c5          .
    equb <bytecode_opcode_bd_handler                                  ; a5c4: 0d          .
    equb <bytecode_opcode_be_handler                                  ; a5c5: 01          .
    equb <bytecode_opcode_bf_handler                                  ; a5c6: ef          .
    equb <bytecode_opcode_c0_handler                                  ; a5c7: df          .
    equb <bytecode_opcode_c1_handler                                  ; a5c8: b6          .
    equb <bytecode_opcode_c2_handler                                  ; a5c9: a7          .
    equb <bytecode_opcode_c3_handler                                  ; a5ca: c5          .
    equb <bytecode_opcode_c4_handler                                  ; a5cb: d0          .
    equb <bytecode_opcode_c5_handler                                  ; a5cc: 53          S
    equb <bytecode_opcode_c6_handler                                  ; a5cd: 53          S
    equb <bytecode_opcode_c7_handler                                  ; a5ce: 66          f
    equb <bytecode_opcode_c8_handler                                  ; a5cf: 22          "
    equb <bytecode_opcode_c9_handler                                  ; a5d0: 22          "
    equb <bytecode_opcode_ca_handler                                  ; a5d1: cd          .
    equb <bytecode_opcode_cb_handler                                  ; a5d2: cd          .
    equb <bytecode_opcode_cc_handler                                  ; a5d3: cd          .
    equb <bytecode_opcode_cd_handler                                  ; a5d4: cd          .
    equb <bytecode_opcode_ce_handler                                  ; a5d5: cd          .
    equb <bytecode_opcode_cf_handler                                  ; a5d6: cd          .
    equb <bytecode_opcode_d0_handler                                  ; a5d7: cd          .
    equb <bytecode_opcode_d1_handler                                  ; a5d8: f1          .
    equb <bytecode_opcode_d2_handler                                  ; a5d9: f1          .
    equb <bytecode_opcode_d3_handler                                  ; a5da: 59          Y
    equb <bytecode_opcode_d4_handler                                  ; a5db: 67          g
    equb <bytecode_opcode_d5_handler                                  ; a5dc: 54          T
    equb <bytecode_opcode_d6_handler                                  ; a5dd: d5          .
    equb <bytecode_opcode_d7_handler                                  ; a5de: 68          h
    equb <bytecode_opcode_d8_handler                                  ; a5df: fe          .
    equb <bytecode_opcode_d9_handler                                  ; a5e0: c5          .
    equb <bytecode_opcode_da_handler                                  ; a5e1: d6          .
    equb <bytecode_opcode_db_handler                                  ; a5e2: e1          .
    equb <bytecode_opcode_dc_handler                                  ; a5e3: 0c          .
    equb <bytecode_opcode_dd_handler                                  ; a5e4: af          .
    equb <bytecode_opcode_de_handler                                  ; a5e5: 34          4
    equb <bytecode_opcode_df_handler                                  ; a5e6: 58          X
    equb <bytecode_opcode_e0_handler                                  ; a5e7: d4          .
    equb <bytecode_opcode_e1_handler                                  ; a5e8: c2          .
    equb <bytecode_opcode_e2_handler                                  ; a5e9: 6b          k
    equb <bytecode_opcode_e3_handler                                  ; a5ea: 52          R
    equb <bytecode_opcode_e4_handler                                  ; a5eb: 8b          .
    equb <bytecode_opcode_e5_handler                                  ; a5ec: a8          .
    equb <bytecode_opcode_e6_handler                                  ; a5ed: c3          .
    equb <bytecode_opcode_e7_handler                                  ; a5ee: e2          .
    equb <bytecode_opcode_e8_handler                                  ; a5ef: f9          .
    equb <bytecode_opcode_e9_handler                                  ; a5f0: ee          .
    equb <bytecode_opcode_ea_handler                                  ; a5f1: 4b          K
    equb <bytecode_opcode_eb_handler                                  ; a5f2: 86          .
    equb <bytecode_opcode_ec_handler                                  ; a5f3: 60          `
    equb <bytecode_opcode_ed_handler                                  ; a5f4: db          .
    equb <bytecode_opcode_ee_handler                                  ; a5f5: d4          .
    equb <bytecode_opcode_ef_handler                                  ; a5f6: b2          .
    equb <bytecode_opcode_f0_handler                                  ; a5f7: a1          .
    equb <bytecode_opcode_f1_handler                                  ; a5f8: c6          .
    equb <bytecode_opcode_f2_handler                                  ; a5f9: c3          .
    equb <bytecode_opcode_f3_handler                                  ; a5fa: ca          .
    equb <bytecode_opcode_f4_handler                                  ; a5fb: d5          .
    equb <bytecode_opcode_f5_handler                                  ; a5fc: e4          .
    equb <bytecode_opcode_f6_handler                                  ; a5fd: fc          .
    equb <bytecode_opcode_f7_handler                                  ; a5fe: 5e          ^
    equb <bytecode_opcode_f8_handler                                  ; a5ff: 09          .
    equb <bytecode_opcode_f9_handler                                  ; a600: 07          .
    equb <bytecode_opcode_fa_handler                                  ; a601: 19          .
    equb <bytecode_opcode_fb_handler                                  ; a602: 52          R
    equb <bytecode_opcode_fc_handler                                  ; a603: c0          .
    equb <bytecode_opcode_fd_handler                                  ; a604: 9e          .
    equb <bytecode_opcode_fe_handler                                  ; a605: 48          H
    equb <bytecode_opcode_ff_handler                                  ; a606: 4e          N
.opcode_subrange3_jump_table_low
    equb <opcode_72_sub_handler                                       ; a607: 77          w
    equb <opcode_73_sub_handler                                       ; a608: 1f          .
    equb <opcode_74_sub_handler                                       ; a609: 8c          .
    equb <opcode_75_sub_handler                                       ; a60a: d6          .
    equb <opcode_76_sub_handler                                       ; a60b: 5d          ]
.bytecode_jump_table_high
    equb >bytecode_opcode_00_handler                                  ; a60c: 88          .
    equb >bytecode_opcode_01_handler                                  ; a60d: 88          .
    equb >bytecode_opcode_02_handler                                  ; a60e: 88          .
    equb >bytecode_opcode_03_handler                                  ; a60f: 88          .
    equb >bytecode_opcode_04_handler                                  ; a610: 88          .
    equb >bytecode_opcode_05_handler                                  ; a611: 88          .
    equb >bytecode_opcode_06_handler                                  ; a612: 88          .
    equb >bytecode_opcode_07_handler                                  ; a613: 8a          .
    equb >bytecode_opcode_08_handler                                  ; a614: 88          .
    equb >bytecode_opcode_09_handler                                  ; a615: 88          .
    equb >bytecode_opcode_0a_handler                                  ; a616: 88          .
    equb >bytecode_opcode_0b_handler                                  ; a617: 88          .
    equb >bytecode_opcode_0c_handler                                  ; a618: 88          .
    equb >bytecode_opcode_0d_handler                                  ; a619: 88          .
    equb >bytecode_opcode_0e_handler                                  ; a61a: 89          .
    equb >bytecode_opcode_0f_handler                                  ; a61b: 89          .
    equb >bytecode_opcode_10_handler                                  ; a61c: 8a          .
    equb >bytecode_opcode_11_handler                                  ; a61d: 89          .
    equb >bytecode_opcode_12_handler                                  ; a61e: 89          .
    equb >bytecode_opcode_13_handler                                  ; a61f: 89          .
    equb >bytecode_opcode_14_handler                                  ; a620: 89          .
    equb >bytecode_opcode_15_handler                                  ; a621: 89          .
    equb >bytecode_opcode_16_handler                                  ; a622: 89          .
    equb >bytecode_opcode_17_handler                                  ; a623: 89          .
    equb >bytecode_opcode_18_handler                                  ; a624: 88          .
    equb >bytecode_opcode_19_handler                                  ; a625: 88          .
    equb >bytecode_opcode_1a_handler                                  ; a626: 88          .
    equb >bytecode_opcode_1b_handler                                  ; a627: 88          .
    equb >bytecode_opcode_1c_handler                                  ; a628: 88          .
    equb >bytecode_opcode_1d_handler                                  ; a629: 88          .
    equb >bytecode_opcode_1e_handler                                  ; a62a: 88          .
    equb >bytecode_opcode_1f_handler                                  ; a62b: 89          .
    equb >bytecode_opcode_20_handler                                  ; a62c: 88          .
    equb >bytecode_opcode_21_handler                                  ; a62d: 89          .
    equb >bytecode_opcode_22_handler                                  ; a62e: 89          .
    equb >bytecode_opcode_23_handler                                  ; a62f: 89          .
    equb >bytecode_opcode_24_handler                                  ; a630: 89          .
    equb >bytecode_opcode_25_handler                                  ; a631: 89          .
    equb >bytecode_opcode_26_handler                                  ; a632: 89          .
    equb >bytecode_opcode_27_handler                                  ; a633: 89          .
    equb >bytecode_opcode_28_handler                                  ; a634: 89          .
    equb >bytecode_opcode_29_handler                                  ; a635: 8a          .
    equb >bytecode_opcode_2a_handler                                  ; a636: 8f          .
    equb >bytecode_opcode_2b_handler                                  ; a637: 8f          .
    equb >bytecode_opcode_2c_handler                                  ; a638: 8f          .
    equb >bytecode_opcode_2d_handler                                  ; a639: 8f          .
    equb >bytecode_opcode_2e_handler                                  ; a63a: 8a          .
    equb >bytecode_opcode_2f_handler                                  ; a63b: 8a          .
    equb >bytecode_opcode_30_handler                                  ; a63c: 8a          .
    equb >bytecode_opcode_31_handler                                  ; a63d: 8a          .
    equb >bytecode_opcode_32_handler                                  ; a63e: 88          .
    equb >bytecode_opcode_33_handler                                  ; a63f: 88          .
    equb >bytecode_opcode_34_handler                                  ; a640: 88          .
    equb >bytecode_opcode_35_handler                                  ; a641: 88          .
    equb >bytecode_opcode_36_handler                                  ; a642: 88          .
    equb >bytecode_opcode_37_handler                                  ; a643: 88          .
    equb >bytecode_opcode_38_handler                                  ; a644: 88          .
    equb >bytecode_opcode_39_handler                                  ; a645: 88          .
    equb >bytecode_opcode_3a_handler                                  ; a646: 8a          .
    equb >bytecode_opcode_3b_handler                                  ; a647: 89          .
    equb >bytecode_opcode_3c_handler                                  ; a648: 89          .
    equb >bytecode_opcode_3d_handler                                  ; a649: 89          .
    equb >bytecode_opcode_3e_handler                                  ; a64a: 89          .
    equb >bytecode_opcode_3f_handler                                  ; a64b: 89          .
    equb >bytecode_opcode_40_handler                                  ; a64c: 89          .
    equb >bytecode_opcode_41_handler                                  ; a64d: 89          .
    equb >bytecode_opcode_42_handler                                  ; a64e: 9b          .
    equb >bytecode_opcode_43_handler                                  ; a64f: ae          .
    equb >bytecode_opcode_44_handler                                  ; a650: 97          .
    equb >bytecode_opcode_45_handler                                  ; a651: 97          .
    equb >bytecode_opcode_46_handler                                  ; a652: 97          .
    equb >bytecode_opcode_47_handler                                  ; a653: 97          .
    equb >bytecode_opcode_48_handler                                  ; a654: 97          .
    equb >bytecode_opcode_49_handler                                  ; a655: 89          .
    equb >bytecode_opcode_4a_handler                                  ; a656: a8          .
    equb >bytecode_opcode_4b_handler                                  ; a657: 8a          .
    equb >bytecode_opcode_4c_handler                                  ; a658: a9          .
    equb >bytecode_opcode_4d_handler                                  ; a659: a9          .
    equb >bytecode_opcode_4e_handler                                  ; a65a: a8          .
    equb >bytecode_opcode_4f_handler                                  ; a65b: 8a          .
    equb >bytecode_opcode_50_handler                                  ; a65c: 99          .
    equb >bytecode_opcode_51_handler                                  ; a65d: ae          .
    equb >bytecode_opcode_52_handler                                  ; a65e: 89          .
    equb >bytecode_opcode_53_handler                                  ; a65f: 8a          .
    equb >bytecode_opcode_54_handler                                  ; a660: 8e          .
    equb >bytecode_opcode_55_handler                                  ; a661: 8e          .
    equb >bytecode_opcode_56_handler                                  ; a662: 8e          .
    equb >bytecode_opcode_57_handler                                  ; a663: 8e          .
    equb >bytecode_opcode_58_handler                                  ; a664: 8e          .
    equb >bytecode_opcode_59_handler                                  ; a665: 8e          .
    equb >bytecode_opcode_5a_handler                                  ; a666: 8e          .
    equb >bytecode_opcode_5b_handler                                  ; a667: 8e          .
    equb >bytecode_opcode_5c_handler                                  ; a668: 8e          .
    equb >bytecode_opcode_5d_handler                                  ; a669: 8e          .
    equb >bytecode_opcode_5e_handler                                  ; a66a: 8e          .
    equb >bytecode_opcode_5f_handler                                  ; a66b: 8e          .
    equb >bytecode_opcode_60_handler                                  ; a66c: 8e          .
    equb >bytecode_opcode_61_handler                                  ; a66d: 8e          .
    equb >bytecode_opcode_62_handler                                  ; a66e: a9          .
    equb >bytecode_opcode_63_handler                                  ; a66f: a9          .
    equb >bytecode_opcode_64_handler                                  ; a670: a9          .
    equb >bytecode_opcode_65_handler                                  ; a671: a9          .
    equb >bytecode_opcode_66_handler                                  ; a672: a9          .
    equb >bytecode_opcode_67_handler                                  ; a673: a9          .
    equb >bytecode_opcode_68_handler                                  ; a674: 8e          .
    equb >bytecode_opcode_69_handler                                  ; a675: 8e          .
    equb >bytecode_opcode_6a_handler                                  ; a676: 8e          .
    equb >bytecode_opcode_6b_handler                                  ; a677: 8e          .
    equb >bytecode_opcode_6c_handler                                  ; a678: 8e          .
    equb >bytecode_opcode_6d_handler                                  ; a679: 8e          .
    equb >bytecode_opcode_6e_handler                                  ; a67a: 8e          .
    equb >bytecode_opcode_6f_handler                                  ; a67b: 8e          .
    equb >bytecode_opcode_70_handler                                  ; a67c: 8e          .
    equb >bytecode_opcode_71_handler                                  ; a67d: 8e          .
    equb >bytecode_opcode_72_handler                                  ; a67e: 8d          .
    equb >bytecode_opcode_73_handler                                  ; a67f: 8d          .
    equb >bytecode_opcode_74_handler                                  ; a680: 8d          .
    equb >bytecode_opcode_75_handler                                  ; a681: 8d          .
    equb >bytecode_opcode_76_handler                                  ; a682: 8d          .
    equb >bytecode_opcode_77_handler                                  ; a683: aa          .
    equb >bytecode_opcode_78_handler                                  ; a684: a9          .
    equb >bytecode_opcode_79_handler                                  ; a685: a9          .
    equb >bytecode_opcode_7a_handler                                  ; a686: a9          .
    equb >bytecode_opcode_7b_handler                                  ; a687: a9          .
    equb >bytecode_opcode_7c_handler                                  ; a688: 95          .
    equb >bytecode_opcode_7d_handler                                  ; a689: 96          .
    equb >bytecode_opcode_7e_handler                                  ; a68a: 8d          .
    equb >bytecode_opcode_7f_handler                                  ; a68b: 8d          .
    equb >bytecode_opcode_80_handler                                  ; a68c: 8d          .
    equb >bytecode_opcode_81_handler                                  ; a68d: 8e          .
    equb >bytecode_opcode_82_handler                                  ; a68e: aa          .
    equb >bytecode_opcode_83_handler                                  ; a68f: 8f          .
    equb >bytecode_opcode_84_handler                                  ; a690: 8e          .
    equb >bytecode_opcode_85_handler                                  ; a691: 8e          .
    equb >bytecode_opcode_86_handler                                  ; a692: 8e          .
    equb >bytecode_opcode_87_handler                                  ; a693: 92          .
    equb >bytecode_opcode_88_handler                                  ; a694: 92          .
    equb >bytecode_opcode_89_handler                                  ; a695: 93          .
    equb >bytecode_opcode_8a_handler                                  ; a696: 92          .
    equb >bytecode_opcode_8b_handler                                  ; a697: 92          .
    equb >bytecode_opcode_8c_handler                                  ; a698: 94          .
    equb >bytecode_opcode_8d_handler                                  ; a699: 92          .
    equb >bytecode_opcode_8e_handler                                  ; a69a: 93          .
    equb >bytecode_opcode_8f_handler                                  ; a69b: 92          .
    equb >bytecode_opcode_90_handler                                  ; a69c: 94          .
    equb >bytecode_opcode_91_handler                                  ; a69d: 94          .
    equb >bytecode_opcode_92_handler                                  ; a69e: 94          .
    equb >bytecode_opcode_93_handler                                  ; a69f: 94          .
    equb >bytecode_opcode_94_handler                                  ; a6a0: 93          .
    equb >bytecode_opcode_95_handler                                  ; a6a1: 93          .
    equb >bytecode_opcode_96_handler                                  ; a6a2: aa          .
    equb >bytecode_opcode_97_handler                                  ; a6a3: 93          .
    equb >bytecode_opcode_98_handler                                  ; a6a4: aa          .
    equb >bytecode_opcode_99_handler                                  ; a6a5: a8          .
    equb >bytecode_opcode_9a_handler                                  ; a6a6: 92          .
    equb >bytecode_opcode_9b_handler                                  ; a6a7: 91          .
    equb >bytecode_opcode_9c_handler                                  ; a6a8: 93          .
    equb >bytecode_opcode_9d_handler                                  ; a6a9: 94          .
    equb >bytecode_opcode_9e_handler                                  ; a6aa: 8b          .
    equb >bytecode_opcode_9f_handler                                  ; a6ab: 8b          .
    equb >bytecode_opcode_a0_handler                                  ; a6ac: 8b          .
    equb >bytecode_opcode_a1_handler                                  ; a6ad: 8b          .
    equb >bytecode_opcode_a2_handler                                  ; a6ae: 94          .
    equb >bytecode_opcode_a3_handler                                  ; a6af: 94          .
    equb >bytecode_opcode_a4_handler                                  ; a6b0: 94          .
    equb >bytecode_opcode_a5_handler                                  ; a6b1: 8a          .
    equb >bytecode_opcode_a6_handler                                  ; a6b2: 90          .
    equb >bytecode_opcode_a7_handler                                  ; a6b3: 90          .
    equb >bytecode_opcode_a8_handler                                  ; a6b4: 9d          .
    equb >bytecode_opcode_a9_handler                                  ; a6b5: 8b          .
    equb >bytecode_opcode_aa_handler                                  ; a6b6: 90          .
    equb >bytecode_opcode_ab_handler                                  ; a6b7: 90          .
    equb >bytecode_opcode_ac_handler                                  ; a6b8: 8b          .
    equb >bytecode_opcode_ad_handler                                  ; a6b9: 93          .
    equb >bytecode_opcode_ae_handler                                  ; a6ba: 93          .
    equb >bytecode_opcode_af_handler                                  ; a6bb: 94          .
    equb >bytecode_opcode_b0_handler                                  ; a6bc: 95          .
    equb >bytecode_opcode_b1_handler                                  ; a6bd: 95          .
    equb >bytecode_opcode_b2_handler                                  ; a6be: 99          .
    equb >bytecode_opcode_b3_handler                                  ; a6bf: 95          .
    equb >bytecode_opcode_b4_handler                                  ; a6c0: 99          .
    equb >bytecode_opcode_b5_handler                                  ; a6c1: 88          .
    equb >bytecode_opcode_b6_handler                                  ; a6c2: 96          .
    equb >bytecode_opcode_b7_handler                                  ; a6c3: 96          .
    equb >bytecode_opcode_b8_handler                                  ; a6c4: 96          .
    equb >bytecode_opcode_b9_handler                                  ; a6c5: 96          .
    equb >bytecode_opcode_ba_handler                                  ; a6c6: 96          .
    equb >bytecode_opcode_bb_handler                                  ; a6c7: 96          .
    equb >bytecode_opcode_bc_handler                                  ; a6c8: 96          .
    equb >bytecode_opcode_bd_handler                                  ; a6c9: 97          .
    equb >bytecode_opcode_be_handler                                  ; a6ca: 8e          .
    equb >bytecode_opcode_bf_handler                                  ; a6cb: 8d          .
    equb >bytecode_opcode_c0_handler                                  ; a6cc: 8d          .
    equb >bytecode_opcode_c1_handler                                  ; a6cd: 8d          .
    equb >bytecode_opcode_c2_handler                                  ; a6ce: 8d          .
    equb >bytecode_opcode_c3_handler                                  ; a6cf: 8d          .
    equb >bytecode_opcode_c4_handler                                  ; a6d0: 8d          .
    equb >bytecode_opcode_c5_handler                                  ; a6d1: 8d          .
    equb >bytecode_opcode_c6_handler                                  ; a6d2: 8d          .
    equb >bytecode_opcode_c7_handler                                  ; a6d3: 8d          .
    equb >bytecode_opcode_c8_handler                                  ; a6d4: 9f          .
    equb >bytecode_opcode_c9_handler                                  ; a6d5: 9f          .
    equb >bytecode_opcode_ca_handler                                  ; a6d6: a9          .
    equb >bytecode_opcode_cb_handler                                  ; a6d7: a9          .
    equb >bytecode_opcode_cc_handler                                  ; a6d8: a9          .
    equb >bytecode_opcode_cd_handler                                  ; a6d9: a9          .
    equb >bytecode_opcode_ce_handler                                  ; a6da: a9          .
    equb >bytecode_opcode_cf_handler                                  ; a6db: a9          .
    equb >bytecode_opcode_d0_handler                                  ; a6dc: a9          .
    equb >bytecode_opcode_d1_handler                                  ; a6dd: a9          .
    equb >bytecode_opcode_d2_handler                                  ; a6de: a9          .
    equb >bytecode_opcode_d3_handler                                  ; a6df: 9d          .
    equb >bytecode_opcode_d4_handler                                  ; a6e0: 9d          .
    equb >bytecode_opcode_d5_handler                                  ; a6e1: 9c          .
    equb >bytecode_opcode_d6_handler                                  ; a6e2: 9b          .
    equb >bytecode_opcode_d7_handler                                  ; a6e3: 9c          .
    equb >bytecode_opcode_d8_handler                                  ; a6e4: 9b          .
    equb >bytecode_opcode_d9_handler                                  ; a6e5: ad          .
    equb >bytecode_opcode_da_handler                                  ; a6e6: ae          .
    equb >bytecode_opcode_db_handler                                  ; a6e7: 90          .
    equb >bytecode_opcode_dc_handler                                  ; a6e8: 99          .
    equb >bytecode_opcode_dd_handler                                  ; a6e9: 95          .
    equb >bytecode_opcode_de_handler                                  ; a6ea: 99          .
    equb >bytecode_opcode_df_handler                                  ; a6eb: 95          .
    equb >bytecode_opcode_e0_handler                                  ; a6ec: a8          .
    equb >bytecode_opcode_e1_handler                                  ; a6ed: ae          .
    equb >bytecode_opcode_e2_handler                                  ; a6ee: a7          .
    equb >bytecode_opcode_e3_handler                                  ; a6ef: a7          .
    equb >bytecode_opcode_e4_handler                                  ; a6f0: a7          .
    equb >bytecode_opcode_e5_handler                                  ; a6f1: a7          .
    equb >bytecode_opcode_e6_handler                                  ; a6f2: a7          .
    equb >bytecode_opcode_e7_handler                                  ; a6f3: a7          .
    equb >bytecode_opcode_e8_handler                                  ; a6f4: a7          .
    equb >bytecode_opcode_e9_handler                                  ; a6f5: a7          .
    equb >bytecode_opcode_ea_handler                                  ; a6f6: a8          .
    equb >bytecode_opcode_eb_handler                                  ; a6f7: a8          .
    equb >bytecode_opcode_ec_handler                                  ; a6f8: a8          .
    equb >bytecode_opcode_ed_handler                                  ; a6f9: 9c          .
    equb >bytecode_opcode_ee_handler                                  ; a6fa: 9c          .
    equb >bytecode_opcode_ef_handler                                  ; a6fb: ae          .
    equb >bytecode_opcode_f0_handler                                  ; a6fc: 8a          .
    equb >bytecode_opcode_f1_handler                                  ; a6fd: 9c          .
    equb >bytecode_opcode_f2_handler                                  ; a6fe: 8a          .
    equb >bytecode_opcode_f3_handler                                  ; a6ff: 8a          .
    equb >bytecode_opcode_f4_handler                                  ; a700: 8a          .
    equb >bytecode_opcode_f5_handler                                  ; a701: 8a          .
    equb >bytecode_opcode_f6_handler                                  ; a702: a8          .
    equb >bytecode_opcode_f7_handler                                  ; a703: 88          .
    equb >bytecode_opcode_f8_handler                                  ; a704: 89          .
    equb >bytecode_opcode_f9_handler                                  ; a705: 9d          .
    equb >bytecode_opcode_fa_handler                                  ; a706: 9d          .
    equb >bytecode_opcode_fb_handler                                  ; a707: 8e          .
    equb >bytecode_opcode_fc_handler                                  ; a708: 8a          .
    equb >bytecode_opcode_fd_handler                                  ; a709: a8          .
    equb >bytecode_opcode_fe_handler                                  ; a70a: 8e          .
    equb >bytecode_opcode_ff_handler                                  ; a70b: 8b          .
.opcode_subrange3_jump_table_high
    equb >opcode_72_sub_handler                                       ; a70c: 8c          .
    equb >opcode_73_sub_handler                                       ; a70d: 8d          .
    equb >opcode_74_sub_handler                                       ; a70e: 8c          .
    equb >opcode_75_sub_handler                                       ; a70f: 8b          .
    equb >opcode_76_sub_handler                                       ; a710: 8c          .
.something_table
    equb 2, 5                                                         ; a711: 02 05       ..
.la713
    equb 6, 3, 4, 1                                                   ; a713: 06 03 04... ...
.la717
    equb &ff, &fe, &fc, &f8, &f0                                      ; a717: ff fe fc... ...
.la71c
    equb &e0, &c0                                                     ; a71c: e0 c0       ..
.la71e
    equb &80                                                          ; a71e: 80          .
.la71f
    equb 1, 2, 4, 8                                                   ; a71f: 01 02 04... ...
.la723
    equb &10, &20, &40                                                ; a723: 10 20 40    . @
.la726
    equb &80                                                          ; a726: 80          .
.la727
    equb   8, &10, &18, &20                                           ; a727: 08 10 18... ...
.string_false
    equs "FALS"                                                       ; a72b: 46 41 4c... FAL
    equb &45                                                          ; a72f: 45          E
.string_true
    equs "TRUE"                                                       ; a730: 54 52 55... TRU
.something_else_table
.opcode_05_06_table
    equb   0,   1,   3,   4, &1f, &1a,   5, &ff, &20, &ff             ; a734: 00 01 03... ...
.la73e
    equs "pas___#"                                                    ; a73e: 70 61 73... pas
    equb &0d                                                          ; a745: 0d          .
.fx163_192_2
    equs "fx163,192,2", &0d                                           ; a746: 66 78 31... fx1

; TODO: The interpreter copied into RAM for compilation ends here. It is probably
; correct that there are additional bytecode implementations beyond this point, but
; presumably they are not used by the compiler itself.
.interpreter_end
.bytecode_opcode_e3_handler
    iny                                                               ; a752: c8          .
    lda (l0002),y                                                     ; a753: b1 02       ..
    tax                                                               ; a755: aa          .
    asl a                                                             ; a756: 0a          .
    asl a                                                             ; a757: 0a          .
    jsr c9a27                                                         ; a758: 20 27 9a     '.
    dey                                                               ; a75b: 88          .
.loop_ca75c
    lda (l0000),y                                                     ; a75c: b1 00       ..
    jsr oswrch                                                        ; a75e: 20 ee ff     ..            ; Write character
    iny                                                               ; a761: c8          .
    iny                                                               ; a762: c8          .
    iny                                                               ; a763: c8          .
    iny                                                               ; a764: c8          .
    dex                                                               ; a765: ca          .
    bne loop_ca75c                                                    ; a766: d0 f4       ..
    lda #2                                                            ; a768: a9 02       ..
    rts                                                               ; a76a: 60          `

.bytecode_opcode_e2_handler
    lda #&19                                                          ; a76b: a9 19       ..
    jsr oswrch                                                        ; a76d: 20 ee ff     ..            ; Write character 25
    lda #&0c                                                          ; a770: a9 0c       ..
    jsr c9a27                                                         ; a772: 20 27 9a     '.
    ldx #4                                                            ; a775: a2 04       ..
.loop_ca777
    lda la786,x                                                       ; a777: bd 86 a7    ...
    tay                                                               ; a77a: a8          .
    lda (l0000),y                                                     ; a77b: b1 00       ..
    jsr oswrch                                                        ; a77d: 20 ee ff     ..            ; Write character
    dex                                                               ; a780: ca          .
    bpl loop_ca777                                                    ; a781: 10 f4       ..
    lda #1                                                            ; a783: a9 01       ..
    rts                                                               ; a785: 60          `

.la786
    equb 9, 8, 5, 4, 0                                                ; a786: 09 08 05... ...

.bytecode_opcode_e4_handler
    jsr sub_c9cb4                                                     ; a78b: 20 b4 9c     ..
    tax                                                               ; a78e: aa          .
    lda machine_high_order_address_low                                ; a78f: ad 00 04    ...
    beq ca799                                                         ; a792: f0 05       ..
    lda l0631                                                         ; a794: ad 31 06    .1.
    bne ca7a5                                                         ; a797: d0 0c       ..
.ca799
    jsr sub_c8520                                                     ; a799: 20 20 85      .
    stx l062e                                                         ; a79c: 8e 2e 06    ...
    sty l062f                                                         ; a79f: 8c 2f 06    ./.
    lda #1                                                            ; a7a2: a9 01       ..
    rts                                                               ; a7a4: 60          `

.ca7a5
    jmp c8569                                                         ; a7a5: 4c 69 85    Li.

.bytecode_opcode_e5_handler
    lda #&10                                                          ; a7a8: a9 10       ..
    tay                                                               ; a7aa: a8          .
    jsr c9a27                                                         ; a7ab: 20 27 9a     '.
    ldx #8                                                            ; a7ae: a2 08       ..
.loop_ca7b0
    dey                                                               ; a7b0: 88          .
    txa                                                               ; a7b1: 8a          .
    ror a                                                             ; a7b2: 6a          j
    bcs ca7b7                                                         ; a7b3: b0 02       ..
    dey                                                               ; a7b5: 88          .
    dey                                                               ; a7b6: 88          .
.ca7b7
    lda (l0000),y                                                     ; a7b7: b1 00       ..
    sta l0619,x                                                       ; a7b9: 9d 19 06    ...
    dex                                                               ; a7bc: ca          .
    bne loop_ca7b0                                                    ; a7bd: d0 f1       ..
    lda #7                                                            ; a7bf: a9 07       ..
    bne ca7d9                                                         ; a7c1: d0 16       ..
.bytecode_opcode_e6_handler
    lda #&38 ; '8'                                                    ; a7c3: a9 38       .8
    tay                                                               ; a7c5: a8          .
    jsr c9a27                                                         ; a7c6: 20 27 9a     '.
    ldx #&0e                                                          ; a7c9: a2 0e       ..
.loop_ca7cb
    dey                                                               ; a7cb: 88          .
    dey                                                               ; a7cc: 88          .
    dey                                                               ; a7cd: 88          .
    dey                                                               ; a7ce: 88          .
    lda (l0000),y                                                     ; a7cf: b1 00       ..
    sta l0619,x                                                       ; a7d1: 9d 19 06    ...
    dex                                                               ; a7d4: ca          .
    bne loop_ca7cb                                                    ; a7d5: d0 f4       ..
    lda #8                                                            ; a7d7: a9 08       ..
.ca7d9
    jsr sub_c9189                                                     ; a7d9: 20 89 91     ..
.ca7dc
    jsr osword                                                        ; a7dc: 20 f1 ff     ..
    lda #1                                                            ; a7df: a9 01       ..
    rts                                                               ; a7e1: 60          `

.bytecode_opcode_e7_handler
    jsr sub_c9d75                                                     ; a7e2: 20 75 9d     u.
    jsr set_yx_to_41a                                                 ; a7e5: 20 84 91     ..
    jsr oscli                                                         ; a7e8: 20 f7 ff     ..
    lda #2                                                            ; a7eb: a9 02       ..
    rts                                                               ; a7ed: 60          `

.bytecode_opcode_e9_handler
    lda #1                                                            ; a7ee: a9 01       ..
    jsr sub_ca800                                                     ; a7f0: 20 00 a8     ..
    jsr sub_c9d90                                                     ; a7f3: 20 90 9d     ..
    lda #1                                                            ; a7f6: a9 01       ..
    rts                                                               ; a7f8: 60          `

.bytecode_opcode_e8_handler
    sty l006e                                                         ; a7f9: 84 6e       .n
    jsr sub_c8b88                                                     ; a7fb: 20 88 8b     ..
    lda #2                                                            ; a7fe: a9 02       ..
.sub_ca800
    ldy #0                                                            ; a800: a0 00       ..
    ldx #&6a ; 'j'                                                    ; a802: a2 6a       .j
    bne ca7dc                                                         ; a804: d0 d6       ..
.bytecode_opcode_99_handler
    sty l065f                                                         ; a806: 8c 5f 06    ._.
    jsr sub_c91df                                                     ; a809: 20 df 91     ..
    ldy #&0c                                                          ; a80c: a0 0c       ..
    jsr sub_c9300                                                     ; a80e: 20 00 93     ..
    jsr sub_c8b88                                                     ; a811: 20 88 8b     ..
    ldy #8                                                            ; a814: a0 08       ..
.loop_ca816
    jsr sub_ca83a                                                     ; a816: 20 3a a8     :.
    tax                                                               ; a819: aa          .
    bne ca820                                                         ; a81a: d0 04       ..
    dey                                                               ; a81c: 88          .
    bne loop_ca816                                                    ; a81d: d0 f7       ..
    iny                                                               ; a81f: c8          .
.ca820
    adc #&30 ; '0'                                                    ; a820: 69 30       i0
    cmp #&3a ; ':'                                                    ; a822: c9 3a       .:
    bcc ca828                                                         ; a824: 90 02       ..
    adc #6                                                            ; a826: 69 06       i.
.ca828
    ldx l065f                                                         ; a828: ae 5f 06    ._.
    sta l041a,x                                                       ; a82b: 9d 1a 04    ...
    inc l065f                                                         ; a82e: ee 5f 06    ._.
    jsr sub_ca83a                                                     ; a831: 20 3a a8     :.
    dey                                                               ; a834: 88          .
    bne ca820                                                         ; a835: d0 e9       ..
    jmp c931e                                                         ; a837: 4c 1e 93    L..

.sub_ca83a
    lda #0                                                            ; a83a: a9 00       ..
    ldx #4                                                            ; a83c: a2 04       ..
.loop_ca83e
    rol l006a                                                         ; a83e: 26 6a       &j
    rol l006b                                                         ; a840: 26 6b       &k
    rol l006c                                                         ; a842: 26 6c       &l
    rol l006d                                                         ; a844: 26 6d       &m
    rol a                                                             ; a846: 2a          *
    dex                                                               ; a847: ca          .
    bne loop_ca83e                                                    ; a848: d0 f4       ..
    rts                                                               ; a84a: 60          `

.bytecode_opcode_ea_handler
    jsr sub_c8b88                                                     ; a84b: 20 88 8b     ..
    lda #osbyte_read_adc_or_get_buffer_status                         ; a84e: a9 80       ..
    ldx l006a                                                         ; a850: a6 6a       .j
    ldy l006b                                                         ; a852: a4 6b       .k
    jsr osbyte                                                        ; a854: 20 f4 ff     ..            ; Read buffer status or ADC channel
    lda l006a                                                         ; a857: a5 6a       .j
    bpl ca85d                                                         ; a859: 10 02       ..
    ldy #0                                                            ; a85b: a0 00       ..
.ca85d
    jmp c9d1f                                                         ; a85d: 4c 1f 9d    L..

.bytecode_opcode_ec_handler
    jsr sub_c9a1d                                                     ; a860: 20 1d 9a     ..
    ldx #3                                                            ; a863: a2 03       ..
.loop_ca865
    lda la882,x                                                       ; a865: bd 82 a8    ...
    tay                                                               ; a868: a8          .
    lda (l0000),y                                                     ; a869: b1 00       ..
    sta l061a,x                                                       ; a86b: 9d 1a 06    ...
    dex                                                               ; a86e: ca          .
    bpl loop_ca865                                                    ; a86f: 10 f4       ..
    lda #9                                                            ; a871: a9 09       ..
    jsr ca7d9                                                         ; a873: 20 d9 a7     ..
    ldx l061e                                                         ; a876: ae 1e 06    ...
    ldy #0                                                            ; a879: a0 00       ..
    cmp #&ff                                                          ; a87b: c9 ff       ..
    bne ca89a                                                         ; a87d: d0 1b       ..
    tay                                                               ; a87f: a8          .
    bne ca89a                                                         ; a880: d0 18       ..
.la882
    equb 0, 1, 4, 5                                                   ; a882: 00 01 04... ...

.bytecode_opcode_eb_handler
    jsr sub_c8b88                                                     ; a886: 20 88 8b     ..
    lda #osbyte_inkey                                                 ; a889: a9 81       ..
    ldx l006a                                                         ; a88b: a6 6a       .j
    ldy l006b                                                         ; a88d: a4 6b       .k
    jsr osbyte                                                        ; a88f: 20 f4 ff     ..            ; Read key within time limit, or read a specific key, or read machine type
    tya                                                               ; a892: 98          .
    beq ca89a                                                         ; a893: f0 05       ..
    jsr c9971                                                         ; a895: 20 71 99     q.
    ldx #&ff                                                          ; a898: a2 ff       ..
.ca89a
    tya                                                               ; a89a: 98          .
    jmp c9d21                                                         ; a89b: 4c 21 9d    L!.

.bytecode_opcode_fd_handler
    iny                                                               ; a89e: c8          .
    lda (l0002),y                                                     ; a89f: b1 02       ..
    tax                                                               ; a8a1: aa          .
    lda #0                                                            ; a8a2: a9 00       ..
    jsr sub_ca8b1                                                     ; a8a4: 20 b1 a8     ..
    lda #2                                                            ; a8a7: a9 02       ..
    rts                                                               ; a8a9: 60          `

.bytecode_opcode_4e_handler
    iny                                                               ; a8aa: c8          .
    lda (l0002),y                                                     ; a8ab: b1 02       ..
    tax                                                               ; a8ad: aa          .
    iny                                                               ; a8ae: c8          .
    lda (l0002),y                                                     ; a8af: b1 02       ..
.sub_ca8b1
    stx line_number_low                                               ; a8b1: 8e 5b 06    .[.
    sta line_number_high                                              ; a8b4: 8d 5c 06    .\.
    lda l0418                                                         ; a8b7: ad 18 04    ...
    cmp #2                                                            ; a8ba: c9 02       ..
    bcc ca8d1                                                         ; a8bc: 90 13       ..
    jsr fancy_print_nop_terminated_inline                             ; a8be: 20 84 b2     ..
    equs "["                                                          ; a8c1: 5b          [

    nop                                                               ; a8c2: ea          .
    ldx line_number_low                                               ; a8c3: ae 5b 06    .[.
    ldy line_number_high                                              ; a8c6: ac 5c 06    .\.
    jsr print_yx_as_decimal                                           ; a8c9: 20 0c b3     ..
    jsr fancy_print_nop_terminated_inline                             ; a8cc: 20 84 b2     ..
    equb 128 + (']')                                                  ; a8cf: dd          .              ; "] "

    nop                                                               ; a8d0: ea          .
.ca8d1
    lda #3                                                            ; a8d1: a9 03       ..
    rts                                                               ; a8d3: 60          `

.bytecode_opcode_e0_handler
    jsr sub_c9a3a                                                     ; a8d4: 20 3a 9a     :.
    iny                                                               ; a8d7: c8          .
    lda (l0002),y                                                     ; a8d8: b1 02       ..
    beq ca8e6                                                         ; a8da: f0 0a       ..
    tax                                                               ; a8dc: aa          .
.loop_ca8dd
    dex                                                               ; a8dd: ca          .
    jsr sub_c8f99                                                     ; a8de: 20 99 8f     ..
    bne ca8f3                                                         ; a8e1: d0 10       ..
    txa                                                               ; a8e3: 8a          .
    bne loop_ca8dd                                                    ; a8e4: d0 f7       ..
.ca8e6
    ldy #2                                                            ; a8e6: a0 02       ..
    lda (l0002),y                                                     ; a8e8: b1 02       ..
    tax                                                               ; a8ea: aa          .
.loop_ca8eb
    inx                                                               ; a8eb: e8          .
    beq ca8d1                                                         ; a8ec: f0 e3       ..
    jsr sub_c8f99                                                     ; a8ee: 20 99 8f     ..
    beq loop_ca8eb                                                    ; a8f1: f0 f8       ..
.ca8f3
    jmp c8f2c                                                         ; a8f3: 4c 2c 8f    L,.

.bytecode_opcode_4a_handler
    jsr sub_c9a86                                                     ; a8f6: 20 86 9a     ..
    jmp ca908                                                         ; a8f9: 4c 08 a9    L..

.bytecode_opcode_f6_handler
    jsr c9a8a                                                         ; a8fc: 20 8a 9a     ..
    ldy #3                                                            ; a8ff: a0 03       ..
.loop_ca901
    lda (l000c),y                                                     ; a901: b1 0c       ..
    bne ca916                                                         ; a903: d0 11       ..
    dey                                                               ; a905: 88          .
    bne loop_ca901                                                    ; a906: d0 f9       ..
.ca908
    lda (l000c),y                                                     ; a908: b1 0c       ..
    iny                                                               ; a90a: c8          .
    cmp (l0002),y                                                     ; a90b: d1 02       ..
    bcc ca916                                                         ; a90d: 90 07       ..
    iny                                                               ; a90f: c8          .
    cmp (l0002),y                                                     ; a910: d1 02       ..
    bcc ca8d1                                                         ; a912: 90 bd       ..
    beq ca8d1                                                         ; a914: f0 bb       ..
.ca916
    jmp c8dd8                                                         ; a916: 4c d8 8d    L..

.bytecode_opcode_4c_handler
    jsr c9a8a                                                         ; a919: 20 8a 9a     ..
    jsr sub_c9ab6                                                     ; a91c: 20 b6 9a     ..
.sub_ca91f
    jsr c8eb5                                                         ; a91f: 20 b5 8e     ..
    bcc ca916                                                         ; a922: 90 f2       ..
    clc                                                               ; a924: 18          .
    lda l000a                                                         ; a925: a5 0a       ..
    adc #4                                                            ; a927: 69 04       i.
    sta l000a                                                         ; a929: 85 0a       ..
    bcc ca92f                                                         ; a92b: 90 02       ..
    inc l000b                                                         ; a92d: e6 0b       ..
.ca92f
    jsr c8eb5                                                         ; a92f: 20 b5 8e     ..
    beq ca936                                                         ; a932: f0 02       ..
    bcs ca916                                                         ; a934: b0 e0       ..
.ca936
    lda #9                                                            ; a936: a9 09       ..
    rts                                                               ; a938: 60          `

.bytecode_opcode_4d_handler
    iny                                                               ; a939: c8          .
    lda (l0002),y                                                     ; a93a: b1 02       ..
    tax                                                               ; a93c: aa          .
    lda l0418                                                         ; a93d: ad 18 04    ...
    beq ca95d                                                         ; a940: f0 1b       ..
    stx l0015                                                         ; a942: 86 15       ..
    jsr fancy_print_nop_terminated_inline                             ; a944: 20 84 b2     ..
    equs "("                                                          ; a947: 28          (

    nop                                                               ; a948: ea          .
    ldx l0015                                                         ; a949: a6 15       ..
    ldy #2                                                            ; a94b: a0 02       ..
.ca94d
    lda (l0002),y                                                     ; a94d: b1 02       ..
    jsr oswrch                                                        ; a94f: 20 ee ff     ..            ; Write character
    iny                                                               ; a952: c8          .
    dex                                                               ; a953: ca          .
    bne ca94d                                                         ; a954: d0 f7       ..
    jsr fancy_print_nop_terminated_inline                             ; a956: 20 84 b2     ..
    equb 128 + (')')                                                  ; a959: a9          .              ; ") "

    nop                                                               ; a95a: ea          .
    ldx l0015                                                         ; a95b: a6 15       ..
.ca95d
    inx                                                               ; a95d: e8          .
    inx                                                               ; a95e: e8          .
    txa                                                               ; a95f: 8a          .
    rts                                                               ; a960: 60          `

.bytecode_opcode_62_handler
.bytecode_opcode_63_handler
.bytecode_opcode_64_handler
.bytecode_opcode_65_handler
.bytecode_opcode_66_handler
.bytecode_opcode_67_handler
    lda something_table - 98,x                                        ; a961: bd af a6    ...
    sta l0663                                                         ; a964: 8d 63 06    .c.
    jsr sub_ca297                                                     ; a967: 20 97 a2     ..
    jsr sub_c9a6c                                                     ; a96a: 20 6c 9a     l.
    jsr sub_ca973                                                     ; a96d: 20 73 a9     s.
    jmp c8e35                                                         ; a970: 4c 35 8e    L5.

.sub_ca973
    jsr sub_ca304                                                     ; a973: 20 04 a3     ..
    ldy #0                                                            ; a976: a0 00       ..
    lda l0046                                                         ; a978: a5 46       .F
    and #&80                                                          ; a97a: 29 80       ).
    sta l0046                                                         ; a97c: 85 46       .F
    lda l003e                                                         ; a97e: a5 3e       .>
    and #&80                                                          ; a980: 29 80       ).
    cmp l0046                                                         ; a982: c5 46       .F
    bne ca9a4                                                         ; a984: d0 1e       ..
    lda l0048                                                         ; a986: a5 48       .H
    cmp l0040                                                         ; a988: c5 40       .@
    bne ca9a5                                                         ; a98a: d0 19       ..
    lda l0049                                                         ; a98c: a5 49       .I
    cmp l0041                                                         ; a98e: c5 41       .A
    bne ca9a5                                                         ; a990: d0 13       ..
    lda l004a                                                         ; a992: a5 4a       .J
    cmp l0042                                                         ; a994: c5 42       .B
    bne ca9a5                                                         ; a996: d0 0d       ..
    lda l004b                                                         ; a998: a5 4b       .K
    cmp l0043                                                         ; a99a: c5 43       .C
    bne ca9a5                                                         ; a99c: d0 07       ..
    lda l004c                                                         ; a99e: a5 4c       .L
    cmp l0044                                                         ; a9a0: c5 44       .D
    bne ca9a5                                                         ; a9a2: d0 01       ..
.ca9a4
    rts                                                               ; a9a4: 60          `

.ca9a5
    ror a                                                             ; a9a5: 6a          j
    eor l0046                                                         ; a9a6: 45 46       EF
    rol a                                                             ; a9a8: 2a          *
    lda #1                                                            ; a9a9: a9 01       ..
    rts                                                               ; a9ab: 60          `

.bytecode_opcode_78_handler
.bytecode_opcode_79_handler
.bytecode_opcode_7a_handler
.bytecode_opcode_7b_handler
    lda opcode_subrange2_jump_table_low - 120,x                       ; a9ac: bd 4d a9    .M.
    sta l0008                                                         ; a9af: 85 08       ..
    lda opcode_subrange2_jump_table_high - 120,x                      ; a9b1: bd 51 a9    .Q.
    sta l0009                                                         ; a9b4: 85 09       ..
    jsr sub_ca297                                                     ; a9b6: 20 97 a2     ..
    jsr sub_c9a4a                                                     ; a9b9: 20 4a 9a     J.
    jsr jmp_indirect_via_l0008                                        ; a9bc: 20 e2 87     ..
    jsr ca2df                                                         ; a9bf: 20 df a2     ..
    lda #1                                                            ; a9c2: a9 01       ..
    rts                                                               ; a9c4: 60          `

.opcode_subrange2_jump_table_low
    equb <opcode_78_sub_handler                                       ; a9c5: 03          .
    equb <opcode_79_sub_handler                                       ; a9c6: 00          .
    equb <opcode_7a_sub_handler                                       ; a9c7: ed          .
    equb <opcode_7b_sub_handler                                       ; a9c8: 59          Y
.opcode_subrange2_jump_table_high
    equb >opcode_78_sub_handler                                       ; a9c9: a1          .
    equb >opcode_79_sub_handler                                       ; a9ca: a1          .
    equb >opcode_7a_sub_handler                                       ; a9cb: aa          .
    equb >opcode_7b_sub_handler                                       ; a9cc: ab          .

.bytecode_opcode_ca_handler
.bytecode_opcode_cb_handler
.bytecode_opcode_cc_handler
.bytecode_opcode_cd_handler
.bytecode_opcode_ce_handler
.bytecode_opcode_cf_handler
.bytecode_opcode_d0_handler
    lda opcode_subrange1_jump_table_low - 202,x                       ; a9cd: bd 19 a9    ...
    sta l0008                                                         ; a9d0: 85 08       ..
    lda opcode_subrange1_jump_table_high - 202,x                      ; a9d2: bd 20 a9    . .
    sta l0009                                                         ; a9d5: 85 09       ..
    jsr sub_ca297                                                     ; a9d7: 20 97 a2     ..
    jsr jmp_indirect_via_l0008                                        ; a9da: 20 e2 87     ..
    jsr sub_c9da1                                                     ; a9dd: 20 a1 9d     ..
    lda #1                                                            ; a9e0: a9 01       ..
    rts                                                               ; a9e2: 60          `

.opcode_subrange1_jump_table_low
    equb <opcode_ca_sub_handler                                       ; a9e3: ed          .
    equb <opcode_cb_sub_handler                                       ; a9e4: 33          3
    equb <opcode_cc_sub_handler                                       ; a9e5: 2b          +
    equb <opcode_cd_sub_handler                                       ; a9e6: a0          .
    equb <opcode_ce_sub_handler                                       ; a9e7: b5          .
    equb <opcode_cf_sub_handler                                       ; a9e8: 68          h
    equb <opcode_d0_sub_handler                                       ; a9e9: 78          x
.opcode_subrange1_jump_table_high
    equb >opcode_ca_sub_handler                                       ; a9ea: aa          .
    equb >opcode_cb_sub_handler                                       ; a9eb: ac          .
    equb >opcode_cc_sub_handler                                       ; a9ec: ac          .
    equb >opcode_cd_sub_handler                                       ; a9ed: aa          .
    equb >opcode_ce_sub_handler                                       ; a9ee: ac          .
    equb >opcode_cf_sub_handler                                       ; a9ef: ac          .
    equb >opcode_d0_sub_handler                                       ; a9f0: ad          .

.bytecode_opcode_d1_handler
.bytecode_opcode_d2_handler
    jsr sub_ca297                                                     ; a9f1: 20 97 a2     ..
    cpx #&d1                                                          ; a9f4: e0 d1       ..
    beq caa0d                                                         ; a9f6: f0 15       ..
    lda #<something2                                                  ; a9f8: a9 16       ..
    sta l000a                                                         ; a9fa: 85 0a       ..
    lda #>something2                                                  ; a9fc: a9 aa       ..
    sta l000b                                                         ; a9fe: 85 0b       ..
    lda l003e                                                         ; aa00: a5 3e       .>
    bmi caa0a                                                         ; aa02: 30 06       0.
    jsr opcode_78_sub_handler                                         ; aa04: 20 03 a1     ..
    jmp caa0d                                                         ; aa07: 4c 0d aa    L..

.caa0a
    jsr sub_caa1b                                                     ; aa0a: 20 1b aa     ..
.caa0d
    jsr sub_c9daf                                                     ; aa0d: 20 af 9d     ..
    jsr sub_c9d90                                                     ; aa10: 20 90 9d     ..
    lda #1                                                            ; aa13: a9 01       ..
    rts                                                               ; aa15: 60          `

.something2
    equb &80,   0,   0,   0,   0                                      ; aa16: 80 00 00... ...

.sub_caa1b
    jsr opcode_79_sub_handler                                         ; aa1b: 20 00 a1     ..
    jmp c9ee8                                                         ; aa1e: 4c e8 9e    L..

.bytecode_opcode_77_handler
    jsr sub_c8b88                                                     ; aa21: 20 88 8b     ..
    jsr sub_ca3ea                                                     ; aa24: 20 ea a3     ..
    jsr sub_c9da1                                                     ; aa27: 20 a1 9d     ..
    lda #1                                                            ; aa2a: a9 01       ..
    rts                                                               ; aa2c: 60          `

.bytecode_opcode_82_handler
    lda #9                                                            ; aa2d: a9 09       ..
    jsr c9a54                                                         ; aa2f: 20 54 9a     T.
.loop_caa32
    lda (l000a),y                                                     ; aa32: b1 0a       ..
    sta l006a,y                                                       ; aa34: 99 6a 00    .j.
    iny                                                               ; aa37: c8          .
    cpy #4                                                            ; aa38: c0 04       ..
    bcc loop_caa32                                                    ; aa3a: 90 f6       ..
    lda (l000a),y                                                     ; aa3c: b1 0a       ..
    tax                                                               ; aa3e: aa          .
.loop_caa3f
    txa                                                               ; aa3f: 8a          .
    pha                                                               ; aa40: 48          H
    iny                                                               ; aa41: c8          .
    lda (l000a),y                                                     ; aa42: b1 0a       ..
    tax                                                               ; aa44: aa          .
    pla                                                               ; aa45: 68          h
    sta (l000a),y                                                     ; aa46: 91 0a       ..
    cpy #9                                                            ; aa48: c0 09       ..
    bne loop_caa3f                                                    ; aa4a: d0 f3       ..
    jsr sub_c99fc                                                     ; aa4c: 20 fc 99     ..
    jsr sub_ca3ea                                                     ; aa4f: 20 ea a3     ..
    jsr ca2df                                                         ; aa52: 20 df a2     ..
    lda #1                                                            ; aa55: a9 01       ..
    rts                                                               ; aa57: 60          `

.bytecode_opcode_98_handler
    jsr sub_c91df                                                     ; aa58: 20 df 91     ..
    ldy #&0c                                                          ; aa5b: a0 0c       ..
    jsr sub_c9300                                                     ; aa5d: 20 00 93     ..
    jsr sub_ca297                                                     ; aa60: 20 97 a2     ..
    ldx #1                                                            ; aa63: a2 01       ..
    lda l0658                                                         ; aa65: ad 58 06    .X.
    bne caa77                                                         ; aa68: d0 0d       ..
    dex                                                               ; aa6a: ca          .
    lda l0657                                                         ; aa6b: ad 57 06    .W.
    cmp #8                                                            ; aa6e: c9 08       ..
    bcs caa74                                                         ; aa70: b0 02       ..
    lda #8                                                            ; aa72: a9 08       ..
.caa74
    sec                                                               ; aa74: 38          8
    sbc #7                                                            ; aa75: e9 07       ..
.caa77
    jmp c931b                                                         ; aa77: 4c 1b 93    L..

.bytecode_opcode_96_handler
    jsr sub_c91df                                                     ; aa7a: 20 df 91     ..
    ldy #5                                                            ; aa7d: a0 05       ..
    jsr sub_c9300                                                     ; aa7f: 20 00 93     ..
    jsr sub_c9af1                                                     ; aa82: 20 f1 9a     ..
    bne caa8f                                                         ; aa85: d0 08       ..
    ldx #<string_false                                                ; aa87: a2 2b       .+
    ldy #>string_false                                                ; aa89: a0 a7       ..
    lda #5                                                            ; aa8b: a9 05       ..
    bne caa95                                                         ; aa8d: d0 06       ..
.caa8f
    ldx #<string_true                                                 ; aa8f: a2 30       .0
    ldy #>string_true                                                 ; aa91: a0 a7       ..
    lda #4                                                            ; aa93: a9 04       ..
.caa95
    jmp oswrch_or_osbput_aligned_string_yx                            ; aa95: 4c 35 93    L5.

.loop_caa98
    jmp c9e50                                                         ; aa98: 4c 50 9e    LP.

    equb &82, &2d, &f8, &54, &58                                      ; aa9b: 82 2d f8... .-.

.opcode_cd_sub_handler
    lda l0040                                                         ; aaa0: a5 40       .@
    cmp #&87                                                          ; aaa2: c9 87       ..
    bcc caab5                                                         ; aaa4: 90 0f       ..
    bne caaae                                                         ; aaa6: d0 06       ..
    ldy l0041                                                         ; aaa8: a4 41       .A
    cpy #&b3                                                          ; aaaa: c0 b3       ..
    bcc caab5                                                         ; aaac: 90 07       ..
.caaae
    lda l003e                                                         ; aaae: a5 3e       .>
    bpl loop_caa98                                                    ; aab0: 10 e6       ..
    jmp zero_misc_values                                              ; aab2: 4c 93 a4    L..

.caab5
    jsr sub_ca4a9                                                     ; aab5: 20 a9 a4     ..
    lda #7                                                            ; aab8: a9 07       ..
    ldy #&c7                                                          ; aaba: a0 c7       ..
    jsr sub_cabfe                                                     ; aabc: 20 fe ab     ..
    jsr sub_ca2d3                                                     ; aabf: 20 d3 a2     ..
    lda #&9b                                                          ; aac2: a9 9b       ..
    sta l000a                                                         ; aac4: 85 0a       ..
    lda #&aa                                                          ; aac6: a9 aa       ..
    sta l000b                                                         ; aac8: 85 0b       ..
    jsr ca2a0                                                         ; aaca: 20 a0 a2     ..
    sec                                                               ; aacd: 38          8
    lda #0                                                            ; aace: a9 00       ..
    sbc l003a                                                         ; aad0: e5 3a       .:
    bmi caad9                                                         ; aad2: 30 05       0.
    sta l003a                                                         ; aad4: 85 3a       .:
    jsr sub_cab3e                                                     ; aad6: 20 3e ab     >.
.caad9
    jsr sub_ca2d7                                                     ; aad9: 20 d7 a2     ..
    jsr sub_ca4fa                                                     ; aadc: 20 fa a4     ..
    lda l003a                                                         ; aadf: a5 3a       .:
    beq caaea                                                         ; aae1: f0 07       ..
.loop_caae3
    jsr opcode_ca_sub_handler                                         ; aae3: 20 ed aa     ..
    dec l003a                                                         ; aae6: c6 3a       .:
    bne loop_caae3                                                    ; aae8: d0 f9       ..
.caaea
    jsr sub_ca364                                                     ; aaea: 20 64 a3     d.
.opcode_ca_sub_handler
.opcode_7a_sub_handler
    lda l0041                                                         ; aaed: a5 41       .A
    beq cab38                                                         ; aaef: f0 47       .G
    jsr sub_ca304                                                     ; aaf1: 20 04 a3     ..
    bne caaf9                                                         ; aaf4: d0 03       ..
    jmp zero_misc_values                                              ; aaf6: 4c 93 a4    L..

.caaf9
    clc                                                               ; aaf9: 18          .
    lda l0040                                                         ; aafa: a5 40       .@
    adc l0048                                                         ; aafc: 65 48       eH
    rol l003f                                                         ; aafe: 26 3f       &?
    sbc #&7f                                                          ; ab00: e9 7f       ..
    sta l0040                                                         ; ab02: 85 40       .@
    bcs cab08                                                         ; ab04: b0 02       ..
    dec l003f                                                         ; ab06: c6 3f       .?
.cab08
    ldx #5                                                            ; ab08: a2 05       ..
    ldy #0                                                            ; ab0a: a0 00       ..
.loop_cab0c
    lda l0040,x                                                       ; ab0c: b5 40       .@
    sta l004d,x                                                       ; ab0e: 95 4d       .M
    sty l0040,x                                                       ; ab10: 94 40       .@
    dex                                                               ; ab12: ca          .
    bne loop_cab0c                                                    ; ab13: d0 f7       ..
    lda l003e                                                         ; ab15: a5 3e       .>
    eor l0046                                                         ; ab17: 45 46       EF
    sta l003e                                                         ; ab19: 85 3e       .>
    ldy #&20 ; ' '                                                    ; ab1b: a0 20       .
.loop_cab1d
    lsr l0049                                                         ; ab1d: 46 49       FI
    ror l004a                                                         ; ab1f: 66 4a       fJ
    ror l004b                                                         ; ab21: 66 4b       fK
    ror l004c                                                         ; ab23: 66 4c       fL
    ror l004d                                                         ; ab25: 66 4d       fM
    asl l0051                                                         ; ab27: 06 51       .Q
    rol l0050                                                         ; ab29: 26 50       &P
    rol l004f                                                         ; ab2b: 26 4f       &O
    rol l004e                                                         ; ab2d: 26 4e       &N
    bcc cab35                                                         ; ab2f: 90 04       ..
    clc                                                               ; ab31: 18          .
    jsr sub_c9f03                                                     ; ab32: 20 03 9f     ..
.cab35
    dey                                                               ; ab35: 88          .
    bne loop_cab1d                                                    ; ab36: d0 e5       ..
.cab38
    jsr ca428                                                         ; ab38: 20 28 a4     (.
    jmp ca473                                                         ; ab3b: 4c 73 a4    Ls.

.sub_cab3e
    jsr sub_ca2d7                                                     ; ab3e: 20 d7 a2     ..
    jsr sub_ca4fa                                                     ; ab41: 20 fa a4     ..
.sub_cab44
    lda l0041                                                         ; ab44: a5 41       .A
    beq cab53                                                         ; ab46: f0 0b       ..
    jsr sub_ca331                                                     ; ab48: 20 31 a3     1.
    jsr ca2a0                                                         ; ab4b: 20 a0 a2     ..
    bne cab65                                                         ; ab4e: d0 15       ..
.loop_cab50
    jmp c8bc5                                                         ; ab50: 4c c5 8b    L..

.cab53
    rts                                                               ; ab53: 60          `

.lab54
    equb 2, 8, 8, 8, 8                                                ; ab54: 02 08 08... ...

.opcode_7b_sub_handler
    lda l0041                                                         ; ab59: a5 41       .A
    beq loop_cab50                                                    ; ab5b: f0 f3       ..
    jsr sub_ca304                                                     ; ab5d: 20 04 a3     ..
    bne cab65                                                         ; ab60: d0 03       ..
    jmp zero_misc_values                                              ; ab62: 4c 93 a4    L..

.cab65
    lda l0046                                                         ; ab65: a5 46       .F
    eor l003e                                                         ; ab67: 45 3e       E>
    sta l003e                                                         ; ab69: 85 3e       .>
    sec                                                               ; ab6b: 38          8
    lda l0048                                                         ; ab6c: a5 48       .H
    adc #&81                                                          ; ab6e: 69 81       i.
    rol l003f                                                         ; ab70: 26 3f       &?
    sbc l0040                                                         ; ab72: e5 40       .@
    bcs cab78                                                         ; ab74: b0 02       ..
    dec l003f                                                         ; ab76: c6 3f       .?
.cab78
    sta l0040                                                         ; ab78: 85 40       .@
    clc                                                               ; ab7a: 18          .
    ldy #4                                                            ; ab7b: a0 04       ..
    sty l0048                                                         ; ab7d: 84 48       .H
    lda l0049                                                         ; ab7f: a5 49       .I
.cab81
    ldx lab54,y                                                       ; ab81: be 54 ab    .T.
.cab84
    bcs cab9c                                                         ; ab84: b0 16       ..
    cmp l0041                                                         ; ab86: c5 41       .A
    bne cab9a                                                         ; ab88: d0 10       ..
    ldy l004a                                                         ; ab8a: a4 4a       .J
    cpy l0042                                                         ; ab8c: c4 42       .B
    bne cab9a                                                         ; ab8e: d0 0a       ..
    ldy l004b                                                         ; ab90: a4 4b       .K
    cpy l0043                                                         ; ab92: c4 43       .C
    bne cab9a                                                         ; ab94: d0 04       ..
    ldy l004c                                                         ; ab96: a4 4c       .L
    cpy l0044                                                         ; ab98: c4 44       .D
.cab9a
    bcc cabb3                                                         ; ab9a: 90 17       ..
.cab9c
    tay                                                               ; ab9c: a8          .
    lda l004c                                                         ; ab9d: a5 4c       .L
    sbc l0044                                                         ; ab9f: e5 44       .D
    sta l004c                                                         ; aba1: 85 4c       .L
    lda l004b                                                         ; aba3: a5 4b       .K
    sbc l0043                                                         ; aba5: e5 43       .C
    sta l004b                                                         ; aba7: 85 4b       .K
    lda l004a                                                         ; aba9: a5 4a       .J
    sbc l0042                                                         ; abab: e5 42       .B
    sta l004a                                                         ; abad: 85 4a       .J
    tya                                                               ; abaf: 98          .
    sbc l0041                                                         ; abb0: e5 41       .A
    sec                                                               ; abb2: 38          8
.cabb3
    rol l0046                                                         ; abb3: 26 46       &F
    asl l004c                                                         ; abb5: 06 4c       .L
    rol l004b                                                         ; abb7: 26 4b       &K
    rol l004a                                                         ; abb9: 26 4a       &J
    rol a                                                             ; abbb: 2a          *
    dex                                                               ; abbc: ca          .
    bne cab84                                                         ; abbd: d0 c5       ..
    dec l0048                                                         ; abbf: c6 48       .H
    ldx l0046                                                         ; abc1: a6 46       .F
    ldy l0048                                                         ; abc3: a4 48       .H
    stx l004f,y                                                       ; abc5: 96 4f       .O
    bpl cab81                                                         ; abc7: 10 b8       ..
    ora l004a                                                         ; abc9: 05 4a       .J
    ora l004b                                                         ; abcb: 05 4b       .K
    ora l004c                                                         ; abcd: 05 4c       .L
    beq cabd2                                                         ; abcf: f0 01       ..
    sec                                                               ; abd1: 38          8
.cabd2
    txa                                                               ; abd2: 8a          .
    ror a                                                             ; abd3: 6a          j
    ror a                                                             ; abd4: 6a          j
    ror a                                                             ; abd5: 6a          j
    and #&e0                                                          ; abd6: 29 e0       ).
    sta l0045                                                         ; abd8: 85 45       .E
    lda l004f                                                         ; abda: a5 4f       .O
    sta l0044                                                         ; abdc: 85 44       .D
    lda l0050                                                         ; abde: a5 50       .P
    sta l0043                                                         ; abe0: 85 43       .C
    lda l0051                                                         ; abe2: a5 51       .Q
    sta l0042                                                         ; abe4: 85 42       .B
    lda l0052                                                         ; abe6: a5 52       .R
    sta l0041                                                         ; abe8: 85 41       .A
    jmp cab38                                                         ; abea: 4c 38 ab    L8.

.sub_cabed
    lda #&f9                                                          ; abed: a9 f9       ..
    bne cabf7                                                         ; abef: d0 06       ..
.sub_cabf1
    lda #&f4                                                          ; abf1: a9 f4       ..
    bne cabf7                                                         ; abf3: d0 02       ..
.sub_cabf5
    lda #&ef                                                          ; abf5: a9 ef       ..
.cabf7
    sta l000a                                                         ; abf7: 85 0a       ..
    lda #&bf                                                          ; abf9: a9 bf       ..
    sta l000b                                                         ; abfb: 85 0b       ..
    rts                                                               ; abfd: 60          `

.sub_cabfe
    sta l0035                                                         ; abfe: 85 35       .5
    sty l0031                                                         ; ac00: 84 31       .1
    jsr sub_ca2d7                                                     ; ac02: 20 d7 a2     ..
    lda l0031                                                         ; ac05: a5 31       .1
    sta l000a                                                         ; ac07: 85 0a       ..
    lda #&bf                                                          ; ac09: a9 bf       ..
    sta l000b                                                         ; ac0b: 85 0b       ..
    jsr ca2a0                                                         ; ac0d: 20 a0 a2     ..
.loop_cac10
    jsr sub_ca368                                                     ; ac10: 20 68 a3     h.
    jsr opcode_7b_sub_handler                                         ; ac13: 20 59 ab     Y.
    clc                                                               ; ac16: 18          .
    lda l0031                                                         ; ac17: a5 31       .1
    adc #5                                                            ; ac19: 69 05       i.
    sta l0031                                                         ; ac1b: 85 31       .1
    sta l000a                                                         ; ac1d: 85 0a       ..
    lda #&bf                                                          ; ac1f: a9 bf       ..
    sta l000b                                                         ; ac21: 85 0b       ..
    jsr opcode_78_sub_handler                                         ; ac23: 20 03 a1     ..
    dec l0035                                                         ; ac26: c6 35       .5
    bne loop_cac10                                                    ; ac28: d0 e6       ..
    rts                                                               ; ac2a: 60          `

.opcode_cc_sub_handler
    jsr sub_cad13                                                     ; ac2b: 20 13 ad     ..
    inc l003a                                                         ; ac2e: e6 3a       .:
    jmp cac36                                                         ; ac30: 4c 36 ac    L6.

.opcode_cb_sub_handler
    jsr sub_cad13                                                     ; ac33: 20 13 ad     ..
.cac36
    lda l003a                                                         ; ac36: a5 3a       .:
    and #2                                                            ; ac38: 29 02       ).
    beq cac52                                                         ; ac3a: f0 16       ..
    jsr cac52                                                         ; ac3c: 20 52 ac     R.
    jmp c9ee8                                                         ; ac3f: 4c e8 9e    L..

.cac42
    jsr sub_ca2d3                                                     ; ac42: 20 d3 a2     ..
    jsr opcode_ca_sub_handler                                         ; ac45: 20 ed aa     ..
    lda #5                                                            ; ac48: a9 05       ..
    ldy #&a9                                                          ; ac4a: a0 a9       ..
    jsr sub_cabfe                                                     ; ac4c: 20 fe ab     ..
    jmp caaea                                                         ; ac4f: 4c ea aa    L..

.cac52
    lsr l003a                                                         ; ac52: 46 3a       F:
    bcc cac42                                                         ; ac54: 90 ec       ..
    jsr cac42                                                         ; ac56: 20 42 ac     B.
    jsr sub_ca2d7                                                     ; ac59: 20 d7 a2     ..
    jsr opcode_ca_sub_handler                                         ; ac5c: 20 ed aa     ..
    jsr ca2df                                                         ; ac5f: 20 df a2     ..
    jsr sub_ca4fa                                                     ; ac62: 20 fa a4     ..
    jsr sub_caa1b                                                     ; ac65: 20 1b aa     ..
.opcode_cf_sub_handler
    jsr sub_ca4d6                                                     ; ac68: 20 d6 a4     ..
    beq cac97                                                         ; ac6b: f0 2a       .*
    bmi cac98                                                         ; ac6d: 30 29       0)
    jsr sub_ca2d7                                                     ; ac6f: 20 d7 a2     ..
    lda l0040                                                         ; ac72: a5 40       .@
    lsr a                                                             ; ac74: 4a          J
    adc #&40 ; '@'                                                    ; ac75: 69 40       i@
    sta l0040                                                         ; ac77: 85 40       .@
    lda #5                                                            ; ac79: a9 05       ..
    sta l0038                                                         ; ac7b: 85 38       .8
    jsr sub_ca360                                                     ; ac7d: 20 60 a3     `.
.loop_cac80
    jsr ca2df                                                         ; ac80: 20 df a2     ..
    lda #&53 ; 'S'                                                    ; ac83: a9 53       .S
    sta l000a                                                         ; ac85: 85 0a       ..
    jsr opcode_7b_sub_handler                                         ; ac87: 20 59 ab     Y.
    lda #&58 ; 'X'                                                    ; ac8a: a9 58       .X
    sta l000a                                                         ; ac8c: 85 0a       ..
    jsr opcode_78_sub_handler                                         ; ac8e: 20 03 a1     ..
    dec l0040                                                         ; ac91: c6 40       .@
    dec l0038                                                         ; ac93: c6 38       .8
    bne loop_cac80                                                    ; ac95: d0 e9       ..
.cac97
    rts                                                               ; ac97: 60          `

.cac98
    brk                                                               ; ac98: 00          .

    equb &18                                                          ; ac99: 18          .              ; error code
    equs "-v"                                                         ; ac9a: 2d 76       -v
    equb 128 + ('e')                                                  ; ac9c: e5          .              ; "e "
    equs "SQRT"                                                       ; ac9d: 53 51 52... SQR

.caca1
    brk                                                               ; aca1: 00          .

    equb &19                                                          ; aca2: 19          .              ; error code
    equs "L"                                                          ; aca3: 4c          L
    equb 128 + ('N')                                                  ; aca4: ce          .              ; "N "
    equb 128 + 7                                                      ; aca5: 87          .              ; "range" (token 7)

.caca6
    brk                                                               ; aca6: 00          .

    equb &1a                                                          ; aca7: 1a          .              ; error code
    equs "Accurac"                                                    ; aca8: 41 63 63... Acc
    equb 128 + ('y')                                                  ; acaf: f9          .              ; "y "
    equs "lost"                                                       ; acb0: 6c 6f 73... los
    equb 0                                                            ; acb4: 00          .

.opcode_ce_sub_handler
    jsr sub_ca4d6                                                     ; acb5: 20 d6 a4     ..
    bmi caca1                                                         ; acb8: 30 e7       0.
    beq caca1                                                         ; acba: f0 e5       ..
    jsr sub_ca4e9                                                     ; acbc: 20 e9 a4     ..
    ldy #&80                                                          ; acbf: a0 80       ..
    sty l0046                                                         ; acc1: 84 46       .F
    sty l0049                                                         ; acc3: 84 49       .I
    iny                                                               ; acc5: c8          .
    sty l0048                                                         ; acc6: 84 48       .H
    ldx l0040                                                         ; acc8: a6 40       .@
    beq cacd2                                                         ; acca: f0 06       ..
    lda l0041                                                         ; accc: a5 41       .A
    cmp #&b5                                                          ; acce: c9 b5       ..
    bcc cacd4                                                         ; acd0: 90 02       ..
.cacd2
    inx                                                               ; acd2: e8          .
    dey                                                               ; acd3: 88          .
.cacd4
    txa                                                               ; acd4: 8a          .
    pha                                                               ; acd5: 48          H
    sty l0040                                                         ; acd6: 84 40       .@
    jsr sub_ca108                                                     ; acd8: 20 08 a1     ..
    lda #&62 ; 'b'                                                    ; acdb: a9 62       .b
    jsr ca2d9                                                         ; acdd: 20 d9 a2     ..
    lda #6                                                            ; ace0: a9 06       ..
    ldy #&54 ; 'T'                                                    ; ace2: a0 54       .T
    jsr sub_cabfe                                                     ; ace4: 20 fe ab     ..
    jsr sub_ca35c                                                     ; ace7: 20 5c a3     \.
    jsr opcode_ca_sub_handler                                         ; acea: 20 ed aa     ..
    jsr opcode_ca_sub_handler                                         ; aced: 20 ed aa     ..
    jsr opcode_78_sub_handler                                         ; acf0: 20 03 a1     ..
    jsr sub_ca2d7                                                     ; acf3: 20 d7 a2     ..
    pla                                                               ; acf6: 68          h
    sec                                                               ; acf7: 38          8
    sbc #&81                                                          ; acf8: e9 81       ..
    jsr sub_ca412                                                     ; acfa: 20 12 a4     ..
    lda #&0e                                                          ; acfd: a9 0e       ..
    sta l000a                                                         ; acff: 85 0a       ..
    lda #&ad                                                          ; ad01: a9 ad       ..
    sta l000b                                                         ; ad03: 85 0b       ..
    jsr opcode_ca_sub_handler                                         ; ad05: 20 ed aa     ..
    jsr sub_ca368                                                     ; ad08: 20 68 a3     h.
    jmp opcode_78_sub_handler                                         ; ad0b: 4c 03 a1    L..

    equb &80, &31, &72, &17, &f8                                      ; ad0e: 80 31 72... .1r

.sub_cad13
    lda l0040                                                         ; ad13: a5 40       .@
    cmp #&98                                                          ; ad15: c9 98       ..
    bcs caca6                                                         ; ad17: b0 8d       ..
    jsr sub_ca2d7                                                     ; ad19: 20 d7 a2     ..
    jsr sub_cabed                                                     ; ad1c: 20 ed ab     ..
    jsr sub_ca304                                                     ; ad1f: 20 04 a3     ..
    lda l003e                                                         ; ad22: a5 3e       .>
    sta l0046                                                         ; ad24: 85 46       .F
    dec l0048                                                         ; ad26: c6 48       .H
    jsr sub_ca108                                                     ; ad28: 20 08 a1     ..
    jsr sub_cab44                                                     ; ad2b: 20 44 ab     D.
    jsr sub_ca371                                                     ; ad2e: 20 71 a3     q.
    lda l0044                                                         ; ad31: a5 44       .D
    sta l003a                                                         ; ad33: 85 3a       .:
    ora l0043                                                         ; ad35: 05 43       .C
    ora l0042                                                         ; ad37: 05 42       .B
    ora l0041                                                         ; ad39: 05 41       .A
    beq cad75                                                         ; ad3b: f0 38       .8
    lda #&a0                                                          ; ad3d: a9 a0       ..
    sta l0040                                                         ; ad3f: 85 40       .@
    ldy #0                                                            ; ad41: a0 00       ..
    sty l0045                                                         ; ad43: 84 45       .E
    lda l0041                                                         ; ad45: a5 41       .A
    sta l003e                                                         ; ad47: 85 3e       .>
    bpl cad4e                                                         ; ad49: 10 03       ..
    jsr sub_ca3c7                                                     ; ad4b: 20 c7 a3     ..
.cad4e
    jsr ca428                                                         ; ad4e: 20 28 a4     (.
    jsr sub_ca2cf                                                     ; ad51: 20 cf a2     ..
    jsr sub_cabf1                                                     ; ad54: 20 f1 ab     ..
    jsr opcode_ca_sub_handler                                         ; ad57: 20 ed aa     ..
    jsr sub_ca368                                                     ; ad5a: 20 68 a3     h.
    jsr opcode_78_sub_handler                                         ; ad5d: 20 03 a1     ..
    jsr ca2df                                                         ; ad60: 20 df a2     ..
    jsr sub_ca360                                                     ; ad63: 20 60 a3     `.
    jsr ca2a0                                                         ; ad66: 20 a0 a2     ..
    jsr sub_cabf5                                                     ; ad69: 20 f5 ab     ..
    jsr opcode_ca_sub_handler                                         ; ad6c: 20 ed aa     ..
    jsr sub_ca368                                                     ; ad6f: 20 68 a3     h.
    jmp opcode_78_sub_handler                                         ; ad72: 4c 03 a1    L..

.cad75
    jmp ca29d                                                         ; ad75: 4c 9d a2    L..

.opcode_d0_sub_handler
    jsr sub_ca4d6                                                     ; ad78: 20 d6 a4     ..
    beq cad88                                                         ; ad7b: f0 0b       ..
    bpl cadaa                                                         ; ad7d: 10 2b       .+
    lsr l003e                                                         ; ad7f: 46 3e       F>
    jsr cadaa                                                         ; ad81: 20 aa ad     ..
    lda #&80                                                          ; ad84: a9 80       ..
    sta l003e                                                         ; ad86: 85 3e       .>
.cad88
    rts                                                               ; ad88: 60          `

.cad89
    lda l0040                                                         ; ad89: a5 40       .@
    cmp #&73 ; 's'                                                    ; ad8b: c9 73       .s
    bcc cad88                                                         ; ad8d: 90 f9       ..
    jsr sub_ca2d3                                                     ; ad8f: 20 d3 a2     ..
    jsr sub_ca4e9                                                     ; ad92: 20 e9 a4     ..
    lda #&80                                                          ; ad95: a9 80       ..
    sta l0048                                                         ; ad97: 85 48       .H
    sta l0049                                                         ; ad99: 85 49       .I
    sta l0046                                                         ; ad9b: 85 46       .F
    jsr sub_ca108                                                     ; ad9d: 20 08 a1     ..
    lda #9                                                            ; ada0: a9 09       ..
    ldy #&77 ; 'w'                                                    ; ada2: a0 77       .w
    jsr sub_cabfe                                                     ; ada4: 20 fe ab     ..
    jmp caaea                                                         ; ada7: 4c ea aa    L..

.cadaa
    lda l0040                                                         ; adaa: a5 40       .@
    cmp #&81                                                          ; adac: c9 81       ..
    bcc cad89                                                         ; adae: 90 d9       ..
    jsr sub_cab3e                                                     ; adb0: 20 3e ab     >.
    jsr cad89                                                         ; adb3: 20 89 ad     ..
    jsr sub_cabf1                                                     ; adb6: 20 f1 ab     ..
    jsr opcode_78_sub_handler                                         ; adb9: 20 03 a1     ..
    jsr sub_cabf5                                                     ; adbc: 20 f5 ab     ..
    jsr opcode_78_sub_handler                                         ; adbf: 20 03 a1     ..
    jmp c9ee8                                                         ; adc2: 4c e8 9e    L..

.bytecode_opcode_d9_handler
    jsr sub_c9ac4                                                     ; adc5: 20 c4 9a     ..
    jsr sub_c9ad3                                                     ; adc8: 20 d3 9a     ..
    jsr sub_c9ae2                                                     ; adcb: 20 e2 9a     ..
    ldy #1                                                            ; adce: a0 01       ..
    lda (l0002),y                                                     ; add0: b1 02       ..
    sta l0033                                                         ; add2: 85 33       .3
    and #&7f                                                          ; add4: 29 7f       ).
    sta l0012                                                         ; add6: 85 12       ..
    jsr sub_caee9                                                     ; add8: 20 e9 ae     ..
    ldx l0012                                                         ; addb: a6 12       ..
    cpx #4                                                            ; addd: e0 04       ..
    bne cadf2                                                         ; addf: d0 11       ..
    jsr sub_c9b83                                                     ; ade1: 20 83 9b     ..
    lda l0008                                                         ; ade4: a5 08       ..
    sta l000a                                                         ; ade6: 85 0a       ..
    lda l0009                                                         ; ade8: a5 09       ..
    sta l000b                                                         ; adea: 85 0b       ..
    jsr some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes    ; adec: 20 d5 89     ..
    lda #2                                                            ; adef: a9 02       ..
    rts                                                               ; adf1: 60          `

.cadf2
    lda #4                                                            ; adf2: a9 04       ..
    ldy l0033                                                         ; adf4: a4 33       .3
    bmi cadfb                                                         ; adf6: 30 03       0.
    txa                                                               ; adf8: 8a          .
    ldx #4                                                            ; adf9: a2 04       ..
.cadfb
    sta l0014                                                         ; adfb: 85 14       ..
.cadfd
    ldy #0                                                            ; adfd: a0 00       ..
.loop_cadff
    lda (l0008),y                                                     ; adff: b1 08       ..
    sta (l000e),y                                                     ; ae01: 91 0e       ..
    iny                                                               ; ae03: c8          .
    cpy l0012                                                         ; ae04: c4 12       ..
    bcc loop_cadff                                                    ; ae06: 90 f7       ..
    lda l0033                                                         ; ae08: a5 33       .3
    bpl cae15                                                         ; ae0a: 10 09       ..
    lda #0                                                            ; ae0c: a9 00       ..
.loop_cae0e
    sta (l000e),y                                                     ; ae0e: 91 0e       ..
    iny                                                               ; ae10: c8          .
    cpy #4                                                            ; ae11: c0 04       ..
    bcc loop_cae0e                                                    ; ae13: 90 f9       ..
.cae15
    clc                                                               ; ae15: 18          .
    txa                                                               ; ae16: 8a          .
    adc l0008                                                         ; ae17: 65 08       e.
    sta l0008                                                         ; ae19: 85 08       ..
    bcc cae1f                                                         ; ae1b: 90 02       ..
    inc l0009                                                         ; ae1d: e6 09       ..
.cae1f
    clc                                                               ; ae1f: 18          .
    lda l0014                                                         ; ae20: a5 14       ..
    adc l000e                                                         ; ae22: 65 0e       e.
    sta l000e                                                         ; ae24: 85 0e       ..
    bcc cae2a                                                         ; ae26: 90 02       ..
    inc l000f                                                         ; ae28: e6 0f       ..
.cae2a
    lda l0048                                                         ; ae2a: a5 48       .H
    bne cae30                                                         ; ae2c: d0 02       ..
    dec l0049                                                         ; ae2e: c6 49       .I
.cae30
    dec l0048                                                         ; ae30: c6 48       .H
    bne cadfd                                                         ; ae32: d0 c9       ..
    lda l0049                                                         ; ae34: a5 49       .I
    bne cadfd                                                         ; ae36: d0 c5       ..
    lda #2                                                            ; ae38: a9 02       ..
    rts                                                               ; ae3a: 60          `

.bytecode_opcode_51_handler
    iny                                                               ; ae3b: c8          .
    lda (l0002),y                                                     ; ae3c: b1 02       ..
    jsr c9a54                                                         ; ae3e: 20 54 9a     T.
    iny                                                               ; ae41: c8          .
    lda (l0002),y                                                     ; ae42: b1 02       ..
    sta l0015                                                         ; ae44: 85 15       ..
    lda (l000a),y                                                     ; ae46: b1 0a       ..
    sta l004a                                                         ; ae48: 85 4a       .J
    iny                                                               ; ae4a: c8          .
    lda (l000a),y                                                     ; ae4b: b1 0a       ..
    sta l004b                                                         ; ae4d: 85 4b       .K
    clc                                                               ; ae4f: 18          .
    lda l000a                                                         ; ae50: a5 0a       ..
    adc #4                                                            ; ae52: 69 04       i.
    ldx l000b                                                         ; ae54: a6 0b       ..
.cae56
    sta l000c                                                         ; ae56: 85 0c       ..
    txa                                                               ; ae58: 8a          .
    adc #0                                                            ; ae59: 69 00       i.
    sta l000d                                                         ; ae5b: 85 0d       ..
    lda l004a                                                         ; ae5d: a5 4a       .J
    adc #3                                                            ; ae5f: 69 03       i.
    sta l000a                                                         ; ae61: 85 0a       ..
    lda l004b                                                         ; ae63: a5 4b       .K
    adc #0                                                            ; ae65: 69 00       i.
    sta l000b                                                         ; ae67: 85 0b       ..
    ldy #2                                                            ; ae69: a0 02       ..
    lda (l004a),y                                                     ; ae6b: b1 4a       .J
    cmp #1                                                            ; ae6d: c9 01       ..
    bne cae84                                                         ; ae6f: d0 13       ..
    ldy #0                                                            ; ae71: a0 00       ..
    lda (l000c),y                                                     ; ae73: b1 0c       ..
    cmp (l000a),y                                                     ; ae75: d1 0a       ..
    bcc cae81                                                         ; ae77: 90 08       ..
    ldy #4                                                            ; ae79: a0 04       ..
    cmp (l000a),y                                                     ; ae7b: d1 0a       ..
    bcc cae87                                                         ; ae7d: 90 08       ..
    beq cae87                                                         ; ae7f: f0 06       ..
.cae81
    jmp c8dd8                                                         ; ae81: 4c d8 8d    L..

.cae84
    jsr sub_ca91f                                                     ; ae84: 20 1f a9     ..
.cae87
    clc                                                               ; ae87: 18          .
    lda l004a                                                         ; ae88: a5 4a       .J
    adc #&0b                                                          ; ae8a: 69 0b       i.
    sta l004a                                                         ; ae8c: 85 4a       .J
    bcc cae92                                                         ; ae8e: 90 02       ..
    inc l004b                                                         ; ae90: e6 4b       .K
.cae92
    clc                                                               ; ae92: 18          .
    ldy #2                                                            ; ae93: a0 02       ..
    lda l000c                                                         ; ae95: a5 0c       ..
    adc (l004a),y                                                     ; ae97: 71 4a       qJ
    ldx l000d                                                         ; ae99: a6 0d       ..
    dec l0015                                                         ; ae9b: c6 15       ..
    bne cae56                                                         ; ae9d: d0 b7       ..
    jmp bytecode_opcode_42_handler                                    ; ae9f: 4c 10 9b    L..

.bytecode_opcode_43_handler
    ldy #&0f                                                          ; aea2: a0 0f       ..
.loop_caea4
    lda l0021,y                                                       ; aea4: b9 21 00    .!.
    sta (l0000),y                                                     ; aea7: 91 00       ..
    dey                                                               ; aea9: 88          .
    bpl loop_caea4                                                    ; aeaa: 10 f8       ..
    jsr sub_c99f0                                                     ; aeac: 20 f0 99     ..
    lda #1                                                            ; aeaf: a9 01       ..
    rts                                                               ; aeb1: 60          `

.bytecode_opcode_ef_handler
    jsr sub_c9a25                                                     ; aeb2: 20 25 9a     %.
    ldy #&0f                                                          ; aeb5: a0 0f       ..
.loop_caeb7
    lda (l0000),y                                                     ; aeb7: b1 00       ..
    sta l0021,y                                                       ; aeb9: 99 21 00    .!.
    dey                                                               ; aebc: 88          .
    bpl loop_caeb7                                                    ; aebd: 10 f8       ..
    lda #1                                                            ; aebf: a9 01       ..
    rts                                                               ; aec1: 60          `

.bytecode_opcode_e1_handler
    jsr sub_c87fb                                                     ; aec2: 20 fb 87     ..
    ldy #&11                                                          ; aec5: a0 11       ..
.loop_caec7
    lda (l0008),y                                                     ; aec7: b1 08       ..
    sta l001f,y                                                       ; aec9: 99 1f 00    ...
    dey                                                               ; aecc: 88          .
    cpy #2                                                            ; aecd: c0 02       ..
    bcs loop_caec7                                                    ; aecf: b0 f6       ..
    ldx #3                                                            ; aed1: a2 03       ..
    jmp c9560                                                         ; aed3: 4c 60 95    L`.

.bytecode_opcode_da_handler
    jsr sub_c9ac4                                                     ; aed6: 20 c4 9a     ..
    jsr sub_caee9                                                     ; aed9: 20 e9 ae     ..
    jsr sub_c9b83                                                     ; aedc: 20 83 9b     ..
    stx l0012                                                         ; aedf: 86 12       ..
    sty l0013                                                         ; aee1: 84 13       ..
    jsr sub_c89c9                                                     ; aee3: 20 c9 89     ..
    lda #1                                                            ; aee6: a9 01       ..
    rts                                                               ; aee8: 60          `

.sub_caee9
    sec                                                               ; aee9: 38          8
    ldy #8                                                            ; aeea: a0 08       ..
    lda (l000a),y                                                     ; aeec: b1 0a       ..
    pha                                                               ; aeee: 48          H
    dey                                                               ; aeef: 88          .
    lda (l000a),y                                                     ; aef0: b1 0a       ..
    ldy #3                                                            ; aef2: a0 03       ..
    sbc (l000a),y                                                     ; aef4: f1 0a       ..
    tax                                                               ; aef6: aa          .
    iny                                                               ; aef7: c8          .
    pla                                                               ; aef8: 68          h
    sbc (l000a),y                                                     ; aef9: f1 0a       ..
    inx                                                               ; aefb: e8          .
    bne caf00                                                         ; aefc: d0 02       ..
    adc #0                                                            ; aefe: 69 00       i.
.caf00
    stx l0048                                                         ; af00: 86 48       .H
    sta l0049                                                         ; af02: 85 49       .I
    rts                                                               ; af04: 60          `

.command_edit_handler
    jsr set_himem                                                     ; af05: 20 5d 85     ].
    lda #osbyte_read_vdu_variable                                     ; af08: a9 a0       ..
    ldx #9                                                            ; af0a: a2 09       ..
    jsr osbyte                                                        ; af0c: 20 f4 ff     ..            ; Read the text window bottom position (VDU variable X=9)
    cpy #&27 ; '''                                                    ; af0f: c0 27       .'             ; Y is the text window right position
    bcs caf16                                                         ; af11: b0 03       ..
    jmp c8569                                                         ; af13: 4c 69 85    Li.

.caf16
    stx l0030                                                         ; af16: 86 30       .0
    dex                                                               ; af18: ca          .
    stx l002d                                                         ; af19: 86 2d       .-
    sty l002c                                                         ; af1b: 84 2c       .,
    txa                                                               ; af1d: 8a          .
    sbc #4                                                            ; af1e: e9 04       ..
    sta l002f                                                         ; af20: 85 2f       ./
    lda #osbyte_read_char_at_cursor                                   ; af22: a9 87       ..
    jsr osbyte                                                        ; af24: 20 f4 ff     ..            ; Read character at the text cursor, and current screen MODE
    sty l002b                                                         ; af27: 84 2b       .+             ; Y is the current screen MODE (0-7)
    ldy #0                                                            ; af29: a0 00       ..
    sty l0034                                                         ; af2b: 84 34       .4
    lda (l000c),y                                                     ; af2d: b1 0c       ..
    cmp #&0d                                                          ; af2f: c9 0d       ..
    beq caf39                                                         ; af31: f0 06       ..
    jsr cb842                                                         ; af33: 20 42 b8     B.
.caf36
    jsr sub_c8571                                                     ; af36: 20 71 85     q.
.caf39
    ldx l040b                                                         ; af39: ae 0b 04    ...
    ldy l040e                                                         ; af3c: ac 0e 04    ...
    lda l0410                                                         ; af3f: ad 10 04    ...
    bne caf48                                                         ; af42: d0 04       ..
    ldx oshwm_low_zp                                                  ; af44: a6 04       ..
    ldy oshwm_high_zp                                                 ; af46: a4 05       ..
.caf48
    stx l0002                                                         ; af48: 86 02       ..
    sty l0003                                                         ; af4a: 84 03       ..
    jsr sub_cafd9                                                     ; af4c: 20 d9 af     ..
    stx l0000                                                         ; af4f: 86 00       ..
    sta l0001                                                         ; af51: 85 01       ..
    ldx oshwm_low_zp                                                  ; af53: a6 04       ..
    ldy oshwm_high_zp                                                 ; af55: a4 05       ..
    jsr cb404                                                         ; af57: 20 04 b4     ..
    lda l0027                                                         ; af5a: a5 27       .'
    sta l0002                                                         ; af5c: 85 02       ..
    lda l0028                                                         ; af5e: a5 28       .(
    sta l0003                                                         ; af60: 85 03       ..
    lda simplified_machine_type                                       ; af62: ad 17 04    ...
    cmp #3                                                            ; af65: c9 03       ..
    bne caf7a                                                         ; af67: d0 11       ..
    ldx #<(laf70)                                                     ; af69: a2 70       .p
    ldy #>(laf70)                                                     ; af6b: a0 af       ..
    jmp oscli                                                         ; af6d: 4c f7 ff    L..

.laf70
    equs "EDIT 0,29"                                                  ; af70: 45 44 49... EDI
    equb &0d                                                          ; af79: 0d          .

.caf7a
    lda #&0d                                                          ; af7a: a9 0d       ..
    ldy #0                                                            ; af7c: a0 00       ..
    sta (oshwm_low_zp),y                                              ; af7e: 91 04       ..
    sta (l0029),y                                                     ; af80: 91 29       .)
    sty l0033                                                         ; af82: 84 33       .3
    sty l0037                                                         ; af84: 84 37       .7
    sty l0039                                                         ; af86: 84 39       .9
    sty l0024                                                         ; af88: 84 24       .$
    iny                                                               ; af8a: c8          .
    sty l0036                                                         ; af8b: 84 36       .6
.caf8d
    ldx #&ff                                                          ; af8d: a2 ff       ..
    txs                                                               ; af8f: 9a          .
    jsr sub_cb146                                                     ; af90: 20 46 b1     F.
    lda #2                                                            ; af93: a9 02       ..
    sta l0416                                                         ; af95: 8d 16 04    ...
    lda #5                                                            ; af98: a9 05       ..
    sta l0031                                                         ; af9a: 85 31       .1
.something_13_handler
.something_15_handler
.something_1a_handler
    jsr sub_cb4c2                                                     ; af9c: 20 c2 b4     ..
    jsr cb2ef                                                         ; af9f: 20 ef b2     ..
    jsr sub_cb1e5                                                     ; afa2: 20 e5 b1     ..
    lda #4                                                            ; afa5: a9 04       ..
    sta l0031                                                         ; afa7: 85 31       .1
    jsr sub_cb207                                                     ; afa9: 20 07 b2     ..
    tax                                                               ; afac: aa          .
    bpl caff6                                                         ; afad: 10 47       .G
    cmp #&b0                                                          ; afaf: c9 b0       ..
    bcs something_13_handler                                          ; afb1: b0 e9       ..
    ldy simplified_machine_type                                       ; afb3: ac 17 04    ...
    cpy #1                                                            ; afb6: c0 01       ..
    bne cafbe                                                         ; afb8: d0 04       ..
    lda cb096,x                                                       ; afba: bd 96 b0    ...
    tax                                                               ; afbd: aa          .
.cafbe
    cmp #&a0                                                          ; afbe: c9 a0       ..
    bcc cafc9                                                         ; afc0: 90 07       ..
    sbc #&0c                                                          ; afc2: e9 0c       ..
    cmp #&a0                                                          ; afc4: c9 a0       ..
    bcc something_13_handler                                          ; afc6: 90 d4       ..
    tax                                                               ; afc8: aa          .
.cafc9
    lda something_jump_table_low_minus_128-128,x                      ; afc9: bd 4e b0    .N.
    sta l0008                                                         ; afcc: 85 08       ..
    lda something_jump_table_high_minus_128-128,x                     ; afce: bd 72 b0    .r.
    sta l0009                                                         ; afd1: 85 09       ..
    jsr jmp_indirect_via_l0008                                        ; afd3: 20 e2 87     ..
    jmp something_13_handler                                          ; afd6: 4c 9c af    L..

.sub_cafd9
    clc                                                               ; afd9: 18          .
    lda oshwm_low_zp                                                  ; afda: a5 04       ..
    adc #1                                                            ; afdc: 69 01       i.
    sta l0027                                                         ; afde: 85 27       .'
    lda oshwm_high_zp                                                 ; afe0: a5 05       ..
    adc #0                                                            ; afe2: 69 00       i.
    sta l0028                                                         ; afe4: 85 28       .(
    lda himem_low                                                     ; afe6: ad 02 04    ...
    sbc #0                                                            ; afe9: e9 00       ..
    sta l0029                                                         ; afeb: 85 29       .)
    tax                                                               ; afed: aa          .
    lda himem_high                                                    ; afee: ad 03 04    ...
    sbc #0                                                            ; aff1: e9 00       ..
    sta l002a                                                         ; aff3: 85 2a       .*
    rts                                                               ; aff5: 60          `

.caff6
    jsr sub_caffc                                                     ; aff6: 20 fc af     ..
    jmp something_13_handler                                          ; aff9: 4c 9c af    L..

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
    jsr something_0d_handler                                          ; b028: 20 d2 b6     ..
    jmp cb03d                                                         ; b02b: 4c 3d b0    L=.

.cb02e
    lda l0024                                                         ; b02e: a5 24       .$
    adc #0                                                            ; b030: 69 00       i.
    ldy l0025                                                         ; b032: a4 25       .%
    jsr cb636                                                         ; b034: 20 36 b6     6.
    jsr something_1c_handler                                          ; b037: 20 fe b6     ..
    jsr something_0e_handler                                          ; b03a: 20 e5 b6     ..
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
    beq cb053                                                         ; b04e: f0 03       ..
    jmp something_0c_handler                                          ; b050: 4c a8 b6    L..

.cb053
    lda l0024                                                         ; b053: a5 24       .$
    bne cb05c                                                         ; b055: d0 05       ..
    jsr sub_cb1a1                                                     ; b057: 20 a1 b1     ..
    bcs cb0cb                                                         ; b05a: b0 6f       .o
.cb05c
    jsr something_0c_handler                                          ; b05c: 20 a8 b6     ..
    cmp #3                                                            ; b05f: c9 03       ..
    bne cb077                                                         ; b061: d0 14       ..
    jsr sub_cb4c2                                                     ; b063: 20 c2 b4     ..
    jmp cb077                                                         ; b066: 4c 77 b0    Lw.

.something_0b_handler
    jsr sub_cbdbf                                                     ; b069: 20 bf bd     ..
    lda l0024                                                         ; b06c: a5 24       .$
    cmp l003f                                                         ; b06e: c5 3f       .?
    bcc cb077                                                         ; b070: 90 05       ..
    jsr sub_cb1aa                                                     ; b072: 20 aa b1     ..
    bcs cb0cb                                                         ; b075: b0 54       .T
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

.something_0a_handler
    lda #1                                                            ; b0a2: a9 01       ..
    jsr sub_cb3b1                                                     ; b0a4: 20 b1 b3     ..
    beq cb0cb                                                         ; b0a7: f0 22       ."
    ldy #&ff                                                          ; b0a9: a0 ff       ..
.cb0ab
    iny                                                               ; b0ab: c8          .
    cpy l002c                                                         ; b0ac: c4 2c       .,
    beq cb0c9                                                         ; b0ae: f0 19       ..
    lda (l0010),y                                                     ; b0b0: b1 10       ..
    cmp #&0d                                                          ; b0b2: c9 0d       ..
    beq cb0cb                                                         ; b0b4: f0 15       ..
    cmp #&20 ; ' '                                                    ; b0b6: c9 20       .
    bne cb0ab                                                         ; b0b8: d0 f1       ..
.loop_cb0ba
    cmp (l0010),y                                                     ; b0ba: d1 10       ..
    bne cb0c3                                                         ; b0bc: d0 05       ..
    iny                                                               ; b0be: c8          .
    cpy l002c                                                         ; b0bf: c4 2c       .,
    bcc loop_cb0ba                                                    ; b0c1: 90 f7       ..
.cb0c3
    cpy l0024                                                         ; b0c3: c4 24       .$
    beq cb0ab                                                         ; b0c5: f0 e4       ..
    bcc cb0ab                                                         ; b0c7: 90 e2       ..
.cb0c9
    sty l0024                                                         ; b0c9: 84 24       .$
.cb0cb
    jmp cb708                                                         ; b0cb: 4c 08 b7    L..

.something_jump_table_low_minus_128
    equb <something_00_handler                                        ; b0ce: 58          X
    equb <something_01_handler                                        ; b0cf: 41          A
    equb <something_02_handler                                        ; b0d0: 96          .
    equb <something_03_handler                                        ; b0d1: a4          .
    equb <something_04_handler                                        ; b0d2: 82          .
    equb <something_05_handler                                        ; b0d3: 20
    equb <something_06_handler                                        ; b0d4: 86          .
    equb <something_07_handler                                        ; b0d5: 7e          ~
    equb <something_08_handler                                        ; b0d6: da          .
    equb <something_09_handler                                        ; b0d7: 3b          ;
    equb <something_0a_handler                                        ; b0d8: a2          .
    equb <something_0b_handler                                        ; b0d9: 69          i
    equb <something_0c_handler                                        ; b0da: a8          .
    equb <something_0d_handler                                        ; b0db: d2          .
    equb <something_0e_handler                                        ; b0dc: e5          .
    equb <something_0f_handler                                        ; b0dd: b9          .
    equb <something_10_handler                                        ; b0de: 2e          .
    equb <something_11_handler                                        ; b0df: 16          .
    equb <something_12_handler                                        ; b0e0: e7          .
    equb <something_13_handler                                        ; b0e1: 9c          .
    equb <something_14_handler                                        ; b0e2: 69          i
    equb <something_15_handler                                        ; b0e3: 9c          .
    equb <something_16_handler                                        ; b0e4: ff          .
    equb <something_17_handler                                        ; b0e5: a5          .
    equb <something_18_handler                                        ; b0e6: cb          .
    equb <something_19_handler                                        ; b0e7: 35          5
    equb <something_1a_handler                                        ; b0e8: 9c          .
    equb <something_1b_handler                                        ; b0e9: 1e          .
    equb <something_1c_handler                                        ; b0ea: fe          .
    equb <something_1d_handler                                        ; b0eb: 04          .
    equb <something_1e_handler                                        ; b0ec: 53          S
    equb <something_1f_handler                                        ; b0ed: fb          .
    equb <something_20_handler                                        ; b0ee: fe          .
    equb <something_21_handler                                        ; b0ef: 04          .
    equb <something_22_handler                                        ; b0f0: 18          .
    equb <something_23_handler                                        ; b0f1: 0d          .
.something_jump_table_high_minus_128
    equb >something_00_handler                                        ; b0f2: b8          .
    equb >something_01_handler                                        ; b0f3: b7          .
    equb >something_02_handler                                        ; b0f4: b7          .
    equb >something_03_handler                                        ; b0f5: b7          .
    equb >something_04_handler                                        ; b0f6: bc          .
    equb >something_05_handler                                        ; b0f7: bd          .
    equb >something_06_handler                                        ; b0f8: bd          .
    equb >something_07_handler                                        ; b0f9: be          .
    equb >something_08_handler                                        ; b0fa: b8          .
    equb >something_09_handler                                        ; b0fb: b7          .
    equb >something_0a_handler                                        ; b0fc: b0          .
    equb >something_0b_handler                                        ; b0fd: b0          .
    equb >something_0c_handler                                        ; b0fe: b6          .
    equb >something_0d_handler                                        ; b0ff: b6          .
    equb >something_0e_handler                                        ; b100: b6          .
    equb >something_0f_handler                                        ; b101: b6          .
    equb >something_10_handler                                        ; b102: b7          .
    equb >something_11_handler                                        ; b103: b2          .
    equb >something_12_handler                                        ; b104: b7          .
    equb >something_13_handler                                        ; b105: af          .
    equb >something_14_handler                                        ; b106: b7          .
    equb >something_15_handler                                        ; b107: af          .
    equb >something_16_handler                                        ; b108: bd          .
    equb >something_17_handler                                        ; b109: be          .
    equb >something_18_handler                                        ; b10a: bd          .
    equb >something_19_handler                                        ; b10b: b7          .
    equb >something_1a_handler                                        ; b10c: af          .
    equb >something_1b_handler                                        ; b10d: b2          .
    equb >something_1c_handler                                        ; b10e: b6          .
    equb >something_1d_handler                                        ; b10f: b7          .
    equb >something_1e_handler                                        ; b110: b4          .
    equb >something_1f_handler                                        ; b111: b3          .
    equb >something_20_handler                                        ; b112: b6          .
    equb >something_21_handler                                        ; b113: b7          .
    equb >something_22_handler                                        ; b114: b7          .
    equb >something_23_handler                                        ; b115: b7          .
; TODO: junk?
    equb &99, &90, &91, &92, &a0, &94, &a0, &96, &97, &98, &a0, &8b   ; b116: 99 90 91... ...
    equb &8c, &8d, &8e, &8f, &8a, &a0, &a0, &a0, &82, &a0, &a0, &a0   ; b122: 8c 8d 8e... ...
    equb &87, &a0, &a0, &a0, &9e, &9f, &88, &89, &80, &83, &a0, &84   ; b12e: 87 a0 a0... ...
    equb &86, &a0, &81, &ae, &85, &af, &9b, &a0, &ac, &a0, &ad, &a0   ; b13a: 86 a0 81... ...

.sub_cb146
    lda #0                                                            ; b146: a9 00       ..
    sta l0035                                                         ; b148: 85 35       .5
    jsr fancy_print_nop_terminated_inline                             ; b14a: 20 84 b2     ..
    equs &0d, 3, &0f, &1a                                             ; b14d: 0d 03 0f... ...

    nop                                                               ; b151: ea          .
    lda #osbyte_select_printer                                        ; b152: a9 05       ..
    jsr osbyte                                                        ; b154: 20 f4 ff     ..            ; Select printer destination based on X
    jsr osbyte                                                        ; b157: 20 f4 ff     ..
; Do 'setup' OSBYTE calls
    ldx #4                                                            ; b15a: a2 04       ..
    ldy #0                                                            ; b15c: a0 00       ..
    jsr sub_cb17b                                                     ; b15e: 20 7b b1     {.
    ldx #&8a                                                          ; b161: a2 8a       ..
.set_tab_char_to_x_if_not_electron
    lda simplified_machine_type                                       ; b163: ad 17 04    ...
    cmp #1                                                            ; b166: c9 01       ..
    beq cb171                                                         ; b168: f0 07       ..
    lda #osbyte_read_write_tab_char                                   ; b16a: a9 db       ..
    ldy #0                                                            ; b16c: a0 00       ..
    jsr osbyte                                                        ; b16e: 20 f4 ff     ..            ; Write TAB key character
.cb171
    rts                                                               ; b171: 60          `

.set_tab_char_to_9_if_not_electron_and_do_cleanup_osbyte_calls
    ldx #9                                                            ; b172: a2 09       ..
    jsr set_tab_char_to_x_if_not_electron                             ; b174: 20 63 b1     c.
    ldx #3                                                            ; b177: a2 03       ..
    ldy #4                                                            ; b179: a0 04       ..
.sub_cb17b
    stx l0015                                                         ; b17b: 86 15       ..
    sty l0016                                                         ; b17d: 84 16       ..
.do_x_osbyte_calls_from_table_starting_at_y
    ldy l0016                                                         ; b17f: a4 16       ..
    lda osbyte_a_table,y                                              ; b181: b9 93 b1    ...
    ldx osbyte_x_table,y                                              ; b184: be 9a b1    ...
    ldy #0                                                            ; b187: a0 00       ..
    jsr osbyte                                                        ; b189: 20 f4 ff     ..
    inc l0016                                                         ; b18c: e6 16       ..
    dec l0015                                                         ; b18e: c6 15       ..
    bne do_x_osbyte_calls_from_table_starting_at_y                    ; b190: d0 ed       ..
    rts                                                               ; b192: 60          `

.osbyte_a_table
    equb   4, &e1, &e2, &e3,   4, &e1, &e2                            ; b193: 04 e1 e2... ...
.osbyte_x_table
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

.something_11_handler
    lda l0036                                                         ; b216: a5 36       .6
    eor #1                                                            ; b218: 49 01       I.
    sta l0036                                                         ; b21a: 85 36       .6
    bpl cb225                                                         ; b21c: 10 07       ..
.something_1b_handler
    jsr set_tab_char_to_9_if_not_electron_and_do_cleanup_osbyte_calls ; b21e: 20 72 b1     r.
    lda #1                                                            ; b221: a9 01       ..
    sta l0035                                                         ; b223: 85 35       .5
.cb225
    lda #0                                                            ; b225: a9 00       ..
    sta l0031                                                         ; b227: 85 31       .1
.cb229
    jsr sub_cb1eb                                                     ; b229: 20 eb b1     ..
    jsr sub_cb2f5                                                     ; b22c: 20 f5 b2     ..
    lda l0036                                                         ; b22f: a5 36       .6
    bne cb241                                                         ; b231: d0 0e       ..
    jsr fancy_print_nop_terminated_inline                             ; b233: 20 84 b2     ..
    equs "#Over "                                                     ; b236: 23 4f 76... #Ov
    equb 128 + (' ')                                                  ; b23c: a0          .              ; "  "

    nop                                                               ; b23d: ea          .
    jmp cb247                                                         ; b23e: 4c 47 b2    LG.

.cb241
    jsr fancy_print_nop_terminated_inline                             ; b241: 20 84 b2     ..
    equs "#"                                                          ; b244: 23          #
    equb 128 + 17                                                     ; b245: 91          .              ; "Insert " (token 17)

    nop                                                               ; b246: ea          .
.cb247
    ldx l0035                                                         ; b247: a6 35       .5
    lda lb26e,x                                                       ; b249: bd 6e b2    .n.
    jsr oswrch                                                        ; b24c: 20 ee ff     ..            ; Write character
    lda #&20 ; ' '                                                    ; b24f: a9 20       .
    jsr oswrch                                                        ; b251: 20 ee ff     ..            ; Write character 32
    lda l0039                                                         ; b254: a5 39       .9
    ora #&30 ; '0'                                                    ; b256: 09 30       .0
    jsr oswrch                                                        ; b258: 20 ee ff     ..            ; Write character
    jsr fancy_print_nop_terminated_inline                             ; b25b: 20 84 b2     ..
    equs " mark(s)"                                                   ; b25e: 20 6d 61...  ma

    nop                                                               ; b266: ea          .
    lda #&13                                                          ; b267: a9 13       ..
    ldy l0030                                                         ; b269: a4 30       .0
    jmp cb636                                                         ; b26b: 4c 36 b6    L6.

.lb26e
    equb &20, &2a                                                     ; b26e: 20 2a        *

.extra_fancy_print_nop_terminated_inlne
    ldy l0030                                                         ; b270: a4 30       .0
    jsr maybe_clear_part_of_screen                                    ; b272: 20 34 b6     4.
    jsr sub_cb2f5                                                     ; b275: 20 f5 b2     ..
    lda #&23 ; '#'                                                    ; b278: a9 23       .#
    jsr oswrch                                                        ; b27a: 20 ee ff     ..            ; Write character 35
.sub_cb27d
    ldy l0030                                                         ; b27d: a4 30       .0
    lda l002c                                                         ; b27f: a5 2c       .,
    sta l0658,y                                                       ; b281: 99 58 06    .X.
.fancy_print_nop_terminated_inline
    pla                                                               ; b284: 68          h
    tax                                                               ; b285: aa          .
    pla                                                               ; b286: 68          h
    tay                                                               ; b287: a8          .
    lda #&ea                                                          ; b288: a9 ea       ..
    jsr fancy_print_at_yx_with_terminator_a                           ; b28a: 20 7a 81     z.
    jmp (l0006)                                                       ; b28d: 6c 06 00    l..

.sub_cb290
    jsr sub_cb296                                                     ; b290: 20 96 b2     ..
    jmp c8497                                                         ; b293: 4c 97 84    L..

.sub_cb296
    lda #5                                                            ; b296: a9 05       ..
    sta l0031                                                         ; b298: 85 31       .1
    jmp c996e                                                         ; b29a: 4c 6e 99    Ln.

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
.sub_cb2f7
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

.print_yx_as_decimal
    stx l000c                                                         ; b30c: 86 0c       ..
    sty l000d                                                         ; b30e: 84 0d       ..
    ldx #4                                                            ; b310: a2 04       ..
    stx l0015                                                         ; b312: 86 15       ..
.cb314
    lda #0                                                            ; b314: a9 00       ..
    sta l0014                                                         ; b316: 85 14       ..
.loop_cb318
    sec                                                               ; b318: 38          8
    lda l000c                                                         ; b319: a5 0c       ..
    sbc lb343,x                                                       ; b31b: fd 43 b3    .C.
    tay                                                               ; b31e: a8          .
    lda l000d                                                         ; b31f: a5 0d       ..
    sbc lb348,x                                                       ; b321: fd 48 b3    .H.
    bcc cb32e                                                         ; b324: 90 08       ..
    sty l000c                                                         ; b326: 84 0c       ..
    sta l000d                                                         ; b328: 85 0d       ..
    inc l0014                                                         ; b32a: e6 14       ..
    bne loop_cb318                                                    ; b32c: d0 ea       ..
.cb32e
    lda l0014                                                         ; b32e: a5 14       ..
    bne cb336                                                         ; b330: d0 04       ..
    dec l0015                                                         ; b332: c6 15       ..
    bpl cb33f                                                         ; b334: 10 09       ..
.cb336
    ora #&30 ; '0'                                                    ; b336: 09 30       .0
    jsr oswrch                                                        ; b338: 20 ee ff     ..            ; Write character
    lda #0                                                            ; b33b: a9 00       ..
    sta l0015                                                         ; b33d: 85 15       ..
.cb33f
    dex                                                               ; b33f: ca          .
    bpl cb314                                                         ; b340: 10 d2       ..
    rts                                                               ; b342: 60          `

.lb343
    equb   1, &0a, &64, &e8, &10                                      ; b343: 01 0a 64... ..d
.lb348
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

.something_to_do_with_finding_cr
    ldx l0000                                                         ; b374: a6 00       ..
    ldy l0001                                                         ; b376: a4 01       ..
    stx l0010                                                         ; b378: 86 10       ..
    sty l0011                                                         ; b37a: 84 11       ..
.sub_cb37c
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
    cpx himem_low                                                     ; b3a4: ec 02 04    ...
    sbc himem_high                                                    ; b3a7: ed 03 04    ...
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

.something_1f_handler
    lda l0030                                                         ; b3fb: a5 30       .0
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
.copyish_from_l000a_to_l000e
    stx l0012                                                         ; b42b: 86 12       ..
    sty l0013                                                         ; b42d: 84 13       ..
.sub_cb42f
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

.something_1e_handler
    lda l0030                                                         ; b453: a5 30       .0
.sub_cb455
    jsr something_to_do_with_finding_cr                               ; b455: 20 74 b3     t.
.cb458
    ldx l0010                                                         ; b458: a6 10       ..
    ldy l0011                                                         ; b45a: a4 11       ..
.bulk_copy_from_l0000_to_l0002
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

.sub_cb487
    jsr sub_cb29d                                                     ; b487: 20 9d b2     ..
.sub_cb48a
    jsr sub_cb1b9                                                     ; b48a: 20 b9 b1     ..
    cmp l0024                                                         ; b48d: c5 24       .$
    bcc cb493                                                         ; b48f: 90 02       ..
    lda l0024                                                         ; b491: a5 24       .$
.cb493
    clc                                                               ; b493: 18          .
    adc l0000                                                         ; b494: 65 00       e.
    tax                                                               ; b496: aa          .
    lda #0                                                            ; b497: a9 00       ..
    adc l0001                                                         ; b499: 65 01       e.
    tay                                                               ; b49b: a8          .
    jmp bulk_copy_from_l0000_to_l0002                                 ; b49c: 4c 5c b4    L\.

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
    jsr cb229                                                         ; b4e3: 20 29 b2     ).
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
    jsr something_to_do_with_finding_cr                               ; b533: 20 74 b3     t.
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
    jsr cb229                                                         ; b550: 20 29 b2     ).
    ldy l002d                                                         ; b553: a4 2d       .-
    lda l0015                                                         ; b555: a5 15       ..
    beq cb585                                                         ; b557: f0 2c       .,
    jmp maybe_clear_part_of_screen                                    ; b559: 4c 34 b6    L4.

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
    jsr cb229                                                         ; b580: 20 29 b2     ).
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
    jsr cb636                                                         ; b5be: 20 36 b6     6.
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
    jsr maybe_clear_part_of_screen                                    ; b618: 20 34 b6     4.
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

.maybe_clear_part_of_screen
    lda #0                                                            ; b634: a9 00       ..
.cb636
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

.something_0c_handler
    jsr sub_cb1a1                                                     ; b6a8: 20 a1 b1     ..
    bcc cb6b1                                                         ; b6ab: 90 04       ..
    lda l0024                                                         ; b6ad: a5 24       .$
    beq cb708                                                         ; b6af: f0 57       .W
.cb6b1
    dec l0024                                                         ; b6b1: c6 24       .$
    bpl cb708                                                         ; b6b3: 10 53       .S
    lda l002c                                                         ; b6b5: a5 2c       .,
    sta l0024                                                         ; b6b7: 85 24       .$
.something_0f_handler
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

.something_0d_handler
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
.something_0e_handler
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

.something_1c_handler
.something_20_handler
    lda #0                                                            ; b6fe: a9 00       ..
    sta l0024                                                         ; b700: 85 24       .$
    beq cb708                                                         ; b702: f0 04       ..
.something_1d_handler
.something_21_handler
    lda l003f                                                         ; b704: a5 3f       .?
    sta l0024                                                         ; b706: 85 24       .$
.cb708
    lda #0                                                            ; b708: a9 00       ..
    sta l0031                                                         ; b70a: 85 31       .1
    rts                                                               ; b70c: 60          `

.something_23_handler
    lda #0                                                            ; b70d: a9 00       ..
    sta l0024                                                         ; b70f: 85 24       .$
.sub_cb711
    ldx l0027                                                         ; b711: a6 27       .'
    ldy l0028                                                         ; b713: a4 28       .(
    jmp cb404                                                         ; b715: 4c 04 b4    L..

.something_22_handler
    jsr sub_cb727                                                     ; b718: 20 27 b7     '.
    lda l002f                                                         ; b71b: a5 2f       ./
    sta l0025                                                         ; b71d: 85 25       .%
.cb71f
    jsr cb7cc                                                         ; b71f: 20 cc b7     ..
    lda l0014                                                         ; b722: a5 14       ..
    sta l0024                                                         ; b724: 85 24       .$
    rts                                                               ; b726: 60          `

.sub_cb727
    ldx l0029                                                         ; b727: a6 29       .)
    ldy l002a                                                         ; b729: a4 2a       .*
    jmp bulk_copy_from_l0000_to_l0002                                 ; b72b: 4c 5c b4    L\.

.something_10_handler
    lda l0033                                                         ; b72e: a5 33       .3
    eor #1                                                            ; b730: 49 01       I.
    sta l0033                                                         ; b732: 85 33       .3
    rts                                                               ; b734: 60          `

.something_19_handler
    jsr set_up_for_cold_start                                         ; b735: 20 0a 86     ..
    jmp caf39                                                         ; b738: 4c 39 af    L9.

.something_09_handler
    jsr sub_c865a                                                     ; b73b: 20 5a 86     Z.
    jmp caf39                                                         ; b73e: 4c 39 af    L9.

.something_01_handler
    lda #3                                                            ; b741: a9 03       ..
    sta l0416                                                         ; b743: 8d 16 04    ...
    jsr set_tab_char_to_9_if_not_electron_and_do_cleanup_osbyte_calls ; b746: 20 72 b1     r.
    jsr extra_fancy_print_nop_terminated_inlne                        ; b749: 20 70 b2     p.
    equs "Star", &0d                                                  ; b74c: 53 74 61... Sta

    nop                                                               ; b751: ea          .
.cb752
    lda #&2a ; '*'                                                    ; b752: a9 2a       .*
    jsr oswrch                                                        ; b754: 20 ee ff     ..            ; Write character 42
    jsr probably_read_input_line_to_l051a                             ; b757: 20 94 84     ..
    beq cb766                                                         ; b75a: f0 0a       ..
    ldx #<(input_buffer)                                              ; b75c: a2 1a       ..
    ldy #>(input_buffer)                                              ; b75e: a0 05       ..
    jsr oscli                                                         ; b760: 20 f7 ff     ..
    jmp cb752                                                         ; b763: 4c 52 b7    LR.

.cb766
    jmp caf8d                                                         ; b766: 4c 8d af    L..

.something_14_handler
    jsr sub_cb711                                                     ; b769: 20 11 b7     ..
    jsr sub_cb77e                                                     ; b76c: 20 7e b7     ~.
    jsr set_tab_char_to_9_if_not_electron_and_do_cleanup_osbyte_calls ; b76f: 20 72 b1     r.
    jsr extra_fancy_print_nop_terminated_inlne                        ; b772: 20 70 b2     p.
    equs "Quit", &0d                                                  ; b775: 51 75 69... Qui

    nop                                                               ; b77a: ea          .
    jmp language_entry_common                                         ; b77b: 4c 44 83    LD.

.sub_cb77e
    lda oshwm_low_zp                                                  ; b77e: a5 04       ..
    sta l0002                                                         ; b780: 85 02       ..
    lda oshwm_high_zp                                                 ; b782: a5 05       ..
    sta l0003                                                         ; b784: 85 03       ..
    jsr sub_cb727                                                     ; b786: 20 27 b7     '.
    lda l0002                                                         ; b789: a5 02       ..
    sta l040b                                                         ; b78b: 8d 0b 04    ...
    lda l0003                                                         ; b78e: a5 03       ..
    sta l040e                                                         ; b790: 8d 0e 04    ...
    jmp c8574                                                         ; b793: 4c 74 85    Lt.

.something_02_handler
    jsr extra_fancy_print_nop_terminated_inlne                        ; b796: 20 70 b2     p.
    equs "Loa"                                                        ; b799: 4c 6f 61    Loa
    equb 128 + ('d')                                                  ; b79c: e4          .              ; "d "

    nop                                                               ; b79d: ea          .
    jsr sub_cb810                                                     ; b79e: 20 10 b8     ..
    jmp caf36                                                         ; b7a1: 4c 36 af    L6.

.something_03_handler
    jsr sub_cbdc4                                                     ; b7a4: 20 c4 bd     ..
    jsr extra_fancy_print_nop_terminated_inlne                        ; b7a7: 20 70 b2     p.
    equs "Sav"                                                        ; b7aa: 53 61 76    Sav
    equb 128 + ('e')                                                  ; b7ad: e5          .              ; "e "

    nop                                                               ; b7ae: ea          .
    jsr sub_cb810                                                     ; b7af: 20 10 b8     ..
    jsr sub_cbe3c                                                     ; b7b2: 20 3c be     <.
    lda l0000                                                         ; b7b5: a5 00       ..
    sta l0624                                                         ; b7b7: 8d 24 06    .$.
    lda l0001                                                         ; b7ba: a5 01       ..
    sta l0625                                                         ; b7bc: 8d 25 06    .%.
    jsr sub_c8432                                                     ; b7bf: 20 32 84     2.
    jsr sub_cb711                                                     ; b7c2: 20 11 b7     ..
    ldx l004c                                                         ; b7c5: a6 4c       .L
    ldy l004d                                                         ; b7c7: a4 4d       .M
    jsr bulk_copy_from_l0000_to_l0002                                 ; b7c9: 20 5c b4     \.
.cb7cc
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

.something_12_handler
    jsr sub_cbdbf                                                     ; b7e7: 20 bf bd     ..
    jsr extra_fancy_print_nop_terminated_inlne                        ; b7ea: 20 70 b2     p.
    equb 128 + 17                                                     ; b7ed: 91          .              ; "Insert " (token 17)

    nop                                                               ; b7ee: ea          .
    jsr sub_cb810                                                     ; b7ef: 20 10 b8     ..
    jsr sub_cb487                                                     ; b7f2: 20 87 b4     ..
    lda l0002                                                         ; b7f5: a5 02       ..
    sta l0008                                                         ; b7f7: 85 08       ..
    lda l0003                                                         ; b7f9: a5 03       ..
    ldx l0000                                                         ; b7fb: a6 00       ..
    ldy l0001                                                         ; b7fd: a4 01       ..
    jsr sub_c859b                                                     ; b7ff: 20 9b 85     ..
    stx l0002                                                         ; b802: 86 02       ..
    sty l0003                                                         ; b804: 84 03       ..
    ldx l0008                                                         ; b806: a6 08       ..
    ldy l0009                                                         ; b808: a4 09       ..
    jsr cb404                                                         ; b80a: 20 04 b4     ..
    jmp cb7cc                                                         ; b80d: 4c cc b7    L..

.sub_cb810
    jsr fancy_print_nop_terminated_inline                             ; b810: 20 84 b2     ..
    equs "["                                                          ; b813: 5b          [

    nop                                                               ; b814: ea          .
    lda l0034                                                         ; b815: a5 34       .4
    beq cb828                                                         ; b817: f0 0f       ..
    ldy #0                                                            ; b819: a0 00       ..
.loop_cb81b
    lda l0678,y                                                       ; b81b: b9 78 06    .x.
    cmp #&0d                                                          ; b81e: c9 0d       ..
    beq cb828                                                         ; b820: f0 06       ..
    jsr oswrch                                                        ; b822: 20 ee ff     ..            ; Write character
    iny                                                               ; b825: c8          .
    bne loop_cb81b                                                    ; b826: d0 f3       ..
.cb828
    jsr fancy_print_nop_terminated_inline                             ; b828: 20 84 b2     ..
    equs "]"                                                          ; b82b: 5d          ]
    equb 128 + (':')                                                  ; b82c: ba          .              ; ": "

    nop                                                               ; b82d: ea          .
    jsr sub_cb290                                                     ; b82e: 20 90 b2     ..
    bne cb842                                                         ; b831: d0 0f       ..
    lda l0034                                                         ; b833: a5 34       .4
    beq cb842                                                         ; b835: f0 0b       ..
.loop_cb837
    lda l0678,y                                                       ; b837: b9 78 06    .x.
    sta input_buffer,y                                                ; b83a: 99 1a 05    ...
    iny                                                               ; b83d: c8          .
    cmp #&0d                                                          ; b83e: c9 0d       ..
    bne loop_cb837                                                    ; b840: d0 f5       ..
.cb842
    ldx l0017                                                         ; b842: a6 17       ..
    ldy #0                                                            ; b844: a0 00       ..
.loop_cb846
    lda input_buffer,x                                                ; b846: bd 1a 05    ...
    sta l0678,y                                                       ; b849: 99 78 06    .x.
    inx                                                               ; b84c: e8          .
    iny                                                               ; b84d: c8          .
    cmp #&0d                                                          ; b84e: c9 0d       ..
    bne loop_cb846                                                    ; b850: d0 f4       ..
    inc l0034                                                         ; b852: e6 34       .4
    rts                                                               ; b854: 60          `

.cb855
    jmp c9e58                                                         ; b855: 4c 58 9e    LX.

.something_00_handler
    jsr extra_fancy_print_nop_terminated_inlne                        ; b858: 20 70 b2     p.
    equs "Line"                                                       ; b85b: 4c 69 6e... Lin
    equb 128 + (':')                                                  ; b85f: ba          .              ; ": "

    nop                                                               ; b860: ea          .
    jsr sub_cb290                                                     ; b861: 20 90 b2     ..
    beq cb855                                                         ; b864: f0 ef       ..
    sty l0016                                                         ; b866: 84 16       ..
    sty l0046                                                         ; b868: 84 46       .F
    sty l0047                                                         ; b86a: 84 47       .G
.cb86c
    ldy l0016                                                         ; b86c: a4 16       ..
    lda (l000c),y                                                     ; b86e: b1 0c       ..
    cmp #&0d                                                          ; b870: c9 0d       ..
    beq cb8a5                                                         ; b872: f0 31       .1
    cmp #&3a ; ':'                                                    ; b874: c9 3a       .:
    bcs cb855                                                         ; b876: b0 dd       ..
    sbc #&2f ; '/'                                                    ; b878: e9 2f       ./
    bcc cb855                                                         ; b87a: 90 d9       ..
    sta l0014                                                         ; b87c: 85 14       ..
    lda #&0a                                                          ; b87e: a9 0a       ..
    sta l0015                                                         ; b880: 85 15       ..
    ldx #0                                                            ; b882: a2 00       ..
    ldy #0                                                            ; b884: a0 00       ..
    clc                                                               ; b886: 18          .
.loop_cb887
    txa                                                               ; b887: 8a          .
    adc l0046                                                         ; b888: 65 46       eF
    tax                                                               ; b88a: aa          .
    tya                                                               ; b88b: 98          .
    adc l0047                                                         ; b88c: 65 47       eG
    tay                                                               ; b88e: a8          .
    bcs cb855                                                         ; b88f: b0 c4       ..
    dec l0015                                                         ; b891: c6 15       ..
    bne loop_cb887                                                    ; b893: d0 f2       ..
    txa                                                               ; b895: 8a          .
    adc l0014                                                         ; b896: 65 14       e.
    sta l0046                                                         ; b898: 85 46       .F
    bcc cb89f                                                         ; b89a: 90 03       ..
    iny                                                               ; b89c: c8          .
    beq cb855                                                         ; b89d: f0 b6       ..
.cb89f
    sty l0047                                                         ; b89f: 84 47       .G
    inc l0016                                                         ; b8a1: e6 16       ..
    bne cb86c                                                         ; b8a3: d0 c7       ..
.cb8a5
    lda l0046                                                         ; b8a5: a5 46       .F
    ora l0047                                                         ; b8a7: 05 47       .G
    beq cb855                                                         ; b8a9: f0 aa       ..
    jsr something_23_handler                                          ; b8ab: 20 0d b7     ..
    jsr sub_cb34d                                                     ; b8ae: 20 4d b3     M.
.loop_cb8b1
    lda l0046                                                         ; b8b1: a5 46       .F
    bne cb8b7                                                         ; b8b3: d0 02       ..
    dec l0047                                                         ; b8b5: c6 47       .G
.cb8b7
    dec l0046                                                         ; b8b7: c6 46       .F
    bne cb8bf                                                         ; b8b9: d0 04       ..
    lda l0047                                                         ; b8bb: a5 47       .G
    beq cb8ce                                                         ; b8bd: f0 0f       ..
.cb8bf
    lda #1                                                            ; b8bf: a9 01       ..
    jsr sub_cb37c                                                     ; b8c1: 20 7c b3     |.
    bcs cb8d5                                                         ; b8c4: b0 0f       ..
    lda l0014                                                         ; b8c6: a5 14       ..
    cmp #&0d                                                          ; b8c8: c9 0d       ..
    bne cb8bf                                                         ; b8ca: d0 f3       ..
    beq loop_cb8b1                                                    ; b8cc: f0 e3       ..
.cb8ce
    lda l002f                                                         ; b8ce: a5 2f       ./
    sta l0025                                                         ; b8d0: 85 25       .%
    jmp cb458                                                         ; b8d2: 4c 58 b4    LX.

.cb8d5
    brk                                                               ; b8d5: 00          .

    equb 5                                                            ; b8d6: 05          .              ; error code
    equb 128 + 11                                                     ; b8d7: 8b          .              ; "Not " (token 11)
    equb 128 + 15                                                     ; b8d8: 8f          .              ; "found" (token 15)
    equb 0                                                            ; b8d9: 00          .

.something_08_handler
    jsr extra_fancy_print_nop_terminated_inlne                        ; b8da: 20 70 b2     p.
    equs "Print", &0d                                                 ; b8dd: 50 72 69... Pri

    nop                                                               ; b8e3: ea          .
    jsr something_23_handler                                          ; b8e4: 20 0d b7     ..
    jsr sub_cb34d                                                     ; b8e7: 20 4d b3     M.
    lda #2                                                            ; b8ea: a9 02       ..
    jsr oswrch                                                        ; b8ec: 20 ee ff     ..            ; Write character 2
.loop_cb8ef
    jsr c9971                                                         ; b8ef: 20 71 99     q.
    ldy #0                                                            ; b8f2: a0 00       ..
    lda (l0010),y                                                     ; b8f4: b1 10       ..
    jsr osasci                                                        ; b8f6: 20 e3 ff     ..            ; Write character
    tya                                                               ; b8f9: 98          .
    jsr sub_cb39b                                                     ; b8fa: 20 9b b3     ..
    bcc loop_cb8ef                                                    ; b8fd: 90 f0       ..
    jmp caf8d                                                         ; b8ff: 4c 8d af    L..

.sub_cb902
    cmp #&7e ; '~'                                                    ; b902: c9 7e       .~
    bne cb916                                                         ; b904: d0 10       ..
    ldx #&81                                                          ; b906: a2 81       ..
.cb908
    jsr cb9f2                                                         ; b908: 20 f2 b9     ..
.sub_cb90b
    ldy l0041                                                         ; b90b: a4 41       .A
    lda input_buffer,y                                                ; b90d: b9 1a 05    ...
    sta l0014                                                         ; b910: 85 14       ..
    inc l0041                                                         ; b912: e6 41       .A
    cmp #&0d                                                          ; b914: c9 0d       ..
.cb916
    rts                                                               ; b916: 60          `

.sub_cb917
    ldy #0                                                            ; b917: a0 00       ..
    sty l0041                                                         ; b919: 84 41       .A
    sty l0042                                                         ; b91b: 84 42       .B
    sty l004a                                                         ; b91d: 84 4a       .J
    sty l0054                                                         ; b91f: 84 54       .T
    sty l0043                                                         ; b921: 84 43       .C
    sty l0044                                                         ; b923: 84 44       .D
    jsr sub_cb90b                                                     ; b925: 20 0b b9     ..
.cb928
    lda l0014                                                         ; b928: a5 14       ..
    cmp #&0d                                                          ; b92a: c9 0d       ..
    beq cb934                                                         ; b92c: f0 06       ..
    cmp #&2f ; '/'                                                    ; b92e: c9 2f       ./
    bne cb942                                                         ; b930: d0 10       ..
    inc l004a                                                         ; b932: e6 4a       .J
.cb934
    jsr cb9f0                                                         ; b934: 20 f0 b9     ..
    lda l0042                                                         ; b937: a5 42       .B
    sta l003c                                                         ; b939: 85 3c       .<
    lda l004a                                                         ; b93b: a5 4a       .J
    beq cb916                                                         ; b93d: f0 d7       ..
    jmp cb9b7                                                         ; b93f: 4c b7 b9    L..

.cb942
    ldx l0042                                                         ; b942: a6 42       .B
    stx l003b                                                         ; b944: 86 3b       .;
    cmp #&2a ; '*'                                                    ; b946: c9 2a       .*
    bne cb94f                                                         ; b948: d0 05       ..
    ldx #&80                                                          ; b94a: a2 80       ..
    jsr cb908                                                         ; b94c: 20 08 b9     ..
.cb94f
    jsr sub_cb902                                                     ; b94f: 20 02 b9     ..
    cmp #&5b ; '['                                                    ; b952: c9 5b       .[
    bne cb975                                                         ; b954: d0 1f       ..
    ldx #&86                                                          ; b956: a2 86       ..
    jsr cb9f2                                                         ; b958: 20 f2 b9     ..
    sty l0045                                                         ; b95b: 84 45       .E
    jsr cb908                                                         ; b95d: 20 08 b9     ..
.loop_cb960
    jsr sub_cba65                                                     ; b960: 20 65 ba     e.
    lda l0014                                                         ; b963: a5 14       ..
    cmp #&5d ; ']'                                                    ; b965: c9 5d       .]
    bne loop_cb960                                                    ; b967: d0 f7       ..
    jsr sub_cb90b                                                     ; b969: 20 0b b9     ..
    ldy l0045                                                         ; b96c: a4 45       .E
    lda l0042                                                         ; b96e: a5 42       .B
    sta l041b,y                                                       ; b970: 99 1b 04    ...
    bne cb978                                                         ; b973: d0 03       ..
.cb975
    jsr sub_cba65                                                     ; b975: 20 65 ba     e.
.cb978
    ldy l003b                                                         ; b978: a4 3b       .;
    lda l041a,y                                                       ; b97a: b9 1a 04    ...
    bpl cb99c                                                         ; b97d: 10 1d       ..
    cmp #&89                                                          ; b97f: c9 89       ..
    beq cb99c                                                         ; b981: f0 19       ..
    ldx l0054                                                         ; b983: a6 54       .T
    cpx #&0a                                                          ; b985: e0 0a       ..
    bcs cb928                                                         ; b987: b0 9f       ..
    inc l0054                                                         ; b989: e6 54       .T
    lda l0044                                                         ; b98b: a5 44       .D
    sta l0644,x                                                       ; b98d: 9d 44 06    .D.
    lda l041a,y                                                       ; b990: b9 1a 04    ...
    cmp #&80                                                          ; b993: c9 80       ..
    beq cb9a0                                                         ; b995: f0 09       ..
    lda l0043                                                         ; b997: a5 43       .C
    sta l064e,x                                                       ; b999: 9d 4e 06    .N.
.cb99c
    inc l0044                                                         ; b99c: e6 44       .D
    bne cb9b1                                                         ; b99e: d0 11       ..
.cb9a0
    inc l0043                                                         ; b9a0: e6 43       .C
    lda l0043                                                         ; b9a2: a5 43       .C
    cmp #7                                                            ; b9a4: c9 07       ..
    bcs cb9d9                                                         ; b9a6: b0 31       .1
    ora #&80                                                          ; b9a8: 09 80       ..
    sta l064e,x                                                       ; b9aa: 9d 4e 06    .N.
    ldy #0                                                            ; b9ad: a0 00       ..
    sty l0044                                                         ; b9af: 84 44       .D
.cb9b1
    jmp cb928                                                         ; b9b1: 4c 28 b9    L(.

.cb9b4
    jsr cb9f2                                                         ; b9b4: 20 f2 b9     ..
.cb9b7
    jsr sub_cb90b                                                     ; b9b7: 20 0b b9     ..
    beq cb9f0                                                         ; b9ba: f0 34       .4
    ldx #&88                                                          ; b9bc: a2 88       ..
    cmp #&26 ; '&'                                                    ; b9be: c9 26       .&
    beq cb9b4                                                         ; b9c0: f0 f2       ..
    cmp #&25 ; '%'                                                    ; b9c2: c9 25       .%
    bne cb9e7                                                         ; b9c4: d0 21       .!
    ldx #&87                                                          ; b9c6: a2 87       ..
    jsr cb908                                                         ; b9c8: 20 08 b9     ..
    sec                                                               ; b9cb: 38          8
    sbc #&30 ; '0'                                                    ; b9cc: e9 30       .0
    bcc cb9d5                                                         ; b9ce: 90 05       ..
    tax                                                               ; b9d0: aa          .
    cpx l0054                                                         ; b9d1: e4 54       .T
    bcc cb9b4                                                         ; b9d3: 90 df       ..
.cb9d5
    brk                                                               ; b9d5: 00          .

    equb 8                                                            ; b9d6: 08          .              ; error code
    equb 128 + 9                                                      ; b9d7: 89          .              ; "Field " (token 9)
    equb 128 + 12                                                     ; b9d8: 8c          .              ; "number" (token 12)

.cb9d9
    brk                                                               ; b9d9: 00          .

    equb 7                                                            ; b9da: 07          .              ; error code
    equs "Too complex"                                                ; b9db: 54 6f 6f... Too
    equb 0                                                            ; b9e6: 00          .

.cb9e7
    jsr sub_cb9fd                                                     ; b9e7: 20 fd b9     ..
    jsr cba95                                                         ; b9ea: 20 95 ba     ..
    jmp cb9b7                                                         ; b9ed: 4c b7 b9    L..

.cb9f0
    ldx #&8a                                                          ; b9f0: a2 8a       ..
.cb9f2
    txa                                                               ; b9f2: 8a          .
.sub_cb9f3
    ldy l0042                                                         ; b9f3: a4 42       .B
    sta l041a,y                                                       ; b9f5: 99 1a 04    ...
    inc l0042                                                         ; b9f8: e6 42       .B
    beq cb9d9                                                         ; b9fa: f0 dd       ..
    rts                                                               ; b9fc: 60          `

.sub_cb9fd
    ldx #0                                                            ; b9fd: a2 00       ..
    stx l004b                                                         ; b9ff: 86 4b       .K
    cmp #&7c ; '|'                                                    ; ba01: c9 7c       .|
    bne cba13                                                         ; ba03: d0 0e       ..
    jsr sub_cb90b                                                     ; ba05: 20 0b b9     ..
    beq cba3b                                                         ; ba08: f0 31       .1
    cmp #&21 ; '!'                                                    ; ba0a: c9 21       .!
    bne cba1c                                                         ; ba0c: d0 0e       ..
    ror l004b                                                         ; ba0e: 66 4b       fK
    jsr sub_cb90b                                                     ; ba10: 20 0b b9     ..
.cba13
    cmp #&7c ; '|'                                                    ; ba13: c9 7c       .|
    bne cba2c                                                         ; ba15: d0 15       ..
    jsr sub_cb90b                                                     ; ba17: 20 0b b9     ..
    beq cba3b                                                         ; ba1a: f0 1f       ..
.cba1c
    ldx #&7f                                                          ; ba1c: a2 7f       ..
    cmp #&3f ; '?'                                                    ; ba1e: c9 3f       .?
    beq cba54                                                         ; ba20: f0 32       .2
    cmp #&40 ; '@'                                                    ; ba22: c9 40       .@
    bcc cba53                                                         ; ba24: 90 2d       .-
    and #&df                                                          ; ba26: 29 df       ).
    sbc #&40 ; '@'                                                    ; ba28: e9 40       .@
    bcs cba53                                                         ; ba2a: b0 27       .'
.cba2c
    ldx #&0d                                                          ; ba2c: a2 0d       ..
    cmp #&24 ; '$'                                                    ; ba2e: c9 24       .$
    beq cba54                                                         ; ba30: f0 22       ."
    cmp #&5c ; '\'                                                    ; ba32: c9 5c       .\
    bne cba49                                                         ; ba34: d0 13       ..
    jsr sub_cb90b                                                     ; ba36: 20 0b b9     ..
    bne cba53                                                         ; ba39: d0 18       ..
.cba3b
    brk                                                               ; ba3b: 00          .

    equb 6                                                            ; ba3c: 06          .              ; error code
    equs "Synta"                                                      ; ba3d: 53 79 6e... Syn
    equb 128 + ('x')                                                  ; ba42: f8          .              ; "x "
    equs "error"                                                      ; ba43: 65 72 72... err
    equb 0                                                            ; ba48: 00          .

.cba49
    ldy #&0b                                                          ; ba49: a0 0b       ..
.loop_cba4b
    cmp lba59,y                                                       ; ba4b: d9 59 ba    .Y.
    beq cba3b                                                         ; ba4e: f0 eb       ..
    dey                                                               ; ba50: 88          .
    bpl loop_cba4b                                                    ; ba51: 10 f8       ..
.cba53
    tax                                                               ; ba53: aa          .
.cba54
    txa                                                               ; ba54: 8a          .
    ora l004b                                                         ; ba55: 05 4b       .K
    tax                                                               ; ba57: aa          .
    rts                                                               ; ba58: 60          `

.lba59
    equs "~*[]-.@#&%/"                                                ; ba59: 7e 2a 5b... ~*[
    equb &0d                                                          ; ba64: 0d          .

.sub_cba65
    jsr sub_cb902                                                     ; ba65: 20 02 b9     ..
    ldx #&82                                                          ; ba68: a2 82       ..
    cmp #&2e ; '.'                                                    ; ba6a: c9 2e       ..
    beq cba7a                                                         ; ba6c: f0 0c       ..
    ldx #&83                                                          ; ba6e: a2 83       ..
    cmp #&40 ; '@'                                                    ; ba70: c9 40       .@
    beq cba7a                                                         ; ba72: f0 06       ..
    ldx #&84                                                          ; ba74: a2 84       ..
    cmp #&23 ; '#'                                                    ; ba76: c9 23       .#
    bne cba7d                                                         ; ba78: d0 03       ..
.cba7a
    jmp cb908                                                         ; ba7a: 4c 08 b9    L..

.cba7d
    jsr sub_cb9fd                                                     ; ba7d: 20 fd b9     ..
    jsr sub_cb90b                                                     ; ba80: 20 0b b9     ..
    cmp #&2d ; '-'                                                    ; ba83: c9 2d       .-
    bne cba95                                                         ; ba85: d0 0e       ..
    lda #&85                                                          ; ba87: a9 85       ..
    jsr sub_cb9f3                                                     ; ba89: 20 f3 b9     ..
    jsr cb908                                                         ; ba8c: 20 08 b9     ..
    jsr sub_cb9fd                                                     ; ba8f: 20 fd b9     ..
    jmp cb908                                                         ; ba92: 4c 08 b9    L..

.cba95
    txa                                                               ; ba95: 8a          .
    bpl cbaa0                                                         ; ba96: 10 08       ..
    pha                                                               ; ba98: 48          H
    ldx #&89                                                          ; ba99: a2 89       ..
    jsr cb9f2                                                         ; ba9b: 20 f2 b9     ..
    pla                                                               ; ba9e: 68          h
    tax                                                               ; ba9f: aa          .
.cbaa0
    jmp cb9f2                                                         ; baa0: 4c f2 b9    L..

.cbaa3
    jsr c9971                                                         ; baa3: 20 71 99     q.
    ldy #0                                                            ; baa6: a0 00       ..
    sty l0055                                                         ; baa8: 84 55       .U
    lda l0018                                                         ; baaa: a5 18       ..
    sta l001a                                                         ; baac: 85 1a       ..
    cmp l004c                                                         ; baae: c5 4c       .L
    lda l0019                                                         ; bab0: a5 19       ..
    sta l001b                                                         ; bab2: 85 1b       ..
    sbc l004d                                                         ; bab4: e5 4d       .M
    bcc cbaf2                                                         ; bab6: 90 3a       .:
    lda l0052                                                         ; bab8: a5 52       .R
    bne cbad5                                                         ; baba: d0 19       ..
    jsr sub_cbc7b                                                     ; babc: 20 7b bc     {.
    lda l0002                                                         ; babf: a5 02       ..
    sta l0050                                                         ; bac1: 85 50       .P
    lda l0003                                                         ; bac3: a5 03       ..
    sta l0051                                                         ; bac5: 85 51       .Q
    lda l004e                                                         ; bac7: a5 4e       .N
    sta l004c                                                         ; bac9: 85 4c       .L
    lda l004f                                                         ; bacb: a5 4f       .O
    sta l004d                                                         ; bacd: 85 4d       .M
    inc l0052                                                         ; bacf: e6 52       .R
    ldy #0                                                            ; bad1: a0 00       ..
    beq cbaf2                                                         ; bad3: f0 1d       ..
.cbad5
    rts                                                               ; bad5: 60          `

.cbad6
    inc l0055                                                         ; bad6: e6 55       .U
    ldx l0055                                                         ; bad8: a6 55       .U
    iny                                                               ; bada: c8          .
    tya                                                               ; badb: 98          .
    sta l062c,x                                                       ; badc: 9d 2c 06    .,.
    lda l001a                                                         ; badf: a5 1a       ..
    sta l0056,x                                                       ; bae1: 95 56       .V
    lda l001b                                                         ; bae3: a5 1b       ..
    sta l005e,x                                                       ; bae5: 95 5e       .^
    lda #0                                                            ; bae7: a9 00       ..
    sta l0634,x                                                       ; bae9: 9d 34 06    .4.
    sta l063c,x                                                       ; baec: 9d 3c 06    .<.
    jsr sub_cbb56                                                     ; baef: 20 56 bb     V.
.cbaf2
    lda l041a,y                                                       ; baf2: b9 1a 04    ...
    cmp #&8a                                                          ; baf5: c9 8a       ..
    beq cbb3c                                                         ; baf7: f0 43       .C
    cmp #&80                                                          ; baf9: c9 80       ..
    beq cbad6                                                         ; bafb: f0 d9       ..
    jsr sub_cbb56                                                     ; bafd: 20 56 bb     V.
    bne cbb0c                                                         ; bb00: d0 0a       ..
.cbb02
    inc l001a                                                         ; bb02: e6 1a       ..
    bne cbaf2                                                         ; bb04: d0 ec       ..
    inc l001b                                                         ; bb06: e6 1b       ..
    bne cbaf2                                                         ; bb08: d0 e8       ..
.cbb0a
    dec l0055                                                         ; bb0a: c6 55       .U
.cbb0c
    ldx l0055                                                         ; bb0c: a6 55       .U
    bne cbb18                                                         ; bb0e: d0 08       ..
    inc l0018                                                         ; bb10: e6 18       ..
    bne cbaa3                                                         ; bb12: d0 8f       ..
    inc l0019                                                         ; bb14: e6 19       ..
    bne cbaa3                                                         ; bb16: d0 8b       ..
.cbb18
    clc                                                               ; bb18: 18          .
    lda l0056,x                                                       ; bb19: b5 56       .V
    adc l0634,x                                                       ; bb1b: 7d 34 06    }4.
    sta l001a                                                         ; bb1e: 85 1a       ..
    lda l005e,x                                                       ; bb20: b5 5e       .^
    adc l063c,x                                                       ; bb22: 7d 3c 06    }<.
    sta l001b                                                         ; bb25: 85 1b       ..
    lda l062c,x                                                       ; bb27: bd 2c 06    .,.
    tay                                                               ; bb2a: a8          .
    jsr sub_cbb56                                                     ; bb2b: 20 56 bb     V.
    bne cbb0a                                                         ; bb2e: d0 da       ..
    ldx l0055                                                         ; bb30: a6 55       .U
    inc l0634,x                                                       ; bb32: fe 34 06    .4.
    bne cbb02                                                         ; bb35: d0 cb       ..
    inc l063c,x                                                       ; bb37: fe 3c 06    .<.
    bne cbb02                                                         ; bb3a: d0 c6       ..
.cbb3c
    lda l0018                                                         ; bb3c: a5 18       ..
    sta l0056                                                         ; bb3e: 85 56       .V
    lda l0019                                                         ; bb40: a5 19       ..
    sta l005e                                                         ; bb42: 85 5e       .^
    lda l001a                                                         ; bb44: a5 1a       ..
    sbc l0018                                                         ; bb46: e5 18       ..
    sta l0634                                                         ; bb48: 8d 34 06    .4.
    lda l001b                                                         ; bb4b: a5 1b       ..
    sbc l0019                                                         ; bb4d: e5 19       ..
    sta l063c                                                         ; bb4f: 8d 3c 06    .<.
    clc                                                               ; bb52: 18          .
    rts                                                               ; bb53: 60          `

.loop_cbb54
    rol a                                                             ; bb54: 2a          *
    rts                                                               ; bb55: 60          `

.sub_cbb56
    lda l001a                                                         ; bb56: a5 1a       ..
    cmp l004e                                                         ; bb58: c5 4e       .N
    bne cbb62                                                         ; bb5a: d0 06       ..
    lda l001b                                                         ; bb5c: a5 1b       ..
    cmp l004f                                                         ; bb5e: c5 4f       .O
    beq loop_cbb54                                                    ; bb60: f0 f2       ..
.cbb62
    ldx #0                                                            ; bb62: a2 00       ..
    lda l041a,y                                                       ; bb64: b9 1a 04    ...
    cmp #&81                                                          ; bb67: c9 81       ..
    php                                                               ; bb69: 08          .
    bne cbb6d                                                         ; bb6a: d0 01       ..
    iny                                                               ; bb6c: c8          .
.cbb6d
    iny                                                               ; bb6d: c8          .
    lda l0419,y                                                       ; bb6e: b9 19 04    ...
    bmi cbb79                                                         ; bb71: 30 06       0.
.loop_cbb73
    cmp (l001a,x)                                                     ; bb73: c1 1a       ..
    bne cbbd2                                                         ; bb75: d0 5b       .[
    beq cbbd6                                                         ; bb77: f0 5d       .]
.cbb79
    cmp #&82                                                          ; bb79: c9 82       ..
    beq cbbd6                                                         ; bb7b: f0 59       .Y
    cmp #&83                                                          ; bb7d: c9 83       ..
    beq cbba5                                                         ; bb7f: f0 24       .$
    cmp #&84                                                          ; bb81: c9 84       ..
    beq cbbb7                                                         ; bb83: f0 32       .2
    cmp #&85                                                          ; bb85: c9 85       ..
    beq cbb93                                                         ; bb87: f0 0a       ..
    cmp #&89                                                          ; bb89: c9 89       ..
    bne cbbc3                                                         ; bb8b: d0 36       .6
    iny                                                               ; bb8d: c8          .
    lda l0419,y                                                       ; bb8e: b9 19 04    ...
    bcs loop_cbb73                                                    ; bb91: b0 e0       ..
.cbb93
    iny                                                               ; bb93: c8          .
    iny                                                               ; bb94: c8          .
    lda (l001a,x)                                                     ; bb95: a1 1a       ..
    cmp l0418,y                                                       ; bb97: d9 18 04    ...
    bcc cbbd2                                                         ; bb9a: 90 36       .6
    cmp l0419,y                                                       ; bb9c: d9 19 04    ...
    bcc cbbd6                                                         ; bb9f: 90 35       .5
    bne cbbd2                                                         ; bba1: d0 2f       ./
    beq cbbd6                                                         ; bba3: f0 31       .1
.cbba5
    lda (l001a,x)                                                     ; bba5: a1 1a       ..
    cmp #&5f ; '_'                                                    ; bba7: c9 5f       ._
    beq cbbd6                                                         ; bba9: f0 2b       .+
    cmp #&41 ; 'A'                                                    ; bbab: c9 41       .A
    bcc cbbb9                                                         ; bbad: 90 0a       ..
    and #&df                                                          ; bbaf: 29 df       ).
    cmp #&5b ; '['                                                    ; bbb1: c9 5b       .[
    bcc cbbd6                                                         ; bbb3: 90 21       .!
    bcs cbbd2                                                         ; bbb5: b0 1b       ..
.cbbb7
    lda (l001a,x)                                                     ; bbb7: a1 1a       ..
.cbbb9
    cmp #&30 ; '0'                                                    ; bbb9: c9 30       .0
    bcc cbbd2                                                         ; bbbb: 90 15       ..
    cmp #&3a ; ':'                                                    ; bbbd: c9 3a       .:
    bcs cbbd2                                                         ; bbbf: b0 11       ..
    bcc cbbd6                                                         ; bbc1: 90 13       ..
.cbbc3
    lda l041a,y                                                       ; bbc3: b9 1a 04    ...
    sta l0045                                                         ; bbc6: 85 45       .E
    iny                                                               ; bbc8: c8          .
.loop_cbbc9
    jsr sub_cbb56                                                     ; bbc9: 20 56 bb     V.
    beq cbbd4                                                         ; bbcc: f0 06       ..
    cpy l0045                                                         ; bbce: c4 45       .E
    bne loop_cbbc9                                                    ; bbd0: d0 f7       ..
.cbbd2
    plp                                                               ; bbd2: 28          (
    rts                                                               ; bbd3: 60          `

.cbbd4
    ldy l0045                                                         ; bbd4: a4 45       .E
.cbbd6
    pla                                                               ; bbd6: 68          h
    and #2                                                            ; bbd7: 29 02       ).
.cbbd9
    rts                                                               ; bbd9: 60          `

.loop_cbbda
    jmp c9816                                                         ; bbda: 4c 16 98    L..

.sub_cbbdd
    jsr sub_cbc7b                                                     ; bbdd: 20 7b bc     {.
    lda l001a                                                         ; bbe0: a5 1a       ..
    sta l0000                                                         ; bbe2: 85 00       ..
    lda l001b                                                         ; bbe4: a5 1b       ..
    sta l0001                                                         ; bbe6: 85 01       ..
    lda l003c                                                         ; bbe8: a5 3c       .<
    sta l0017                                                         ; bbea: 85 17       ..
.cbbec
    lda l0002                                                         ; bbec: a5 02       ..
    cmp l0018                                                         ; bbee: c5 18       ..
    lda l0003                                                         ; bbf0: a5 03       ..
    sbc l0019                                                         ; bbf2: e5 19       ..
    bcs loop_cbbda                                                    ; bbf4: b0 e4       ..
    ldy l0017                                                         ; bbf6: a4 17       ..
    inc l0017                                                         ; bbf8: e6 17       ..
    lda l041a,y                                                       ; bbfa: b9 1a 04    ...
    bpl cbc43                                                         ; bbfd: 10 44       .D
    cmp #&8a                                                          ; bbff: c9 8a       ..
    beq cbbd9                                                         ; bc01: f0 d6       ..
    cmp #&87                                                          ; bc03: c9 87       ..
    beq cbc16                                                         ; bc05: f0 0f       ..
    cmp #&89                                                          ; bc07: c9 89       ..
    bne cbc12                                                         ; bc09: d0 07       ..
    inc l0017                                                         ; bc0b: e6 17       ..
    lda l041b,y                                                       ; bc0d: b9 1b 04    ...
    bcs cbc43                                                         ; bc10: b0 31       .1
.cbc12
    ldy #0                                                            ; bc12: a0 00       ..
    beq cbc52                                                         ; bc14: f0 3c       .<
.cbc16
    inc l0017                                                         ; bc16: e6 17       ..
    lda l041b,y                                                       ; bc18: b9 1b 04    ...
    tax                                                               ; bc1b: aa          .
    lda l064e,x                                                       ; bc1c: bd 4e 06    .N.
    bmi cbc4f                                                         ; bc1f: 30 2e       0.
    tay                                                               ; bc21: a8          .
    beq cbc35                                                         ; bc22: f0 11       ..
    clc                                                               ; bc24: 18          .
    lda l0056,y                                                       ; bc25: b9 56 00    .V.
    adc l0634,y                                                       ; bc28: 79 34 06    y4.
    sta l000c                                                         ; bc2b: 85 0c       ..
    lda l005e,y                                                       ; bc2d: b9 5e 00    .^.
    adc l063c,y                                                       ; bc30: 79 3c 06    y<.
    bne cbc3b                                                         ; bc33: d0 06       ..
.cbc35
    lda l0018                                                         ; bc35: a5 18       ..
    sta l000c                                                         ; bc37: 85 0c       ..
    lda l0019                                                         ; bc39: a5 19       ..
.cbc3b
    sta l000d                                                         ; bc3b: 85 0d       ..
    lda l0644,x                                                       ; bc3d: bd 44 06    .D.
    tay                                                               ; bc40: a8          .
    lda (l000c),y                                                     ; bc41: b1 0c       ..
.cbc43
    ldx #0                                                            ; bc43: a2 00       ..
    sta (l0002,x)                                                     ; bc45: 81 02       ..
    inc l0002                                                         ; bc47: e6 02       ..
    bne cbbec                                                         ; bc49: d0 a1       ..
    inc l0003                                                         ; bc4b: e6 03       ..
    bne cbbec                                                         ; bc4d: d0 9d       ..
.cbc4f
    and #&7f                                                          ; bc4f: 29 7f       ).
    tay                                                               ; bc51: a8          .
.cbc52
    lda l0056,y                                                       ; bc52: b9 56 00    .V.
    sta l000a                                                         ; bc55: 85 0a       ..
    lda l005e,y                                                       ; bc57: b9 5e 00    .^.
    sta l000b                                                         ; bc5a: 85 0b       ..
    lda l0002                                                         ; bc5c: a5 02       ..
    sta l000e                                                         ; bc5e: 85 0e       ..
    lda l0003                                                         ; bc60: a5 03       ..
    sta l000f                                                         ; bc62: 85 0f       ..
    clc                                                               ; bc64: 18          .
    lda l0634,y                                                       ; bc65: b9 34 06    .4.
    tax                                                               ; bc68: aa          .
    adc l0002                                                         ; bc69: 65 02       e.
    sta l0002                                                         ; bc6b: 85 02       ..
    lda l063c,y                                                       ; bc6d: b9 3c 06    .<.
    tay                                                               ; bc70: a8          .
    adc l0003                                                         ; bc71: 65 03       e.
    sta l0003                                                         ; bc73: 85 03       ..
    jsr some_sort_of_bulk_copy_from_l000a_to_l000e_of_yx_ish_bytes    ; bc75: 20 d5 89     ..
    jmp cbbec                                                         ; bc78: 4c ec bb    L..

.sub_cbc7b
    ldx l0018                                                         ; bc7b: a6 18       ..
    ldy l0019                                                         ; bc7d: a4 19       ..
    jmp bulk_copy_from_l0000_to_l0002                                 ; bc7f: 4c 5c b4    L\.

.something_04_handler
    jsr extra_fancy_print_nop_terminated_inlne                        ; bc82: 20 70 b2     p.
    equs "Fin"                                                        ; bc85: 46 69 6e    Fin
    equb 128 + ('d')                                                  ; bc88: e4          .              ; "d "
    equs "an"                                                         ; bc89: 61 6e       an
    equb 128 + ('d')                                                  ; bc8b: e4          .              ; "d "
    equs "r"                                                          ; bc8c: 72          r
    equb 128 + 16                                                     ; bc8d: 90          .              ; "eplace" (token 16)
    equb 128 + (':')                                                  ; bc8e: ba          .              ; ": "

    nop                                                               ; bc8f: ea          .
    jsr sub_cb296                                                     ; bc90: 20 96 b2     ..
    jsr sub_cb917                                                     ; bc93: 20 17 b9     ..
    jsr sub_cb48a                                                     ; bc96: 20 8a b4     ..
    lda l0029                                                         ; bc99: a5 29       .)
    sta l004c                                                         ; bc9b: 85 4c       .L
    sta l004e                                                         ; bc9d: 85 4e       .N
    lda l002a                                                         ; bc9f: a5 2a       .*
    sta l004d                                                         ; bca1: 85 4d       .M
    sta l004f                                                         ; bca3: 85 4f       .O
    sta l0052                                                         ; bca5: 85 52       .R
.cbca7
    ldx l0000                                                         ; bca7: a6 00       ..
    ldy l0001                                                         ; bca9: a4 01       ..
.cbcab
    stx l0018                                                         ; bcab: 86 18       ..
    sty l0019                                                         ; bcad: 84 19       ..
    jsr cbaa3                                                         ; bcaf: 20 a3 ba     ..
    bcs cbd1d                                                         ; bcb2: b0 69       .i
    jsr sub_cbc7b                                                     ; bcb4: 20 7b bc     {.
    lda l002f                                                         ; bcb7: a5 2f       ./
    sta l0025                                                         ; bcb9: 85 25       .%
    jsr cb71f                                                         ; bcbb: 20 1f b7     ..
    jsr sub_cb4c2                                                     ; bcbe: 20 c2 b4     ..
    lda #4                                                            ; bcc1: a9 04       ..
    sta l0031                                                         ; bcc3: 85 31       .1
    jsr extra_fancy_print_nop_terminated_inlne                        ; bcc5: 20 70 b2     p.
    equs "R("                                                         ; bcc8: 52 28       R(
    equb 128 + 16                                                     ; bcca: 90          .              ; "eplace" (token 16)
    equs ")"                                                          ; bccb: 29          )
    equb 128 + (',')                                                  ; bccc: ac          .              ; ", "
    equs "C(ontinue"                                                  ; bccd: 43 28 6f... C(o
    equb 128 + (')')                                                  ; bcd6: a9          .              ; ") "
    equs "o"                                                          ; bcd7: 6f          o
    equb 128 + ('r')                                                  ; bcd8: f2          .              ; "r "
    equb 128 + 14                                                     ; bcd9: 8e          .              ; "Escape" (token 14)

    nop                                                               ; bcda: ea          .
    jsr cb2ef                                                         ; bcdb: 20 ef b2     ..
    jsr sub_cb1e5                                                     ; bcde: 20 e5 b1     ..
.loop_cbce1
    jsr sub_cb207                                                     ; bce1: 20 07 b2     ..
    ora #&20 ; ' '                                                    ; bce4: 09 20       .
    cmp #&63 ; 'c'                                                    ; bce6: c9 63       .c
    bne cbcf4                                                         ; bce8: d0 0a       ..
    ldx l0018                                                         ; bcea: a6 18       ..
    ldy l0019                                                         ; bcec: a4 19       ..
    inx                                                               ; bcee: e8          .
    bne cbcab                                                         ; bcef: d0 ba       ..
    iny                                                               ; bcf1: c8          .
    bne cbcab                                                         ; bcf2: d0 b7       ..
.cbcf4
    cmp #&72 ; 'r'                                                    ; bcf4: c9 72       .r
    bne loop_cbce1                                                    ; bcf6: d0 e9       ..
    jsr sub_cbdbf                                                     ; bcf8: 20 bf bd     ..
    lda l004a                                                         ; bcfb: a5 4a       .J
    bne cbd17                                                         ; bcfd: d0 18       ..
    jsr extra_fancy_print_nop_terminated_inlne                        ; bcff: 20 70 b2     p.
    equs "R"                                                          ; bd02: 52          R
    equb 128 + 16                                                     ; bd03: 90          .              ; "eplace" (token 16)
    equs " by"                                                        ; bd04: 20 62 79     by
    equb 128 + (':')                                                  ; bd07: ba          .              ; ": "

    nop                                                               ; bd08: ea          .
    jsr sub_cb296                                                     ; bd09: 20 96 b2     ..
    ldy #0                                                            ; bd0c: a0 00       ..
    sta l0041                                                         ; bd0e: 85 41       .A
    ldy l003c                                                         ; bd10: a4 3c       .<
    sty l0042                                                         ; bd12: 84 42       .B
    jsr cb9b7                                                         ; bd14: 20 b7 b9     ..
.cbd17
    jsr sub_cbbdd                                                     ; bd17: 20 dd bb     ..
    jmp cbca7                                                         ; bd1a: 4c a7 bc    L..

.cbd1d
    jmp cb8d5                                                         ; bd1d: 4c d5 b8    L..

.something_05_handler
    jsr sub_cbdc4                                                     ; bd20: 20 c4 bd     ..
    jsr extra_fancy_print_nop_terminated_inlne                        ; bd23: 20 70 b2     p.
    equs "Globa"                                                      ; bd26: 47 6c 6f... Glo
    equb 128 + ('l')                                                  ; bd2b: ec          .              ; "l "
    equs "r"                                                          ; bd2c: 72          r
    equb 128 + 16                                                     ; bd2d: 90          .              ; "eplace" (token 16)
    equb 128 + (':')                                                  ; bd2e: ba          .              ; ": "

    nop                                                               ; bd2f: ea          .
    jsr sub_cb296                                                     ; bd30: 20 96 b2     ..
    jsr sub_cb917                                                     ; bd33: 20 17 b9     ..
    jsr sub_cbe3c                                                     ; bd36: 20 3c be     <.
    lda #0                                                            ; bd39: a9 00       ..
    sta l0052                                                         ; bd3b: 85 52       .R
    sta l0046                                                         ; bd3d: 85 46       .F
    sta l0047                                                         ; bd3f: 85 47       .G
.cbd41
    ldx l0000                                                         ; bd41: a6 00       ..
    ldy l0001                                                         ; bd43: a4 01       ..
.loop_cbd45
    stx l0018                                                         ; bd45: 86 18       ..
    sty l0019                                                         ; bd47: 84 19       ..
    jsr cbaa3                                                         ; bd49: 20 a3 ba     ..
    bcs cbd64                                                         ; bd4c: b0 16       ..
    inc l0046                                                         ; bd4e: e6 46       .F
    bne cbd54                                                         ; bd50: d0 02       ..
    inc l0047                                                         ; bd52: e6 47       .G
.cbd54
    lda l004a                                                         ; bd54: a5 4a       .J
    bne cbd5e                                                         ; bd56: d0 06       ..
    ldx l001a                                                         ; bd58: a6 1a       ..
    ldy l001b                                                         ; bd5a: a4 1b       ..
    bne loop_cbd45                                                    ; bd5c: d0 e7       ..
.cbd5e
    jsr sub_cbbdd                                                     ; bd5e: 20 dd bb     ..
    jmp cbd41                                                         ; bd61: 4c 41 bd    LA.

.cbd64
    ldx l0050                                                         ; bd64: a6 50       .P
    ldy l0051                                                         ; bd66: a4 51       .Q
    jsr cb404                                                         ; bd68: 20 04 b4     ..
    jsr cb7cc                                                         ; bd6b: 20 cc b7     ..
    jsr sub_cb4c2                                                     ; bd6e: 20 c2 b4     ..
    ldx #&15                                                          ; bd71: a2 15       ..
    jsr sub_cb2f7                                                     ; bd73: 20 f7 b2     ..
    ldx l0046                                                         ; bd76: a6 46       .F
    ldy l0047                                                         ; bd78: a4 47       .G
    jsr print_yx_as_decimal                                           ; bd7a: 20 0c b3     ..
    jsr sub_cb27d                                                     ; bd7d: 20 7d b2     }.
    jsr lea8f                                                         ; bd80: 20 8f ea     ..
    jmp cb708                                                         ; bd83: 4c 08 b7    L..

.something_06_handler
    jsr sub_cb487                                                     ; bd86: 20 87 b4     ..
    ldx l0039                                                         ; bd89: a6 39       .9
    beq cbda0                                                         ; bd8b: f0 13       ..
    cpx #1                                                            ; bd8d: e0 01       ..
    bne cbdb4                                                         ; bd8f: d0 23       .#
    lda l001c                                                         ; bd91: a5 1c       ..
    sta l001d                                                         ; bd93: 85 1d       ..
    cmp l0000                                                         ; bd95: c5 00       ..
    lda l001e                                                         ; bd97: a5 1e       ..
    sta l001f                                                         ; bd99: 85 1f       ..
    sbc l0001                                                         ; bd9b: e5 01       ..
    bcc cbda0                                                         ; bd9d: 90 01       ..
    dex                                                               ; bd9f: ca          .
.cbda0
    lda l0000                                                         ; bda0: a5 00       ..
    sta l001c,x                                                       ; bda2: 95 1c       ..
    lda l0001                                                         ; bda4: a5 01       ..
    sta l001e,x                                                       ; bda6: 95 1e       ..
    jsr cb71f                                                         ; bda8: 20 1f b7     ..
    inc l0039                                                         ; bdab: e6 39       .9
    lda #1                                                            ; bdad: a9 01       ..
    sta l0031                                                         ; bdaf: 85 31       .1
    jmp cb229                                                         ; bdb1: 4c 29 b2    L).

.cbdb4
    brk                                                               ; bdb4: 00          .

    equb 9                                                            ; bdb5: 09          .              ; error code
    equb 128 + 2                                                      ; bdb6: 82          .              ; "Bad " (token 2)
    equs "marking"                                                    ; bdb7: 6d 61 72... mar
    equb 0                                                            ; bdbe: 00          .

.sub_cbdbf
    lda l0039                                                         ; bdbf: a5 39       .9
    bne cbdb4                                                         ; bdc1: d0 f1       ..
    rts                                                               ; bdc3: 60          `

.sub_cbdc4
    lda l0039                                                         ; bdc4: a5 39       .9
    cmp #2                                                            ; bdc6: c9 02       ..
    beq cbdb4                                                         ; bdc8: f0 ea       ..
    rts                                                               ; bdca: 60          `

.something_18_handler
    lda l0039                                                         ; bdcb: a5 39       .9
    cmp #1                                                            ; bdcd: c9 01       ..
    bne cbdb4                                                         ; bdcf: d0 e3       ..
    jsr sub_cbe3c                                                     ; bdd1: 20 3c be     <.
    stx l0000                                                         ; bdd4: 86 00       ..
    sty l0001                                                         ; bdd6: 84 01       ..
    jmp cb71f                                                         ; bdd8: 4c 1f b7    L..

.sub_cbddb
    lda l0039                                                         ; bddb: a5 39       .9
    cmp #2                                                            ; bddd: c9 02       ..
    bne cbdb4                                                         ; bddf: d0 d3       ..
    jsr sub_cb487                                                     ; bde1: 20 87 b4     ..
    jsr sub_cbe06                                                     ; bde4: 20 06 be     ..
    lda l0053                                                         ; bde7: a5 53       .S
    cmp #1                                                            ; bde9: c9 01       ..
    bne something_16_handler                                          ; bdeb: d0 12       ..
    lda l0000                                                         ; bded: a5 00       ..
    cmp l0021                                                         ; bdef: c5 21       .!
    lda l0001                                                         ; bdf1: a5 01       ..
    sbc l0023                                                         ; bdf3: e5 23       .#
    bcc cbdb4                                                         ; bdf5: 90 bd       ..
    lda l0002                                                         ; bdf7: a5 02       ..
    sta l0021                                                         ; bdf9: 85 21       .!
    lda l0003                                                         ; bdfb: a5 03       ..
    sta l0023                                                         ; bdfd: 85 23       .#
.something_16_handler
    lda #0                                                            ; bdff: a9 00       ..
    sta l0039                                                         ; be01: 85 39       .9
    jmp cb229                                                         ; be03: 4c 29 b2    L).

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

.sub_cbe3c
    lda l0039                                                         ; be3c: a5 39       .9
    beq cbe46                                                         ; be3e: f0 06       ..
    jsr sub_cb29d                                                     ; be40: 20 9d b2     ..
    jsr sub_cb2f5                                                     ; be43: 20 f5 b2     ..
.cbe46
    jsr sub_cb48a                                                     ; be46: 20 8a b4     ..
    lda l0000                                                         ; be49: a5 00       ..
    sta l004c                                                         ; be4b: 85 4c       .L
    lda l0001                                                         ; be4d: a5 01       ..
    sta l004d                                                         ; be4f: 85 4d       .M
    lda l0039                                                         ; be51: a5 39       .9
    beq cbe72                                                         ; be53: f0 1d       ..
    jsr sub_cbe06                                                     ; be55: 20 06 be     ..
    jsr something_16_handler                                          ; be58: 20 ff bd     ..
    ldx l0020                                                         ; be5b: a6 20       .
    ldy l0022                                                         ; be5d: a4 22       ."
    lda l0053                                                         ; be5f: a5 53       .S
    beq cbe79                                                         ; be61: f0 16       ..
    lda l0001                                                         ; be63: a5 01       ..
    pha                                                               ; be65: 48          H
    lda l0000                                                         ; be66: a5 00       ..
    pha                                                               ; be68: 48          H
    jsr cb404                                                         ; be69: 20 04 b4     ..
    pla                                                               ; be6c: 68          h
    tax                                                               ; be6d: aa          .
    pla                                                               ; be6e: 68          h
    tay                                                               ; be6f: a8          .
    bne cbe79                                                         ; be70: d0 07       ..
.cbe72
    jsr sub_cb711                                                     ; be72: 20 11 b7     ..
    ldx l0029                                                         ; be75: a6 29       .)
    ldy l002a                                                         ; be77: a4 2a       .*
.cbe79
    stx l004e                                                         ; be79: 86 4e       .N
    sty l004f                                                         ; be7b: 84 4f       .O
    rts                                                               ; be7d: 60          `

.something_07_handler
    jsr sub_cbddb                                                     ; be7e: 20 db bd     ..
    sec                                                               ; be81: 38          8
    lda l0021                                                         ; be82: a5 21       .!
    sbc l0020                                                         ; be84: e5 20       .
    tax                                                               ; be86: aa          .
    lda l0023                                                         ; be87: a5 23       .#
    sbc l0022                                                         ; be89: e5 22       ."
    tay                                                               ; be8b: a8          .
    jsr sub_cb1c8                                                     ; be8c: 20 c8 b1     ..
    lda l0020                                                         ; be8f: a5 20       .
    sta l000a                                                         ; be91: 85 0a       ..
    lda l0022                                                         ; be93: a5 22       ."
    sta l000b                                                         ; be95: 85 0b       ..
    stx l0000                                                         ; be97: 86 00       ..
    stx l000e                                                         ; be99: 86 0e       ..
    sty l0001                                                         ; be9b: 84 01       ..
    sty l000f                                                         ; be9d: 84 0f       ..
    jsr sub_cb42f                                                     ; be9f: 20 2f b4     /.
.cbea2
    jmp cb71f                                                         ; bea2: 4c 1f b7    L..

.something_17_handler
    jsr sub_cbddb                                                     ; bea5: 20 db bd     ..
    ldx l0020                                                         ; bea8: a6 20       .
    ldy l0022                                                         ; beaa: a4 22       ."
    lda l0053                                                         ; beac: a5 53       .S
    beq cbec2                                                         ; beae: f0 12       ..
    stx l000a                                                         ; beb0: 86 0a       ..
    sty l000b                                                         ; beb2: 84 0b       ..
    lda l0021                                                         ; beb4: a5 21       .!
    sta l000e                                                         ; beb6: 85 0e       ..
    lda l0023                                                         ; beb8: a5 23       .#
    sta l000f                                                         ; beba: 85 0f       ..
    ldx l0002                                                         ; bebc: a6 02       ..
    ldy l0003                                                         ; bebe: a4 03       ..
    bne cbed2                                                         ; bec0: d0 10       ..
.cbec2
    stx l000e                                                         ; bec2: 86 0e       ..
    sty l000f                                                         ; bec4: 84 0f       ..
    lda l0000                                                         ; bec6: a5 00       ..
    sta l000a                                                         ; bec8: 85 0a       ..
    lda l0001                                                         ; beca: a5 01       ..
    sta l000b                                                         ; becc: 85 0b       ..
    ldx l0021                                                         ; bece: a6 21       .!
    ldy l0023                                                         ; bed0: a4 23       .#
.cbed2
    stx l004e                                                         ; bed2: 86 4e       .N
    sty l004f                                                         ; bed4: 84 4f       .O
.cbed6
    sec                                                               ; bed6: 38          8
    lda l000e                                                         ; bed7: a5 0e       ..
    sbc l000a                                                         ; bed9: e5 0a       ..
    sta l0012                                                         ; bedb: 85 12       ..
    lda l000f                                                         ; bedd: a5 0f       ..
    sbc l000b                                                         ; bedf: e5 0b       ..
    sta l0013                                                         ; bee1: 85 13       ..
    lda l004e                                                         ; bee3: a5 4e       .N
    sbc l000e                                                         ; bee5: e5 0e       ..
    tax                                                               ; bee7: aa          .
    lda l004f                                                         ; bee8: a5 4f       .O
    sbc l000f                                                         ; beea: e5 0f       ..
    tay                                                               ; beec: a8          .
    cpx l0012                                                         ; beed: e4 12       ..
    sbc l0013                                                         ; beef: e5 13       ..
    bcs cbef7                                                         ; bef1: b0 04       ..
    stx l0012                                                         ; bef3: 86 12       ..
    sty l0013                                                         ; bef5: 84 13       ..
.cbef7
    lda l0012                                                         ; bef7: a5 12       ..
    ora l0013                                                         ; bef9: 05 13       ..
    beq cbea2                                                         ; befb: f0 a5       ..
    bcs cbf14                                                         ; befd: b0 15       ..
    ldx l000e                                                         ; beff: a6 0e       ..
    ldy l000f                                                         ; bf01: a4 0f       ..
    jsr sub_cbf28                                                     ; bf03: 20 28 bf     (.
    clc                                                               ; bf06: 18          .
    tya                                                               ; bf07: 98          .
    adc l000c                                                         ; bf08: 65 0c       e.
    sta l000a                                                         ; bf0a: 85 0a       ..
    lda #0                                                            ; bf0c: a9 00       ..
    adc l000d                                                         ; bf0e: 65 0d       e.
    sta l000b                                                         ; bf10: 85 0b       ..
    bcc cbed6                                                         ; bf12: 90 c2       ..
.cbf14
    sec                                                               ; bf14: 38          8
    lda l004e                                                         ; bf15: a5 4e       .N
    sbc l0012                                                         ; bf17: e5 12       ..
    sta l004e                                                         ; bf19: 85 4e       .N
    tax                                                               ; bf1b: aa          .
    lda l004f                                                         ; bf1c: a5 4f       .O
    sbc l0013                                                         ; bf1e: e5 13       ..
    sta l004f                                                         ; bf20: 85 4f       .O
    tay                                                               ; bf22: a8          .
    jsr sub_cbf28                                                     ; bf23: 20 28 bf     (.
    beq cbed6                                                         ; bf26: f0 ae       ..
.sub_cbf28
    lda l000a                                                         ; bf28: a5 0a       ..
    sta l000c                                                         ; bf2a: 85 0c       ..
    lda l000b                                                         ; bf2c: a5 0b       ..
    sta l000d                                                         ; bf2e: 85 0d       ..
    stx l0008                                                         ; bf30: 86 08       ..
    sty l0009                                                         ; bf32: 84 09       ..
    inc l0013                                                         ; bf34: e6 13       ..
    ldy #0                                                            ; bf36: a0 00       ..
    beq cbf4b                                                         ; bf38: f0 11       ..
.cbf3a
    lda (l000c),y                                                     ; bf3a: b1 0c       ..
    tax                                                               ; bf3c: aa          .
    lda (l0008),y                                                     ; bf3d: b1 08       ..
    sta (l000c),y                                                     ; bf3f: 91 0c       ..
    txa                                                               ; bf41: 8a          .
    sta (l0008),y                                                     ; bf42: 91 08       ..
    iny                                                               ; bf44: c8          .
    bne cbf4b                                                         ; bf45: d0 04       ..
    inc l000d                                                         ; bf47: e6 0d       ..
    inc l0009                                                         ; bf49: e6 09       ..
.cbf4b
    cpy l0012                                                         ; bf4b: c4 12       ..
    bne cbf3a                                                         ; bf4d: d0 eb       ..
    dec l0013                                                         ; bf4f: c6 13       ..
    bne cbf3a                                                         ; bf51: d0 e7       ..
    rts                                                               ; bf53: 60          `

    equb &7a, &12, &38, &a5, &0b, &88, &79, &0e, &9f, &f3, &7c, &2a   ; bf54: 7a 12 38... z.8
    equb &ac, &3f, &b5, &86, &34,   1, &a2, &7a, &7f, &63, &8e, &37   ; bf60: ac 3f b5... .?.
    equb &ec, &82, &3f, &ff, &ff, &ca, &7f, &ff, &ff, &ff, &ff, &85   ; bf6c: ec 82 3f... ..?
    equb &a3, &59, &e8, &67, &80, &1c, &9d,   7, &36, &80, &57, &bb   ; bf78: a3 59 e8... .Y.
    equb &78, &df, &80, &ca, &9a, &0e, &83, &84, &8c, &bb, &ca, &6e   ; bf84: 78 df 80... x..
    equb &81, &95, &96,   6, &de, &81, &0a, &c7, &6c, &52, &7f, &7d   ; bf90: 81 95 96... ...
    equb &ad, &90, &a1, &82, &fb                                      ; bf9c: ad 90 a1... ...
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
;     c8127
;     c8165
;     c816b
;     c8186
;     c819d
;     c81a7
;     c8265
;     c82a4
;     c831a
;     c832c
;     c8337
;     c8341
;     c8364
;     c836c
;     c838d
;     c839b
;     c839e
;     c839f
;     c83b4
;     c83b9
;     c83cd
;     c83df
;     c8412
;     c8491
;     c8497
;     c84a4
;     c84bb
;     c84c4
;     c84e3
;     c84fc
;     c8514
;     c8535
;     c8569
;     c8574
;     c8576
;     c8581
;     c85b5
;     c85e8
;     c8633
;     c8639
;     c8655
;     c867a
;     c8683
;     c8698
;     c869d
;     c873d
;     c8745
;     c874b
;     c875c
;     c8770
;     c8821
;     c8830
;     c886b
;     c8877
;     c8887
;     c8889
;     c888d
;     c889b
;     c88dc
;     c8916
;     c8966
;     c89cf
;     c89f2
;     c8a72
;     c8a96
;     c8aaf
;     c8aba
;     c8b14
;     c8b69
;     c8b81
;     c8bb3
;     c8bc5
;     c8bfe
;     c8c06
;     c8c34
;     c8c3e
;     c8c55
;     c8c8b
;     c8cb0
;     c8cbb
;     c8cc6
;     c8cd7
;     c8ce1
;     c8d02
;     c8d13
;     c8d60
;     c8d63
;     c8dd8
;     c8dfa
;     c8e35
;     c8e3d
;     c8e41
;     c8e43
;     c8e46
;     c8e4a
;     c8eb5
;     c8ec9
;     c8edf
;     c8eee
;     c8ef6
;     c8f10
;     c8f2c
;     c8f45
;     c8f93
;     c8fb1
;     c8fb9
;     c8fd4
;     c8fd9
;     c8fe1
;     c8fe5
;     c8ffc
;     c9001
;     c9009
;     c900b
;     c902e
;     c9047
;     c905a
;     c9084
;     c9095
;     c90ae
;     c90b2
;     c90c5
;     c90d2
;     c90d7
;     c90e5
;     c90f2
;     c90fd
;     c911d
;     c916a
;     c916b
;     c91c0
;     c91c6
;     c91dc
;     c91f0
;     c91f8
;     c921b
;     c923a
;     c9263
;     c9267
;     c9268
;     c926e
;     c927a
;     c92a7
;     c92b7
;     c92eb
;     c9308
;     c931b
;     c931e
;     c933d
;     c9340
;     c9356
;     c9391
;     c9397
;     c939e
;     c93af
;     c93ce
;     c93e8
;     c944f
;     c9460
;     c9468
;     c9490
;     c94c0
;     c94c6
;     c94cc
;     c94e6
;     c9510
;     c952f
;     c9560
;     c9564
;     c9614
;     c96a1
;     c96ae
;     c96bf
;     c96cc
;     c9709
;     c971c
;     c971e
;     c9735
;     c973d
;     c9761
;     c97a7
;     c97e5
;     c9801
;     c9816
;     c9820
;     c983c
;     c9887
;     c98d7
;     c990b
;     c9931
;     c994f
;     c9955
;     c9961
;     c996b
;     c996e
;     c9971
;     c9988
;     c99c8
;     c99d1
;     c99fe
;     c9a07
;     c9a27
;     c9a34
;     c9a54
;     c9a72
;     c9a8a
;     c9a8c
;     c9aaa
;     c9b34
;     c9b42
;     c9b47
;     c9b75
;     c9ba2
;     c9bb2
;     c9bb3
;     c9bca
;     c9bf5
;     c9bfa
;     c9c0e
;     c9c1c
;     c9c25
;     c9c30
;     c9c35
;     c9c3c
;     c9c48
;     c9c9d
;     c9ca3
;     c9cc4
;     c9ce0
;     c9d1f
;     c9d21
;     c9d8f
;     c9de5
;     c9df4
;     c9df7
;     c9e13
;     c9e1b
;     c9e34
;     c9e48
;     c9e4d
;     c9e50
;     c9e58
;     c9e5d
;     c9e6c
;     c9e74
;     c9e87
;     c9e8a
;     c9ea8
;     c9eb8
;     c9ebe
;     c9ed9
;     c9ee0
;     c9ee8
;     c9ef2
;     c9efb
;     c9f32
;     c9f39
;     c9f56
;     c9f5b
;     c9f62
;     c9f70
;     c9f75
;     c9f81
;     c9f84
;     c9f89
;     c9fa3
;     c9fad
;     c9fb9
;     c9fda
;     c9fe5
;     c9ff1
;     c9fff
;     ca00f
;     ca019
;     ca029
;     ca037
;     ca03c
;     ca04e
;     ca060
;     ca06b
;     ca08a
;     ca0e3
;     ca0ff
;     ca13d
;     ca152
;     ca176
;     ca189
;     ca18d
;     ca1b4
;     ca1dc
;     ca1e0
;     ca211
;     ca214
;     ca226
;     ca232
;     ca29d
;     ca2a0
;     ca2cc
;     ca2d9
;     ca2df
;     ca32e
;     ca36a
;     ca391
;     ca3c3
;     ca3e0
;     ca3e1
;     ca3e7
;     ca3f9
;     ca422
;     ca428
;     ca438
;     ca45b
;     ca45f
;     ca473
;     ca483
;     ca489
;     ca49f
;     ca4a5
;     ca4a6
;     ca4ca
;     ca4cc
;     ca4cf
;     ca4d2
;     ca4e8
;     ca799
;     ca7a5
;     ca7b7
;     ca7d9
;     ca7dc
;     ca820
;     ca828
;     ca85d
;     ca89a
;     ca8d1
;     ca8e6
;     ca8f3
;     ca908
;     ca916
;     ca92f
;     ca936
;     ca94d
;     ca95d
;     ca9a4
;     ca9a5
;     caa0a
;     caa0d
;     caa74
;     caa77
;     caa8f
;     caa95
;     caaae
;     caab5
;     caad9
;     caaea
;     caaf9
;     cab08
;     cab35
;     cab38
;     cab53
;     cab65
;     cab78
;     cab81
;     cab84
;     cab9a
;     cab9c
;     cabb3
;     cabd2
;     cabf7
;     cac36
;     cac42
;     cac52
;     cac97
;     cac98
;     caca1
;     caca6
;     cacd2
;     cacd4
;     cad4e
;     cad75
;     cad88
;     cad89
;     cadaa
;     cadf2
;     cadfb
;     cadfd
;     cae15
;     cae1f
;     cae2a
;     cae30
;     cae56
;     cae81
;     cae84
;     cae87
;     cae92
;     caf00
;     caf16
;     caf36
;     caf39
;     caf48
;     caf7a
;     caf8d
;     cafbe
;     cafc9
;     caff6
;     cb016
;     cb01b
;     cb02e
;     cb03d
;     cb046
;     cb04b
;     cb053
;     cb05c
;     cb077
;     cb080
;     cb08f
;     cb096
;     cb09e
;     cb0ab
;     cb0c3
;     cb0c9
;     cb0cb
;     cb171
;     cb1c6
;     cb1e2
;     cb1ef
;     cb210
;     cb225
;     cb229
;     cb241
;     cb247
;     cb2d0
;     cb2ef
;     cb2ff
;     cb314
;     cb32e
;     cb336
;     cb33f
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
;     cb458
;     cb493
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
;     cb636
;     cb660
;     cb671
;     cb67b
;     cb67e
;     cb680
;     cb68b
;     cb69c
;     cb6b1
;     cb6cd
;     cb6dc
;     cb6f9
;     cb708
;     cb71f
;     cb752
;     cb766
;     cb7cc
;     cb828
;     cb842
;     cb855
;     cb86c
;     cb89f
;     cb8a5
;     cb8b7
;     cb8bf
;     cb8ce
;     cb8d5
;     cb908
;     cb916
;     cb928
;     cb934
;     cb942
;     cb94f
;     cb975
;     cb978
;     cb99c
;     cb9a0
;     cb9b1
;     cb9b4
;     cb9b7
;     cb9d5
;     cb9d9
;     cb9e7
;     cb9f0
;     cb9f2
;     cba13
;     cba1c
;     cba2c
;     cba3b
;     cba49
;     cba53
;     cba54
;     cba7a
;     cba7d
;     cba95
;     cbaa0
;     cbaa3
;     cbad5
;     cbad6
;     cbaf2
;     cbb02
;     cbb0a
;     cbb0c
;     cbb18
;     cbb3c
;     cbb62
;     cbb6d
;     cbb79
;     cbb93
;     cbba5
;     cbbb7
;     cbbb9
;     cbbc3
;     cbbd2
;     cbbd4
;     cbbd6
;     cbbd9
;     cbbec
;     cbc12
;     cbc16
;     cbc35
;     cbc3b
;     cbc43
;     cbc4f
;     cbc52
;     cbca7
;     cbcab
;     cbcf4
;     cbd17
;     cbd1d
;     cbd41
;     cbd54
;     cbd5e
;     cbd64
;     cbda0
;     cbdb4
;     cbe19
;     cbe33
;     cbe3b
;     cbe46
;     cbe72
;     cbe79
;     cbea2
;     cbec2
;     cbed2
;     cbed6
;     cbef7
;     cbf14
;     cbf3a
;     cbf4b
;     l0000
;     l0001
;     l0002
;     l0003
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
;     l001d
;     l001e
;     l001f
;     l0020
;     l0021
;     l0022
;     l0023
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
;     l0034
;     l0035
;     l0036
;     l0037
;     l0038
;     l0039
;     l003a
;     l003b
;     l003c
;     l003e
;     l003f
;     l0040
;     l0041
;     l0042
;     l0043
;     l0044
;     l0045
;     l0046
;     l0047
;     l0048
;     l0049
;     l004a
;     l004b
;     l004c
;     l004d
;     l004e
;     l004f
;     l0050
;     l0051
;     l0052
;     l0053
;     l0054
;     l0055
;     l0056
;     l005e
;     l0067
;     l0069
;     l006a
;     l006b
;     l006c
;     l006d
;     l006e
;     l00fd
;     l00fe
;     l0100
;     l040b
;     l040e
;     l0410
;     l0411
;     l0412
;     l0413
;     l0414
;     l0415
;     l0416
;     l0418
;     l0419
;     l041a
;     l041b
;     l0420
;     l0519
;     l0619
;     l061a
;     l061b
;     l061c
;     l061d
;     l061e
;     l0624
;     l0625
;     l0626
;     l0627
;     l0628
;     l0629
;     l062c
;     l062d
;     l062e
;     l062f
;     l0630
;     l0631
;     l0632
;     l0634
;     l063a
;     l063c
;     l0642
;     l0644
;     l064a
;     l064e
;     l0652
;     l0653
;     l0654
;     l0655
;     l0656
;     l0657
;     l0658
;     l0659
;     l065a
;     l065d
;     l065f
;     l0660
;     l0661
;     l0662
;     l0663
;     l0664
;     l0665
;     l0666
;     l0668
;     l0669
;     l066a
;     l066b
;     l0678
;     l8036
;     l803c
;     l9998
;     l9999
;     la713
;     la717
;     la71c
;     la71e
;     la71f
;     la723
;     la726
;     la727
;     la73e
;     la786
;     la882
;     lab54
;     laf70
;     lb26e
;     lb343
;     lb348
;     lb6a0
;     lba59
;     lc001
;     lc002
;     lc003
;     lea8f
;     loop_c8028
;     loop_c8047
;     loop_c80d6
;     loop_c8170
;     loop_c8305
;     loop_c8376
;     loop_c83cc
;     loop_c849a
;     loop_c85f5
;     loop_c88c8
;     loop_c88d3
;     loop_c891a
;     loop_c8921
;     loop_c8968
;     loop_c8b26
;     loop_c8b5a
;     loop_c8b72
;     loop_c8b8d
;     loop_c8b98
;     loop_c8ba8
;     loop_c8bef
;     loop_c8c49
;     loop_c8c56
;     loop_c8c7c
;     loop_c8ca3
;     loop_c8cb2
;     loop_c8cd1
;     loop_c8d15
;     loop_c8d24
;     loop_c8d7b
;     loop_c8d8a
;     loop_c8d9b
;     loop_c8dcd
;     loop_c8de2
;     loop_c8e75
;     loop_c8e83
;     loop_c8e93
;     loop_c8ebe
;     loop_c8f4d
;     loop_c8f6e
;     loop_c9021
;     loop_c909e
;     loop_c9172
;     loop_c9178
;     loop_c924e
;     loop_c925b
;     loop_c9286
;     loop_c9344
;     loop_c9360
;     loop_c9383
;     loop_c940a
;     loop_c9424
;     loop_c942b
;     loop_c9452
;     loop_c9493
;     loop_c96b0
;     loop_c972a
;     loop_c9758
;     loop_c97ad
;     loop_c9842
;     loop_c99ca
;     loop_c9b92
;     loop_c9bbb
;     loop_c9be4
;     loop_c9c10
;     loop_c9c75
;     loop_c9cb9
;     loop_c9d82
;     loop_c9d98
;     loop_c9de2
;     loop_c9ed0
;     loop_c9fb3
;     loop_c9fc6
;     loop_ca06e
;     loop_ca127
;     loop_ca143
;     loop_ca160
;     loop_ca17c
;     loop_ca37d
;     loop_ca75c
;     loop_ca777
;     loop_ca7b0
;     loop_ca7cb
;     loop_ca816
;     loop_ca83e
;     loop_ca865
;     loop_ca8dd
;     loop_ca8eb
;     loop_ca901
;     loop_caa32
;     loop_caa3f
;     loop_caa98
;     loop_caae3
;     loop_cab0c
;     loop_cab1d
;     loop_cab50
;     loop_cac10
;     loop_cac80
;     loop_cadff
;     loop_cae0e
;     loop_caea4
;     loop_caeb7
;     loop_caec7
;     loop_cb09a
;     loop_cb0ba
;     loop_cb1bb
;     loop_cb200
;     loop_cb2c8
;     loop_cb318
;     loop_cb381
;     loop_cb383
;     loop_cb4b2
;     loop_cb4d9
;     loop_cb540
;     loop_cb574
;     loop_cb5a8
;     loop_cb68e
;     loop_cb81b
;     loop_cb837
;     loop_cb846
;     loop_cb887
;     loop_cb8b1
;     loop_cb8ef
;     loop_cb960
;     loop_cba4b
;     loop_cbb54
;     loop_cbb73
;     loop_cbbc9
;     loop_cbbda
;     loop_cbce1
;     loop_cbd45
;     sub_c8104
;     sub_c8432
;     sub_c84b3
;     sub_c8520
;     sub_c8571
;     sub_c8588
;     sub_c859b
;     sub_c85ca
;     sub_c85f1
;     sub_c865a
;     sub_c87e5
;     sub_c87e7
;     sub_c87eb
;     sub_c87f9
;     sub_c87fb
;     sub_c892d
;     sub_c89a6
;     sub_c89c9
;     sub_c89d9
;     sub_c8a1e
;     sub_c8b58
;     sub_c8b70
;     sub_c8b88
;     sub_c8b8b
;     sub_c8b96
;     sub_c8ba9
;     sub_c8bc1
;     sub_c8c3c
;     sub_c8c44
;     sub_c8e50
;     sub_c8f99
;     sub_c8faa
;     sub_c8fc8
;     sub_c8ff0
;     sub_c9052
;     sub_c90dd
;     sub_c9137
;     sub_c913f
;     sub_c915a
;     sub_c9170
;     sub_c9189
;     sub_c918e
;     sub_c919a
;     sub_c91a8
;     sub_c91ab
;     sub_c91cf
;     sub_c91df
;     sub_c91e2
;     sub_c9213
;     sub_c9224
;     sub_c9227
;     sub_c9300
;     sub_c93a4
;     sub_c944c
;     sub_c94a8
;     sub_c94ba
;     sub_c95d0
;     sub_c9658
;     sub_c9664
;     sub_c9673
;     sub_c9676
;     sub_c9685
;     sub_c979a
;     sub_c9814
;     sub_c981e
;     sub_c982f
;     sub_c9918
;     sub_c9940
;     sub_c9958
;     sub_c998c
;     sub_c999a
;     sub_c99ac
;     sub_c99d5
;     sub_c99e4
;     sub_c99e8
;     sub_c99f0
;     sub_c99f4
;     sub_c99f8
;     sub_c99fc
;     sub_c9a08
;     sub_c9a0d
;     sub_c9a11
;     sub_c9a15
;     sub_c9a19
;     sub_c9a1d
;     sub_c9a25
;     sub_c9a35
;     sub_c9a3a
;     sub_c9a3e
;     sub_c9a42
;     sub_c9a46
;     sub_c9a4a
;     sub_c9a4e
;     sub_c9a52
;     sub_c9a68
;     sub_c9a6c
;     sub_c9a70
;     sub_c9a86
;     sub_c9a9c
;     sub_c9aa0
;     sub_c9aa4
;     sub_c9aa8
;     sub_c9ab6
;     sub_c9ac4
;     sub_c9ad3
;     sub_c9ae2
;     sub_c9af1
;     sub_c9af9
;     sub_c9afb
;     sub_c9b05
;     sub_c9b07
;     sub_c9b1a
;     sub_c9b7f
;     sub_c9b83
;     sub_c9cb4
;     sub_c9d3b
;     sub_c9d4a
;     sub_c9d75
;     sub_c9d7a
;     sub_c9d90
;     sub_c9d96
;     sub_c9da1
;     sub_c9daa
;     sub_c9daf
;     sub_c9dc3
;     sub_c9dc5
;     sub_c9ef3
;     sub_c9f03
;     sub_c9f3c
;     sub_ca07b
;     sub_ca07d
;     sub_ca08b
;     sub_ca09a
;     sub_ca0eb
;     sub_ca108
;     sub_ca10e
;     sub_ca202
;     sub_ca227
;     sub_ca27e
;     sub_ca297
;     sub_ca2cf
;     sub_ca2d3
;     sub_ca2d7
;     sub_ca304
;     sub_ca331
;     sub_ca34e
;     sub_ca351
;     sub_ca35c
;     sub_ca360
;     sub_ca364
;     sub_ca368
;     sub_ca371
;     sub_ca3c7
;     sub_ca3ea
;     sub_ca412
;     sub_ca4a9
;     sub_ca4d6
;     sub_ca4e9
;     sub_ca4fa
;     sub_ca800
;     sub_ca83a
;     sub_ca8b1
;     sub_ca91f
;     sub_ca973
;     sub_caa1b
;     sub_cab3e
;     sub_cab44
;     sub_cabed
;     sub_cabf1
;     sub_cabf5
;     sub_cabfe
;     sub_cad13
;     sub_caee9
;     sub_cafd9
;     sub_caffc
;     sub_cb146
;     sub_cb17b
;     sub_cb1a1
;     sub_cb1aa
;     sub_cb1b9
;     sub_cb1c8
;     sub_cb1e5
;     sub_cb1eb
;     sub_cb207
;     sub_cb27d
;     sub_cb290
;     sub_cb296
;     sub_cb29d
;     sub_cb2f5
;     sub_cb2f7
;     sub_cb2fb
;     sub_cb2fd
;     sub_cb34d
;     sub_cb359
;     sub_cb37c
;     sub_cb39b
;     sub_cb3b1
;     sub_cb3fd
;     sub_cb42f
;     sub_cb455
;     sub_cb487
;     sub_cb48a
;     sub_cb49f
;     sub_cb4a9
;     sub_cb4c2
;     sub_cb586
;     sub_cb61e
;     sub_cb665
;     sub_cb711
;     sub_cb727
;     sub_cb77e
;     sub_cb810
;     sub_cb902
;     sub_cb90b
;     sub_cb917
;     sub_cb9f3
;     sub_cb9fd
;     sub_cba65
;     sub_cbb56
;     sub_cbbdd
;     sub_cbc7b
;     sub_cbdbf
;     sub_cbdc4
;     sub_cbddb
;     sub_cbe06
;     sub_cbe3c
;     sub_cbf28
    assert &80+' ' == &a0
    assert &80+'*' == &aa
    assert &80+'d' == &e4
    assert &80+'e' == &e5
    assert &80+'n' == &ee
    assert &80+'r' == &f2
    assert &80+'t' == &f4
    assert &80+'w' == &f7
    assert &80+'y' == &f9
    assert 128 + (' ') == &a0
    assert 128 + (')') == &a9
    assert 128 + (',') == &ac
    assert 128 + (':') == &ba
    assert 128 + ('N') == &ce
    assert 128 + ('R') == &d2
    assert 128 + (']') == &dd
    assert 128 + ('d') == &e4
    assert 128 + ('e') == &e5
    assert 128 + ('l') == &ec
    assert 128 + ('n') == &ee
    assert 128 + ('o') == &ef
    assert 128 + ('r') == &f2
    assert 128 + ('t') == &f4
    assert 128 + ('x') == &f8
    assert 128 + ('y') == &f9
    assert 128 + 0 == &80
    assert 128 + 1 == &81
    assert 128 + 10 == &8a
    assert 128 + 11 == &8b
    assert 128 + 12 == &8c
    assert 128 + 13 == &8d
    assert 128 + 14 == &8e
    assert 128 + 15 == &8f
    assert 128 + 16 == &90
    assert 128 + 17 == &91
    assert 128 + 2 == &82
    assert 128 + 3 == &83
    assert 128 + 4 == &84
    assert 128 + 5 == &85
    assert 128 + 6 == &86
    assert 128 + 7 == &87
    assert 128 + 8 == &88
    assert 128 + 9 == &89
    assert <(fx163_192_0) == &97
    assert <(input_buffer) == &1a
    assert <(l003e) == &3e
    assert <(laf70) == &70
    assert <brkv_handler == &98
    assert <bytecode_jump_table_high == &0c
    assert <bytecode_opcode_00_handler == &50
    assert <bytecode_opcode_01_handler == &50
    assert <bytecode_opcode_02_handler == &50
    assert <bytecode_opcode_03_handler == &50
    assert <bytecode_opcode_04_handler == &bc
    assert <bytecode_opcode_05_handler == &fb
    assert <bytecode_opcode_06_handler == &fb
    assert <bytecode_opcode_07_handler == &6d
    assert <bytecode_opcode_08_handler == &1c
    assert <bytecode_opcode_09_handler == &63
    assert <bytecode_opcode_0a_handler == &63
    assert <bytecode_opcode_0b_handler == &63
    assert <bytecode_opcode_0c_handler == &63
    assert <bytecode_opcode_0d_handler == &63
    assert <bytecode_opcode_0e_handler == &0e
    assert <bytecode_opcode_0f_handler == &0e
    assert <bytecode_opcode_10_handler == &54
    assert <bytecode_opcode_11_handler == &5b
    assert <bytecode_opcode_12_handler == &5b
    assert <bytecode_opcode_13_handler == &5b
    assert <bytecode_opcode_14_handler == &5b
    assert <bytecode_opcode_15_handler == &5b
    assert <bytecode_opcode_16_handler == &71
    assert <bytecode_opcode_17_handler == &71
    assert <bytecode_opcode_18_handler == &44
    assert <bytecode_opcode_19_handler == &44
    assert <bytecode_opcode_1a_handler == &44
    assert <bytecode_opcode_1b_handler == &44
    assert <bytecode_opcode_1c_handler == &44
    assert <bytecode_opcode_1d_handler == &ef
    assert <bytecode_opcode_1e_handler == &ef
    assert <bytecode_opcode_1f_handler == &a3
    assert <bytecode_opcode_20_handler == &15
    assert <bytecode_opcode_21_handler == &4c
    assert <bytecode_opcode_22_handler == &4c
    assert <bytecode_opcode_23_handler == &4c
    assert <bytecode_opcode_24_handler == &4c
    assert <bytecode_opcode_25_handler == &4c
    assert <bytecode_opcode_26_handler == &8b
    assert <bytecode_opcode_27_handler == &8b
    assert <bytecode_opcode_28_handler == &c6
    assert <bytecode_opcode_29_handler == &25
    assert <bytecode_opcode_2a_handler == &37
    assert <bytecode_opcode_2b_handler == &3e
    assert <bytecode_opcode_2c_handler == &17
    assert <bytecode_opcode_2d_handler == &1f
    assert <bytecode_opcode_2e_handler == &16
    assert <bytecode_opcode_2f_handler == &11
    assert <bytecode_opcode_30_handler == &0b
    assert <bytecode_opcode_31_handler == &66
    assert <bytecode_opcode_32_handler == &0e
    assert <bytecode_opcode_33_handler == &3a
    assert <bytecode_opcode_34_handler == &3a
    assert <bytecode_opcode_35_handler == &3a
    assert <bytecode_opcode_36_handler == &3a
    assert <bytecode_opcode_37_handler == &3a
    assert <bytecode_opcode_38_handler == &e5
    assert <bytecode_opcode_39_handler == &e5
    assert <bytecode_opcode_3a_handler == &5d
    assert <bytecode_opcode_3b_handler == &3f
    assert <bytecode_opcode_3c_handler == &3f
    assert <bytecode_opcode_3d_handler == &3f
    assert <bytecode_opcode_3e_handler == &3f
    assert <bytecode_opcode_3f_handler == &3f
    assert <bytecode_opcode_40_handler == &7e
    assert <bytecode_opcode_41_handler == &7e
    assert <bytecode_opcode_42_handler == &10
    assert <bytecode_opcode_43_handler == &a2
    assert <bytecode_opcode_44_handler == &32
    assert <bytecode_opcode_45_handler == &4a
    assert <bytecode_opcode_46_handler == &55
    assert <bytecode_opcode_47_handler == &6e
    assert <bytecode_opcode_48_handler == &79
    assert <bytecode_opcode_49_handler == &9a
    assert <bytecode_opcode_4a_handler == &f6
    assert <bytecode_opcode_4b_handler == &88
    assert <bytecode_opcode_4c_handler == &19
    assert <bytecode_opcode_4d_handler == &39
    assert <bytecode_opcode_4e_handler == &aa
    assert <bytecode_opcode_4f_handler == &f1
    assert <bytecode_opcode_50_handler == &a3
    assert <bytecode_opcode_51_handler == &3b
    assert <bytecode_opcode_52_handler == &bd
    assert <bytecode_opcode_53_handler == &3b
    assert <bytecode_opcode_54_handler == &27
    assert <bytecode_opcode_55_handler == &27
    assert <bytecode_opcode_56_handler == &27
    assert <bytecode_opcode_57_handler == &27
    assert <bytecode_opcode_58_handler == &27
    assert <bytecode_opcode_59_handler == &27
    assert <bytecode_opcode_5a_handler == &56
    assert <bytecode_opcode_5b_handler == &56
    assert <bytecode_opcode_5c_handler == &a0
    assert <bytecode_opcode_5d_handler == &a0
    assert <bytecode_opcode_5e_handler == &a0
    assert <bytecode_opcode_5f_handler == &a0
    assert <bytecode_opcode_60_handler == &a0
    assert <bytecode_opcode_61_handler == &a0
    assert <bytecode_opcode_62_handler == &61
    assert <bytecode_opcode_63_handler == &61
    assert <bytecode_opcode_64_handler == &61
    assert <bytecode_opcode_65_handler == &61
    assert <bytecode_opcode_66_handler == &61
    assert <bytecode_opcode_67_handler == &61
    assert <bytecode_opcode_68_handler == &6c
    assert <bytecode_opcode_69_handler == &6c
    assert <bytecode_opcode_6a_handler == &80
    assert <bytecode_opcode_6b_handler == &90
    assert <bytecode_opcode_6c_handler == &d1
    assert <bytecode_opcode_6d_handler == &d1
    assert <bytecode_opcode_6e_handler == &d1
    assert <bytecode_opcode_6f_handler == &d1
    assert <bytecode_opcode_70_handler == &d1
    assert <bytecode_opcode_71_handler == &d1
    assert <bytecode_opcode_72_handler == &34
    assert <bytecode_opcode_73_handler == &34
    assert <bytecode_opcode_74_handler == &34
    assert <bytecode_opcode_75_handler == &34
    assert <bytecode_opcode_76_handler == &34
    assert <bytecode_opcode_77_handler == &21
    assert <bytecode_opcode_78_handler == &ac
    assert <bytecode_opcode_79_handler == &ac
    assert <bytecode_opcode_7a_handler == &ac
    assert <bytecode_opcode_7b_handler == &ac
    assert <bytecode_opcode_7c_handler == &5b
    assert <bytecode_opcode_7d_handler == &24
    assert <bytecode_opcode_7e_handler == &78
    assert <bytecode_opcode_7f_handler == &87
    assert <bytecode_opcode_80_handler == &98
    assert <bytecode_opcode_81_handler == &fc
    assert <bytecode_opcode_82_handler == &2d
    assert <bytecode_opcode_83_handler == &05
    assert <bytecode_opcode_84_handler == &0a
    assert <bytecode_opcode_85_handler == &14
    assert <bytecode_opcode_86_handler == &1e
    assert <bytecode_opcode_87_handler == &83
    assert <bytecode_opcode_88_handler == &9d
    assert <bytecode_opcode_89_handler == &bf
    assert <bytecode_opcode_8a_handler == &bd
    assert <bytecode_opcode_8b_handler == &cb
    assert <bytecode_opcode_8c_handler == &00
    assert <bytecode_opcode_8d_handler == &94
    assert <bytecode_opcode_8e_handler == &f7
    assert <bytecode_opcode_8f_handler == &f0
    assert <bytecode_opcode_90_handler == &6b
    assert <bytecode_opcode_91_handler == &18
    assert <bytecode_opcode_92_handler == &18
    assert <bytecode_opcode_93_handler == &38
    assert <bytecode_opcode_94_handler == &a1
    assert <bytecode_opcode_95_handler == &24
    assert <bytecode_opcode_96_handler == &7a
    assert <bytecode_opcode_97_handler == &09
    assert <bytecode_opcode_98_handler == &58
    assert <bytecode_opcode_99_handler == &06
    assert <bytecode_opcode_9a_handler == &06
    assert <bytecode_opcode_9b_handler == &fd
    assert <bytecode_opcode_9c_handler == &71
    assert <bytecode_opcode_9d_handler == &74
    assert <bytecode_opcode_9e_handler == &3f
    assert <bytecode_opcode_9f_handler == &0d
    assert <bytecode_opcode_a0_handler == &29
    assert <bytecode_opcode_a1_handler == &35
    assert <bytecode_opcode_a2_handler == &81
    assert <bytecode_opcode_a3_handler == &81
    assert <bytecode_opcode_a4_handler == &8a
    assert <bytecode_opcode_a5_handler == &51
    assert <bytecode_opcode_a6_handler == &b3
    assert <bytecode_opcode_a7_handler == &bd
    assert <bytecode_opcode_a8_handler == &2f
    assert <bytecode_opcode_a9_handler == &1b
    assert <bytecode_opcode_aa_handler == &b3
    assert <bytecode_opcode_ab_handler == &bd
    assert <bytecode_opcode_ac_handler == &01
    assert <bytecode_opcode_ad_handler == &d6
    assert <bytecode_opcode_ae_handler == &eb
    assert <bytecode_opcode_af_handler == &cd
    assert <bytecode_opcode_b0_handler == &24
    assert <bytecode_opcode_b1_handler == &3b
    assert <bytecode_opcode_b2_handler == &15
    assert <bytecode_opcode_b3_handler == &c4
    assert <bytecode_opcode_b4_handler == &3d
    assert <bytecode_opcode_b5_handler == &9d
    assert <bytecode_opcode_b6_handler == &9a
    assert <bytecode_opcode_b7_handler == &d2
    assert <bytecode_opcode_b8_handler == &a9
    assert <bytecode_opcode_b9_handler == &e8
    assert <bytecode_opcode_ba_handler == &ba
    assert <bytecode_opcode_bb_handler == &f7
    assert <bytecode_opcode_bc_handler == &c5
    assert <bytecode_opcode_bd_handler == &0d
    assert <bytecode_opcode_be_handler == &01
    assert <bytecode_opcode_bf_handler == &ef
    assert <bytecode_opcode_c0_handler == &df
    assert <bytecode_opcode_c1_handler == &b6
    assert <bytecode_opcode_c2_handler == &a7
    assert <bytecode_opcode_c3_handler == &c5
    assert <bytecode_opcode_c4_handler == &d0
    assert <bytecode_opcode_c5_handler == &53
    assert <bytecode_opcode_c6_handler == &53
    assert <bytecode_opcode_c7_handler == &66
    assert <bytecode_opcode_c8_handler == &22
    assert <bytecode_opcode_c9_handler == &22
    assert <bytecode_opcode_ca_handler == &cd
    assert <bytecode_opcode_cb_handler == &cd
    assert <bytecode_opcode_cc_handler == &cd
    assert <bytecode_opcode_cd_handler == &cd
    assert <bytecode_opcode_ce_handler == &cd
    assert <bytecode_opcode_cf_handler == &cd
    assert <bytecode_opcode_d0_handler == &cd
    assert <bytecode_opcode_d1_handler == &f1
    assert <bytecode_opcode_d2_handler == &f1
    assert <bytecode_opcode_d3_handler == &59
    assert <bytecode_opcode_d4_handler == &67
    assert <bytecode_opcode_d5_handler == &54
    assert <bytecode_opcode_d6_handler == &d5
    assert <bytecode_opcode_d7_handler == &68
    assert <bytecode_opcode_d8_handler == &fe
    assert <bytecode_opcode_d9_handler == &c5
    assert <bytecode_opcode_da_handler == &d6
    assert <bytecode_opcode_db_handler == &e1
    assert <bytecode_opcode_dc_handler == &0c
    assert <bytecode_opcode_dd_handler == &af
    assert <bytecode_opcode_de_handler == &34
    assert <bytecode_opcode_df_handler == &58
    assert <bytecode_opcode_e0_handler == &d4
    assert <bytecode_opcode_e1_handler == &c2
    assert <bytecode_opcode_e2_handler == &6b
    assert <bytecode_opcode_e3_handler == &52
    assert <bytecode_opcode_e4_handler == &8b
    assert <bytecode_opcode_e5_handler == &a8
    assert <bytecode_opcode_e6_handler == &c3
    assert <bytecode_opcode_e7_handler == &e2
    assert <bytecode_opcode_e8_handler == &f9
    assert <bytecode_opcode_e9_handler == &ee
    assert <bytecode_opcode_ea_handler == &4b
    assert <bytecode_opcode_eb_handler == &86
    assert <bytecode_opcode_ec_handler == &60
    assert <bytecode_opcode_ed_handler == &db
    assert <bytecode_opcode_ee_handler == &d4
    assert <bytecode_opcode_ef_handler == &b2
    assert <bytecode_opcode_f0_handler == &a1
    assert <bytecode_opcode_f1_handler == &c6
    assert <bytecode_opcode_f2_handler == &c3
    assert <bytecode_opcode_f3_handler == &ca
    assert <bytecode_opcode_f4_handler == &d5
    assert <bytecode_opcode_f5_handler == &e4
    assert <bytecode_opcode_f6_handler == &fc
    assert <bytecode_opcode_f7_handler == &5e
    assert <bytecode_opcode_f8_handler == &09
    assert <bytecode_opcode_f9_handler == &07
    assert <bytecode_opcode_fa_handler == &19
    assert <bytecode_opcode_fb_handler == &52
    assert <bytecode_opcode_fc_handler == &c0
    assert <bytecode_opcode_fd_handler == &9e
    assert <bytecode_opcode_fe_handler == &48
    assert <bytecode_opcode_ff_handler == &4e
    assert <command_close_handler == &eb
    assert <command_compile_handler == &88
    assert <command_edit_handler == &05
    assert <command_go_handler == &e2
    assert <command_load_handler == &7a
    assert <command_mode_handler == &08
    assert <command_run_handler == &c4
    assert <command_save_handler == &1a
    assert <command_table == &40
    assert <command_trace_handler == &ff
    assert <compiler_bytecode_start == &70
    assert <input_buffer == &1a
    assert <interpreter_size == &af
    assert <interpreter_start == &a3
    assert <opcode_72_sub_handler == &77
    assert <opcode_73_sub_handler == &1f
    assert <opcode_74_sub_handler == &8c
    assert <opcode_75_sub_handler == &d6
    assert <opcode_76_sub_handler == &5d
    assert <opcode_78_sub_handler == &03
    assert <opcode_79_sub_handler == &00
    assert <opcode_7a_sub_handler == &ed
    assert <opcode_7b_sub_handler == &59
    assert <opcode_ca_sub_handler == &ed
    assert <opcode_cb_sub_handler == &33
    assert <opcode_cc_sub_handler == &2b
    assert <opcode_cd_sub_handler == &a0
    assert <opcode_ce_sub_handler == &b5
    assert <opcode_cf_sub_handler == &68
    assert <opcode_d0_sub_handler == &78
    assert <something2 == &16
    assert <something_00_handler == &58
    assert <something_01_handler == &41
    assert <something_02_handler == &96
    assert <something_03_handler == &a4
    assert <something_04_handler == &82
    assert <something_05_handler == &20
    assert <something_06_handler == &86
    assert <something_07_handler == &7e
    assert <something_08_handler == &da
    assert <something_09_handler == &3b
    assert <something_0a_handler == &a2
    assert <something_0b_handler == &69
    assert <something_0c_handler == &a8
    assert <something_0d_handler == &d2
    assert <something_0e_handler == &e5
    assert <something_0f_handler == &b9
    assert <something_10_handler == &2e
    assert <something_11_handler == &16
    assert <something_12_handler == &e7
    assert <something_13_handler == &9c
    assert <something_14_handler == &69
    assert <something_15_handler == &9c
    assert <something_16_handler == &ff
    assert <something_17_handler == &a5
    assert <something_18_handler == &cb
    assert <something_19_handler == &35
    assert <something_1a_handler == &9c
    assert <something_1b_handler == &1e
    assert <something_1c_handler == &fe
    assert <something_1d_handler == &04
    assert <something_1e_handler == &53
    assert <something_1f_handler == &fb
    assert <something_20_handler == &fe
    assert <something_21_handler == &04
    assert <something_22_handler == &18
    assert <something_23_handler == &0d
    assert <string_false == &2b
    assert <string_true == &30
    assert >(fx163_192_0) == &87
    assert >(input_buffer) == &05
    assert >(l003e) == &00
    assert >(laf70) == &af
    assert >brkv_handler == &80
    assert >bytecode_jump_table_high == &a6
    assert >bytecode_opcode_00_handler == &88
    assert >bytecode_opcode_01_handler == &88
    assert >bytecode_opcode_02_handler == &88
    assert >bytecode_opcode_03_handler == &88
    assert >bytecode_opcode_04_handler == &88
    assert >bytecode_opcode_05_handler == &88
    assert >bytecode_opcode_06_handler == &88
    assert >bytecode_opcode_07_handler == &8a
    assert >bytecode_opcode_08_handler == &88
    assert >bytecode_opcode_09_handler == &88
    assert >bytecode_opcode_0a_handler == &88
    assert >bytecode_opcode_0b_handler == &88
    assert >bytecode_opcode_0c_handler == &88
    assert >bytecode_opcode_0d_handler == &88
    assert >bytecode_opcode_0e_handler == &89
    assert >bytecode_opcode_0f_handler == &89
    assert >bytecode_opcode_10_handler == &8a
    assert >bytecode_opcode_11_handler == &89
    assert >bytecode_opcode_12_handler == &89
    assert >bytecode_opcode_13_handler == &89
    assert >bytecode_opcode_14_handler == &89
    assert >bytecode_opcode_15_handler == &89
    assert >bytecode_opcode_16_handler == &89
    assert >bytecode_opcode_17_handler == &89
    assert >bytecode_opcode_18_handler == &88
    assert >bytecode_opcode_19_handler == &88
    assert >bytecode_opcode_1a_handler == &88
    assert >bytecode_opcode_1b_handler == &88
    assert >bytecode_opcode_1c_handler == &88
    assert >bytecode_opcode_1d_handler == &88
    assert >bytecode_opcode_1e_handler == &88
    assert >bytecode_opcode_1f_handler == &89
    assert >bytecode_opcode_20_handler == &88
    assert >bytecode_opcode_21_handler == &89
    assert >bytecode_opcode_22_handler == &89
    assert >bytecode_opcode_23_handler == &89
    assert >bytecode_opcode_24_handler == &89
    assert >bytecode_opcode_25_handler == &89
    assert >bytecode_opcode_26_handler == &89
    assert >bytecode_opcode_27_handler == &89
    assert >bytecode_opcode_28_handler == &89
    assert >bytecode_opcode_29_handler == &8a
    assert >bytecode_opcode_2a_handler == &8f
    assert >bytecode_opcode_2b_handler == &8f
    assert >bytecode_opcode_2c_handler == &8f
    assert >bytecode_opcode_2d_handler == &8f
    assert >bytecode_opcode_2e_handler == &8a
    assert >bytecode_opcode_2f_handler == &8a
    assert >bytecode_opcode_30_handler == &8a
    assert >bytecode_opcode_31_handler == &8a
    assert >bytecode_opcode_32_handler == &88
    assert >bytecode_opcode_33_handler == &88
    assert >bytecode_opcode_34_handler == &88
    assert >bytecode_opcode_35_handler == &88
    assert >bytecode_opcode_36_handler == &88
    assert >bytecode_opcode_37_handler == &88
    assert >bytecode_opcode_38_handler == &88
    assert >bytecode_opcode_39_handler == &88
    assert >bytecode_opcode_3a_handler == &8a
    assert >bytecode_opcode_3b_handler == &89
    assert >bytecode_opcode_3c_handler == &89
    assert >bytecode_opcode_3d_handler == &89
    assert >bytecode_opcode_3e_handler == &89
    assert >bytecode_opcode_3f_handler == &89
    assert >bytecode_opcode_40_handler == &89
    assert >bytecode_opcode_41_handler == &89
    assert >bytecode_opcode_42_handler == &9b
    assert >bytecode_opcode_43_handler == &ae
    assert >bytecode_opcode_44_handler == &97
    assert >bytecode_opcode_45_handler == &97
    assert >bytecode_opcode_46_handler == &97
    assert >bytecode_opcode_47_handler == &97
    assert >bytecode_opcode_48_handler == &97
    assert >bytecode_opcode_49_handler == &89
    assert >bytecode_opcode_4a_handler == &a8
    assert >bytecode_opcode_4b_handler == &8a
    assert >bytecode_opcode_4c_handler == &a9
    assert >bytecode_opcode_4d_handler == &a9
    assert >bytecode_opcode_4e_handler == &a8
    assert >bytecode_opcode_4f_handler == &8a
    assert >bytecode_opcode_50_handler == &99
    assert >bytecode_opcode_51_handler == &ae
    assert >bytecode_opcode_52_handler == &89
    assert >bytecode_opcode_53_handler == &8a
    assert >bytecode_opcode_54_handler == &8e
    assert >bytecode_opcode_55_handler == &8e
    assert >bytecode_opcode_56_handler == &8e
    assert >bytecode_opcode_57_handler == &8e
    assert >bytecode_opcode_58_handler == &8e
    assert >bytecode_opcode_59_handler == &8e
    assert >bytecode_opcode_5a_handler == &8e
    assert >bytecode_opcode_5b_handler == &8e
    assert >bytecode_opcode_5c_handler == &8e
    assert >bytecode_opcode_5d_handler == &8e
    assert >bytecode_opcode_5e_handler == &8e
    assert >bytecode_opcode_5f_handler == &8e
    assert >bytecode_opcode_60_handler == &8e
    assert >bytecode_opcode_61_handler == &8e
    assert >bytecode_opcode_62_handler == &a9
    assert >bytecode_opcode_63_handler == &a9
    assert >bytecode_opcode_64_handler == &a9
    assert >bytecode_opcode_65_handler == &a9
    assert >bytecode_opcode_66_handler == &a9
    assert >bytecode_opcode_67_handler == &a9
    assert >bytecode_opcode_68_handler == &8e
    assert >bytecode_opcode_69_handler == &8e
    assert >bytecode_opcode_6a_handler == &8e
    assert >bytecode_opcode_6b_handler == &8e
    assert >bytecode_opcode_6c_handler == &8e
    assert >bytecode_opcode_6d_handler == &8e
    assert >bytecode_opcode_6e_handler == &8e
    assert >bytecode_opcode_6f_handler == &8e
    assert >bytecode_opcode_70_handler == &8e
    assert >bytecode_opcode_71_handler == &8e
    assert >bytecode_opcode_72_handler == &8d
    assert >bytecode_opcode_73_handler == &8d
    assert >bytecode_opcode_74_handler == &8d
    assert >bytecode_opcode_75_handler == &8d
    assert >bytecode_opcode_76_handler == &8d
    assert >bytecode_opcode_77_handler == &aa
    assert >bytecode_opcode_78_handler == &a9
    assert >bytecode_opcode_79_handler == &a9
    assert >bytecode_opcode_7a_handler == &a9
    assert >bytecode_opcode_7b_handler == &a9
    assert >bytecode_opcode_7c_handler == &95
    assert >bytecode_opcode_7d_handler == &96
    assert >bytecode_opcode_7e_handler == &8d
    assert >bytecode_opcode_7f_handler == &8d
    assert >bytecode_opcode_80_handler == &8d
    assert >bytecode_opcode_81_handler == &8e
    assert >bytecode_opcode_82_handler == &aa
    assert >bytecode_opcode_83_handler == &8f
    assert >bytecode_opcode_84_handler == &8e
    assert >bytecode_opcode_85_handler == &8e
    assert >bytecode_opcode_86_handler == &8e
    assert >bytecode_opcode_87_handler == &92
    assert >bytecode_opcode_88_handler == &92
    assert >bytecode_opcode_89_handler == &93
    assert >bytecode_opcode_8a_handler == &92
    assert >bytecode_opcode_8b_handler == &92
    assert >bytecode_opcode_8c_handler == &94
    assert >bytecode_opcode_8d_handler == &92
    assert >bytecode_opcode_8e_handler == &93
    assert >bytecode_opcode_8f_handler == &92
    assert >bytecode_opcode_90_handler == &94
    assert >bytecode_opcode_91_handler == &94
    assert >bytecode_opcode_92_handler == &94
    assert >bytecode_opcode_93_handler == &94
    assert >bytecode_opcode_94_handler == &93
    assert >bytecode_opcode_95_handler == &93
    assert >bytecode_opcode_96_handler == &aa
    assert >bytecode_opcode_97_handler == &93
    assert >bytecode_opcode_98_handler == &aa
    assert >bytecode_opcode_99_handler == &a8
    assert >bytecode_opcode_9a_handler == &92
    assert >bytecode_opcode_9b_handler == &91
    assert >bytecode_opcode_9c_handler == &93
    assert >bytecode_opcode_9d_handler == &94
    assert >bytecode_opcode_9e_handler == &8b
    assert >bytecode_opcode_9f_handler == &8b
    assert >bytecode_opcode_a0_handler == &8b
    assert >bytecode_opcode_a1_handler == &8b
    assert >bytecode_opcode_a2_handler == &94
    assert >bytecode_opcode_a3_handler == &94
    assert >bytecode_opcode_a4_handler == &94
    assert >bytecode_opcode_a5_handler == &8a
    assert >bytecode_opcode_a6_handler == &90
    assert >bytecode_opcode_a7_handler == &90
    assert >bytecode_opcode_a8_handler == &9d
    assert >bytecode_opcode_a9_handler == &8b
    assert >bytecode_opcode_aa_handler == &90
    assert >bytecode_opcode_ab_handler == &90
    assert >bytecode_opcode_ac_handler == &8b
    assert >bytecode_opcode_ad_handler == &93
    assert >bytecode_opcode_ae_handler == &93
    assert >bytecode_opcode_af_handler == &94
    assert >bytecode_opcode_b0_handler == &95
    assert >bytecode_opcode_b1_handler == &95
    assert >bytecode_opcode_b2_handler == &99
    assert >bytecode_opcode_b3_handler == &95
    assert >bytecode_opcode_b4_handler == &99
    assert >bytecode_opcode_b5_handler == &88
    assert >bytecode_opcode_b6_handler == &96
    assert >bytecode_opcode_b7_handler == &96
    assert >bytecode_opcode_b8_handler == &96
    assert >bytecode_opcode_b9_handler == &96
    assert >bytecode_opcode_ba_handler == &96
    assert >bytecode_opcode_bb_handler == &96
    assert >bytecode_opcode_bc_handler == &96
    assert >bytecode_opcode_bd_handler == &97
    assert >bytecode_opcode_be_handler == &8e
    assert >bytecode_opcode_bf_handler == &8d
    assert >bytecode_opcode_c0_handler == &8d
    assert >bytecode_opcode_c1_handler == &8d
    assert >bytecode_opcode_c2_handler == &8d
    assert >bytecode_opcode_c3_handler == &8d
    assert >bytecode_opcode_c4_handler == &8d
    assert >bytecode_opcode_c5_handler == &8d
    assert >bytecode_opcode_c6_handler == &8d
    assert >bytecode_opcode_c7_handler == &8d
    assert >bytecode_opcode_c8_handler == &9f
    assert >bytecode_opcode_c9_handler == &9f
    assert >bytecode_opcode_ca_handler == &a9
    assert >bytecode_opcode_cb_handler == &a9
    assert >bytecode_opcode_cc_handler == &a9
    assert >bytecode_opcode_cd_handler == &a9
    assert >bytecode_opcode_ce_handler == &a9
    assert >bytecode_opcode_cf_handler == &a9
    assert >bytecode_opcode_d0_handler == &a9
    assert >bytecode_opcode_d1_handler == &a9
    assert >bytecode_opcode_d2_handler == &a9
    assert >bytecode_opcode_d3_handler == &9d
    assert >bytecode_opcode_d4_handler == &9d
    assert >bytecode_opcode_d5_handler == &9c
    assert >bytecode_opcode_d6_handler == &9b
    assert >bytecode_opcode_d7_handler == &9c
    assert >bytecode_opcode_d8_handler == &9b
    assert >bytecode_opcode_d9_handler == &ad
    assert >bytecode_opcode_da_handler == &ae
    assert >bytecode_opcode_db_handler == &90
    assert >bytecode_opcode_dc_handler == &99
    assert >bytecode_opcode_dd_handler == &95
    assert >bytecode_opcode_de_handler == &99
    assert >bytecode_opcode_df_handler == &95
    assert >bytecode_opcode_e0_handler == &a8
    assert >bytecode_opcode_e1_handler == &ae
    assert >bytecode_opcode_e2_handler == &a7
    assert >bytecode_opcode_e3_handler == &a7
    assert >bytecode_opcode_e4_handler == &a7
    assert >bytecode_opcode_e5_handler == &a7
    assert >bytecode_opcode_e6_handler == &a7
    assert >bytecode_opcode_e7_handler == &a7
    assert >bytecode_opcode_e8_handler == &a7
    assert >bytecode_opcode_e9_handler == &a7
    assert >bytecode_opcode_ea_handler == &a8
    assert >bytecode_opcode_eb_handler == &a8
    assert >bytecode_opcode_ec_handler == &a8
    assert >bytecode_opcode_ed_handler == &9c
    assert >bytecode_opcode_ee_handler == &9c
    assert >bytecode_opcode_ef_handler == &ae
    assert >bytecode_opcode_f0_handler == &8a
    assert >bytecode_opcode_f1_handler == &9c
    assert >bytecode_opcode_f2_handler == &8a
    assert >bytecode_opcode_f3_handler == &8a
    assert >bytecode_opcode_f4_handler == &8a
    assert >bytecode_opcode_f5_handler == &8a
    assert >bytecode_opcode_f6_handler == &a8
    assert >bytecode_opcode_f7_handler == &88
    assert >bytecode_opcode_f8_handler == &89
    assert >bytecode_opcode_f9_handler == &9d
    assert >bytecode_opcode_fa_handler == &9d
    assert >bytecode_opcode_fb_handler == &8e
    assert >bytecode_opcode_fc_handler == &8a
    assert >bytecode_opcode_fd_handler == &a8
    assert >bytecode_opcode_fe_handler == &8e
    assert >bytecode_opcode_ff_handler == &8b
    assert >command_close_handler == &85
    assert >command_compile_handler == &86
    assert >command_edit_handler == &af
    assert >command_go_handler == &83
    assert >command_load_handler == &85
    assert >command_mode_handler == &85
    assert >command_run_handler == &83
    assert >command_save_handler == &84
    assert >command_table == &84
    assert >command_trace_handler == &84
    assert >compiler_bytecode_start == &86
    assert >input_buffer == &05
    assert >interpreter_size == &1f
    assert >interpreter_start == &87
    assert >opcode_72_sub_handler == &8c
    assert >opcode_73_sub_handler == &8d
    assert >opcode_74_sub_handler == &8c
    assert >opcode_75_sub_handler == &8b
    assert >opcode_76_sub_handler == &8c
    assert >opcode_78_sub_handler == &a1
    assert >opcode_79_sub_handler == &a1
    assert >opcode_7a_sub_handler == &aa
    assert >opcode_7b_sub_handler == &ab
    assert >opcode_ca_sub_handler == &aa
    assert >opcode_cb_sub_handler == &ac
    assert >opcode_cc_sub_handler == &ac
    assert >opcode_cd_sub_handler == &aa
    assert >opcode_ce_sub_handler == &ac
    assert >opcode_cf_sub_handler == &ac
    assert >opcode_d0_sub_handler == &ad
    assert >something2 == &aa
    assert >something_00_handler == &b8
    assert >something_01_handler == &b7
    assert >something_02_handler == &b7
    assert >something_03_handler == &b7
    assert >something_04_handler == &bc
    assert >something_05_handler == &bd
    assert >something_06_handler == &bd
    assert >something_07_handler == &be
    assert >something_08_handler == &b8
    assert >something_09_handler == &b7
    assert >something_0a_handler == &b0
    assert >something_0b_handler == &b0
    assert >something_0c_handler == &b6
    assert >something_0d_handler == &b6
    assert >something_0e_handler == &b6
    assert >something_0f_handler == &b6
    assert >something_10_handler == &b7
    assert >something_11_handler == &b2
    assert >something_12_handler == &b7
    assert >something_13_handler == &af
    assert >something_14_handler == &b7
    assert >something_15_handler == &af
    assert >something_16_handler == &bd
    assert >something_17_handler == &be
    assert >something_18_handler == &bd
    assert >something_19_handler == &b7
    assert >something_1a_handler == &af
    assert >something_1b_handler == &b2
    assert >something_1c_handler == &b6
    assert >something_1d_handler == &b7
    assert >something_1e_handler == &b4
    assert >something_1f_handler == &b3
    assert >something_20_handler == &b6
    assert >something_21_handler == &b7
    assert >something_22_handler == &b7
    assert >something_23_handler == &b7
    assert >string_false == &a7
    assert >string_true == &a7
    assert copyright - rom_header == &14
    assert fx163_192_2 == &a746
    assert opcode_05_06_table - 5 == &a72f
    assert opcode_subrange1_jump_table_high - 202 == &a920
    assert opcode_subrange1_jump_table_low - 202 == &a919
    assert opcode_subrange2_jump_table_high - 120 == &a951
    assert opcode_subrange2_jump_table_low - 120 == &a94d
    assert opcode_subrange3_jump_table_high - 114 == &a69a
    assert opcode_subrange3_jump_table_low - 114 == &a595
    assert osbyte_163_192_x_minus_1_table - 1 == &8094
    assert osbyte_acknowledge_escape == &7e
    assert osbyte_enter_language == &8e
    assert osbyte_inkey == &81
    assert osbyte_read_adc_or_get_buffer_status == &80
    assert osbyte_read_char_at_cursor == &87
    assert osbyte_read_high_order_address == &82
    assert osbyte_read_himem == &84
    assert osbyte_read_himem_for_mode == &85
    assert osbyte_read_os_version == &00
    assert osbyte_read_oshwm == &83
    assert osbyte_read_vdu_variable == &a0
    assert osbyte_read_write_last_break_type == &fd
    assert osbyte_read_write_tab_char == &db
    assert osbyte_select_output_stream == &03
    assert osbyte_select_printer == &05
    assert osfind_close == &00
    assert osfind_open_input == &40
    assert osfind_open_output == &80
    assert osword_read_io_memory == &05
    assert osword_read_line == &00
    assert our_osbyte_a == &a3
    assert our_osbyte_x == &c0
    assert something_else_table - 145 == &a6a3
    assert something_else_table - 38 == &a70e
    assert something_else_table - 51 == &a701
    assert something_else_table - 56 == &a6fc
    assert something_else_table - 59 == &a6f9
    assert something_else_table - 64 == &a6f4
    assert something_jump_table_high_minus_128-128 == &b072
    assert something_jump_table_low_minus_128-128 == &b04e
    assert something_table - 104 == &a6a9
    assert something_table - 108 == &a6a5
    assert something_table - 84 == &a6bd
    assert something_table - 90 == &a6b7
    assert something_table - 92 == &a6b5
    assert something_table - 98 == &a6af

save pydis_start, pydis_end
