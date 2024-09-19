; Constants
osbyte_enter_language               = 142
osbyte_read_write_last_break_type   = 253
osbyte_select_output_stream         = 3
osword_read_io_memory               = 5
our_osbyte_a                        = 163
our_osbyte_x                        = 192

; Memory locations
l006a       = &006a
l006b       = &006b
l006c       = &006c
l006d       = &006d
l006e       = &006e
osbyte_a    = &00ef
osbyte_x    = &00f0
osbyte_y    = &00f1
romsel_copy = &00f4
l00fd       = &00fd
l0100       = &0100
brkv        = &0202
l041a       = &041a
l062e       = &062e
osword      = &fff1
osbyte      = &fff4
oscli       = &fff7

    org &8000

; Sideways ROM header
.rom_header
.language_entry
.pydis_start
    jmp language_handler                                              ; 8000: 4c 6e 80    Ln.

.service_entry
    jmp service_handler                                               ; 8003: 4c 13 80    L..

.rom_type
    equb &c2                                                          ; 8006: c2          .
.copyright_offset
    equb copyright - rom_header                                       ; 8007: 0f          .
.binary_version
    equb &0a                                                          ; 8008: 0a          .
.title
    equs "Pascal"                                                     ; 8009: 50 61 73... Pas
.copyright
    equb 0                                                            ; 800f: 00          .
    equs "(C)"                                                        ; 8010: 28 43 29    (C)

.service_handler
    cmp #7                                                            ; 8013: c9 07       ..
    bne rts                                                           ; 8015: d0 28       .(
; Unrecognised OSBYTE handler
    lda osbyte_a                                                      ; 8017: a5 ef       ..
    cmp #our_osbyte_a                                                 ; 8019: c9 a3       ..
    bne unrecognised_osbyte_handler_done                              ; 801b: d0 20       .
    lda osbyte_x                                                      ; 801d: a5 f0       ..
    cmp #our_osbyte_x                                                 ; 801f: c9 c0       ..
    bne unrecognised_osbyte_handler_done                              ; 8021: d0 1a       ..
    lda osbyte_y                                                      ; 8023: a5 f1       ..
    bne unrecognised_osbyte_handler_done                              ; 8025: d0 16       ..
; TODO: do we read the last break type then ignore the result here?
    ldx #&80                                                          ; 8027: a2 80       ..
    jsr set_last_break_type_to_x_and_return_with_old_break_type_in_x  ; 8029: 20 67 80     g.
    lda #osbyte_select_output_stream                                  ; 802c: a9 03       ..
    ldx #%00010110                                                    ; 802e: a2 16       ..
    jsr osbyte                                                        ; 8030: 20 f4 ff     ..            ; Select output stream based on X: disable RS232 output; disable VDU driver; disable printer output; disable printer despite CTRL-B/C state; disable SPOOLed output; enable printer output even without VDU 1 first
    stx l0100                                                         ; 8033: 8e 00 01    ...            ; X is the previous output stream status byte
    lda #osbyte_enter_language                                        ; 8036: a9 8e       ..
    ldx romsel_copy                                                   ; 8038: a6 f4       ..             ; X=ROM number
    jmp osbyte                                                        ; 803a: 4c f4 ff    L..            ; Enter language ROM X

.unrecognised_osbyte_handler_done
    lda #7                                                            ; 803d: a9 07       ..
.rts
    rts                                                               ; 803f: 60          `

; TODO: Why do we using OSCLI *FX instead of just executing OSBYTE directly? Wouldn't
; that be shorter? I suspect we deliberately want the error-generating behaviour of *FX
; because this is all related to invoking the other ROM and generating an error if it's
; missing.
; TODO: I suspect in terms of a PALPROM conversion this code could be removed to free
; up space and the startup simplified, because it's not possible to have only one ROM
; present.
; It is assumed both of these strings share the same high byte.
.fx163_192_1
    equs "fx163,192,1"                                                ; 8040: 66 78 31... fx1
    equb &0d                                                          ; 804b: 0d          .
.fx163_192_3
    equs "fx163,192,3"                                                ; 804c: 66 78 31... fx1
    equb &0d                                                          ; 8057: 0d          .

.brkv_handler
    ldy #0                                                            ; 8058: a0 00       ..
.loop_c805a
    lda (l00fd),y                                                     ; 805a: b1 fd       ..
    sta l041a,y                                                       ; 805c: 99 1a 04    ...
    iny                                                               ; 805f: c8          .
    tya                                                               ; 8060: 98          .
    bne loop_c805a                                                    ; 8061: d0 f7       ..
    ldx #<fx163_192_3                                                 ; 8063: a2 4c       .L
    bne in_practice_do_fx163_192_3                                    ; 8065: d0 3f       .?             ; always branch
.set_last_break_type_to_x_and_return_with_old_break_type_in_x
    lda #osbyte_read_write_last_break_type                            ; 8067: a9 fd       ..
    ldy #3                                                            ; 8069: a0 03       ..
    jmp osbyte                                                        ; 806b: 4c f4 ff    L..            ; Read/Write type of last reset

.language_handler
    cli                                                               ; 806e: 58          X
    cld                                                               ; 806f: d8          .
    ldx #&ff                                                          ; 8070: a2 ff       ..
    txs                                                               ; 8072: 9a          .
    lda #<brkv_handler                                                ; 8073: a9 58       .X
    sta brkv                                                          ; 8075: 8d 02 02    ...
    lda #>brkv_handler                                                ; 8078: a9 80       ..
    sta brkv+1                                                        ; 807a: 8d 03 02    ...
    ldx #0                                                            ; 807d: a2 00       ..
    jsr set_last_break_type_to_x_and_return_with_old_break_type_in_x  ; 807f: 20 67 80     g.
    txa                                                               ; 8082: 8a          .
; branch if last_break_type is one of the standard values, don't branch if our
; unrecognised OSBYTE handler set it to &80. TODO: I suspect what's happening here is
; that our language entry attempts to invoke the other ROM via *FX163,192,1 and that
; ROM in due course will attempt to enter us via *FX163,192,0 which will lead to us
; getting back here with b7 of last break type set.
    bpl do_fx163_192_1                                                ; 8083: 10 1f       ..
    lda #1                                                            ; 8085: a9 01       ..
    sta l006b                                                         ; 8087: 85 6b       .k
    lda #0                                                            ; 8089: a9 00       ..
    sta l006a                                                         ; 808b: 85 6a       .j
    sta l006c                                                         ; 808d: 85 6c       .l
    sta l006d                                                         ; 808f: 85 6d       .m
    ldx #<(l006a)                                                     ; 8091: a2 6a       .j
    ldy #>(l006a)                                                     ; 8093: a0 00       ..
    lda #osword_read_io_memory                                        ; 8095: a9 05       ..
    jsr osword                                                        ; 8097: 20 f1 ff     ..            ; Read byte of I/O processor memory
    lda #osbyte_select_output_stream                                  ; 809a: a9 03       ..
    ldx l006e                                                         ; 809c: a6 6e       .n
    jsr osbyte                                                        ; 809e: 20 f4 ff     ..            ; Select output stream based on X
    jmp (l062e)                                                       ; 80a1: 6c 2e 06    l..

.do_fx163_192_1
    ldx #<fx163_192_1                                                 ; 80a4: a2 40       .@
.in_practice_do_fx163_192_3
    ldy #>fx163_192_1                                                 ; 80a6: a0 80       ..
    jmp oscli                                                         ; 80a8: 4c f7 ff    L..

    equb &b1, &18, &aa, &c8, &b1, &18, &60, &a0, &24, &20, &ab, &80   ; 80ab: b1 18 aa... ...
    equb &86, &76, &85                                                ; 80b7: 86 76 85    .v.
    equs "w`AND DIV IN MOD OR ARRAY BEGIN CASE CONST DO DOWNTO ELS"   ; 80ba: 77 60 41... w`A
    equs "E END FILE FOR FUNCTION GOTO IF LABEL NIL NOT OF PACKED "   ; 80f2: 45 20 45... E E
    equs "PROCEDURE PROGRAM RECORD REPEAT SET THEN TO TYPE UNTIL V"   ; 812a: 50 52 4f... PRO
    equs "AR WHILE WITH "                                             ; 8162: 41 52 20... AR
    equb   0, &20, &b2, &80, &a9, &17, &85, &80, &a2,   0, &a0,   1   ; 8170: 00 20 b2... . .
    equb &b1, &76, &dd, &bc, &80, &d0,   8, &e8, &c8, &c9, &20, &d0   ; 817c: b1 76 dd... .v.
    equb &f3, &f0, &0d, &bd, &bc, &80, &e8, &c9, &21, &b0, &f8, &e6   ; 8188: f3 f0 0d... ...
    equb &80, &a8, &d0, &e2, &a0, &26, &d0, &26, &20, &b2, &80, &a0   ; 8194: 80 a8 d0... ...
    equb &20, &20, &ab, &80, &86, &80, &85, &81, &f0, &16, &a0,   2   ; 81a0: 20 20 ab...   .
    equb &b1, &80, &85, &7f, &88, &b1, &80, &85, &7e, &b1, &7e, &d1   ; 81ac: b1 80 85... ...
    equb &76, &d0, &11, &c8, &c9, &20, &d0, &f5, &a0, &20, &a5, &80   ; 81b8: 76 d0 11... v..
    equb &91, &18, &c8, &a5, &81, &91, &18, &60, &a0, &22, &20, &c2   ; 81c4: 91 18 c8... ...
    equb &81, &a0,   3, &b1, &80, &aa, &c8, &b1, &80, &4c, &a4, &81   ; 81d0: 81 a0 03... ...
    equb   3,   1,   0,   0, &80, &ff, &ff, &ff, &7f,   0,   0,   4   ; 81dc: 03 01 00... ...
    equb   1,   0,   0,   0,   0,   1,   0,   0,   0,   0,   0,   1   ; 81e8: 01 00 00... ...
    equb   2,   0,   0,   0,   0, &ff,   0,   0,   0,   0,   0,   1   ; 81f4: 02 00 00... ...
    equs "ABS "                                                       ; 8200: 41 42 53... ABS
    equb   5, &ff, &81,   0,   0, &49, &dc, &81, &c6                  ; 8204: 05 ff 81... ...
    equs "ARCTAN "                                                    ; 820d: 41 52 43... ARC
    equb   4, &0c, &82,   4, &82, &49,   0,   0, &d0                  ; 8214: 04 0c 82... ...
    equs "BOOLEAN "                                                   ; 821d: 42 4f 4f... BOO
    equb   5, &1c, &82, &14, &82, &44, &e8, &81,   0,   0,   1,   0   ; 8225: 05 1c 82... ...
    equb   1,   0,   0,   0                                           ; 8231: 01 00 00... ...
    equs "CHAR "                                                      ; 8235: 43 48 41... CHA
    equb   5, &34, &82, &25, &82, &44, &f4, &81,   0,   0,   1,   0   ; 823a: 05 34 82... .4.
    equb   1,   0,   0,   0                                           ; 8246: 01 00 00... ...
    equs "CHR "                                                       ; 824a: 43 48 52... CHR
    equb   5, &49, &82, &3a, &82, &49, &f4, &81, &bf                  ; 824e: 05 49 82... .I.
    equs "COS "                                                       ; 8257: 43 4f 53... COS
    equb   4, &56, &82, &4e, &82, &49,   0,   0, &cc                  ; 825b: 04 56 82... .V.
    equs "DISPOSE "                                                   ; 8264: 44 49 53... DIS
    equb   0, &63, &82, &5b, &82, &46, &b4                            ; 826c: 00 63 82... .c.
    equs "EOF "                                                       ; 8273: 45 4f 46... EOF
    equb   5, &72, &82, &6c, &82, &49, &e8, &81, &ae                  ; 8277: 05 72 82... .r.
    equs "EOLN "                                                      ; 8280: 45 4f 4c... EOL
    equb   5, &7f, &82, &77, &82, &49, &e8, &81, &ad                  ; 8285: 05 7f 82... ...
    equs "EXP "                                                       ; 828e: 45 58 50... EXP
    equb   4, &8d, &82, &85, &82, &49,   0,   0, &cd                  ; 8292: 04 8d 82... ...
    equs "FALSE "                                                     ; 829b: 46 41 4c... FAL
    equb   5, &9a, &82, &92, &82, &3f, &e8, &81,   0,   0,   0,   0   ; 82a1: 05 9a 82... ...
    equb   0                                                          ; 82ad: 00          .
    equs "LN "                                                        ; 82ae: 4c 4e 20    LN
    equb   4, &ad, &82, &a1, &82, &49,   0,   0, &ce                  ; 82b1: 04 ad 82... ...
    equs "GET "                                                       ; 82ba: 47 45 54... GET
    equb   0, &b9, &82, &b1, &82, &46, &8d                            ; 82be: 00 b9 82... ...
    equs "INTEGER "                                                   ; 82c5: 49 4e 54... INT
    equb   5, &c4, &82, &be, &82, &44, &dc, &81,   0,   0,   1,   0   ; 82cd: 05 c4 82... ...
    equb   4,   0,   0,   0                                           ; 82d9: 04 00 00... ...
    equs "MAXINT "                                                    ; 82dd: 4d 41 58... MAX
    equb   5, &dc, &82, &cd, &82, &3f, &dc, &81,   0, &ff, &ff, &ff   ; 82e4: 05 dc 82... ...
    equb &7f                                                          ; 82f0: 7f          .
    equs "NEW "                                                       ; 82f1: 4e 45 57... NEW
    equb   0, &f0, &82, &e4, &82, &46, &b2                            ; 82f5: 00 f0 82... ...
    equs "ODD "                                                       ; 82fc: 4f 44 44... ODD
    equb   5, &fb, &82, &f5, &82, &49, &e8, &81, &be                  ; 8300: 05 fb 82... ...
    equs "ORD "                                                       ; 8309: 4f 52 44... ORD
    equb   5,   8, &83,   0, &83, &49, &dc, &81, &c0                  ; 830d: 05 08 83... ...
    equs "PAGE "                                                      ; 8316: 50 41 47... PAG
    equb   0, &15, &83, &0d, &83, &46, &89                            ; 831b: 00 15 83... ...
    equs "PRED "                                                      ; 8322: 50 52 45... PRE
    equb   5, &21, &83, &1b, &83, &49,   0,   0, &c2                  ; 8327: 05 21 83... .!.
    equs "PUT "                                                       ; 8330: 50 55 54... PUT
    equb   0, &2f, &83, &27, &83, &46, &8f                            ; 8334: 00 2f 83... ./.
    equs "REAL "                                                      ; 833b: 52 45 41... REA
    equb   4, &3a, &83, &34, &83, &44,   0,   0,   0,   0,   1,   0   ; 8340: 04 3a 83... .:.
    equb   5,   0,   0,   0                                           ; 834c: 05 00 00... ...
    equs "RESET "                                                     ; 8350: 52 45 53... RES
    equb   0, &4f, &83, &40, &83, &46, &a6                            ; 8356: 00 4f 83... .O.
    equs "READ "                                                      ; 835d: 52 45 41... REA
    equb   0, &5c, &83, &56, &83, &46, &88                            ; 8362: 00 5c 83... .\.
    equs "READLN "                                                    ; 8369: 52 45 41... REA
    equb   0, &68, &83, &62, &83, &46, &87                            ; 8370: 00 68 83... .h.
    equs "REWRITE "                                                   ; 8377: 52 45 57... REW
    equb   0, &76, &83, &70, &83, &46, &aa                            ; 837f: 00 76 83... .v.
    equs "ROUND "                                                     ; 8386: 52 4f 55... ROU
    equb   5, &85, &83, &7f, &83, &49, &dc, &81, &d2                  ; 838c: 05 85 83... ...
    equs "SIN "                                                       ; 8395: 53 49 4e... SIN
    equb   4, &94, &83, &8c, &83, &49,   0,   0, &cb                  ; 8399: 04 94 83... ...
    equs "SQR "                                                       ; 83a2: 53 51 52... SQR
    equb   5, &a1, &83, &99, &83, &49, &dc, &81, &c7                  ; 83a6: 05 a1 83... ...
    equs "SQRT "                                                      ; 83af: 53 51 52... SQR
    equb   4, &ae, &83, &a6, &83, &49,   0,   0, &cf                  ; 83b4: 04 ae 83... ...
    equs "SUCC "                                                      ; 83bd: 53 55 43... SUC
    equb   5, &bc, &83, &b4, &83, &49,   0,   0, &c1                  ; 83c2: 05 bc 83... ...
    equs "TEXT "                                                      ; 83cb: 54 45 58... TEX
    equb &0e, &ca, &83, &c2, &83, &44, &f4, &81,   0,   0,   1,   0   ; 83d0: 0e ca 83... ...
    equb   6,   0,   0,   0                                           ; 83dc: 06 00 00... ...
    equs "TRUE "                                                      ; 83e0: 54 52 55... TRU
    equb   5, &df, &83, &d0, &83, &3f, &e8, &81,   0,   1,   0,   0   ; 83e5: 05 df 83... ...
    equb   0                                                          ; 83f1: 00          .
    equs "TRUNC "                                                     ; 83f2: 54 52 55... TRU
    equb   5, &f1, &83, &e5, &83, &49, &dc, &81, &d1                  ; 83f8: 05 f1 83... ...
    equs "WRITE "                                                     ; 8401: 57 52 49... WRI
    equb   0,   0, &84, &f8, &83, &46, &95                            ; 8407: 00 00 84... ...
    equs "WRITELN "                                                   ; 840e: 57 52 49... WRI
    equb   0, &0d, &84,   7, &84, &46, &94                            ; 8416: 00 0d 84... ...
    equs "FORWARD "                                                   ; 841d: 46 4f 52... FOR
    equb   0, &1c, &84, &16, &84                                      ; 8425: 00 1c 84... ...
    equs ";IVAL "                                                     ; 842a: 3b 49 56... ;IV
    equb   5, &2a, &84, &25, &84, &48, &dc, &81, &d3,   0             ; 8430: 05 2a 84... .*.
    equs "RVAL "                                                      ; 843a: 52 56 41... RVA
    equb   4, &39, &84, &30, &84, &48,   0,   0, &d4,   0             ; 843f: 04 39 84... .9.
    equs "OTHERWISE "                                                 ; 8449: 4f 54 48... OTH
    equb   0, &48, &84, &3f, &84                                      ; 8453: 00 48 84... .H.
    equs "<PLOT "                                                     ; 8458: 3c 50 4c... <PL
    equb   5, &58, &84, &53, &84, &45, &dc, &81, &e2,   3             ; 845e: 05 58 84... .X.
    equs "MODE "                                                      ; 8468: 4d 4f 44... MOD
    equb   5, &67, &84, &5e, &84, &45, &dc, &81, &e4,   1             ; 846d: 05 67 84... .g.
    equs "SOUND "                                                     ; 8477: 53 4f 55... SOU
    equb   5, &76, &84, &6d, &84, &45, &dc, &81, &e5,   4             ; 847d: 05 76 84... .v.
    equs "ENVELOPE "                                                  ; 8487: 45 4e 56... ENV
    equb   5, &86, &84, &7d, &84, &45, &dc, &81, &e6, &0e             ; 8490: 05 86 84... ...
    equs "OSCLI "                                                     ; 849a: 4f 53 43... OSC
    equb   9, &99, &84, &90, &84, &45,   0,   0, &e7,   1             ; 84a0: 09 99 84... ...
    equs "POINT "                                                     ; 84aa: 50 4f 49... POI
    equb   5, &a9, &84, &a0, &84, &48, &dc, &81, &ec,   1             ; 84b0: 05 a9 84... ...
    equs "ADVAL "                                                     ; 84ba: 41 44 56... ADV
    equb   5, &b9, &84, &b0, &84, &48, &dc, &81, &ea,   0             ; 84c0: 05 b9 84... ...
    equs "INKEY "                                                     ; 84ca: 49 4e 4b... INK
    equb   5, &c9, &84, &c0, &84, &48, &dc, &81, &eb,   0             ; 84d0: 05 c9 84... ...
    equs "TIME "                                                      ; 84da: 54 49 4d... TIM
    equb   5, &d9, &84, &d0, &84, &48, &dc, &81, &e9,   0             ; 84df: 05 d9 84... ...
    equs "SETTIME "                                                   ; 84e9: 53 45 54... SET
    equb   5, &e8, &84, &df, &84, &45, &dc, &81, &e8,   1             ; 84f1: 05 e8 84... ...
    equs "VDU "                                                       ; 84fb: 56 44 55... VDU
    equb   5, &fa, &84, &f1, &84, &45, &dc, &81, &e3                  ; 84ff: 05 fa 84... ...
    equs "?CODE0 "                                                    ; 8508: 3f 43 4f... ?CO
    equb   5,   8, &85, &ff, &84, &48, &dc, &81, &ee,   3             ; 850f: 05 08 85... ...
    equs "CODE1 "                                                     ; 8519: 43 4f 44... COD
    equb   5, &18, &85, &0f, &85, &48, &dc, &81, &ed,   2             ; 851f: 05 18 85... ...
    equs "FREE "                                                      ; 8529: 46 52 45... FRE
    equb   5, &28, &85, &1f, &85, &48, &dc, &81, &f9,   0             ; 852e: 05 28 85... .(.
    equs "CLAIM "                                                     ; 8538: 43 4c 41... CLA
    equb   5, &37, &85, &2e, &85, &48, &dc, &81, &fa,   0             ; 853e: 05 37 85... .7.
    equs "RELEASE "                                                   ; 8548: 52 45 4c... REL
    equb   5, &47, &85, &3e, &85, &45, &dc, &81, &a8,   2             ; 8550: 05 47 85... .G.
    equs "INPUT OUTPUT "                                              ; 855a: 49 4e 50... INP
    equb &e8, &81, &f4, &81, &dc, &81, &50, &85,   1,   1,   0,   0   ; 8567: e8 81 f4... ...
    equb   1,   1,   1,   1,   1,   1,   0,   0,   0,   1,   1,   1   ; 8573: 01 01 01... ...
    equb   0,   1, &86, &70, &84, &71, &a0, &0d, &b9, &59, &85, &91   ; 857f: 00 01 86... ...
    equb &70, &88, &10, &f8, &60, &a0, &42, &a2, &1a, &bd, &67, &85   ; 858b: 70 88 10... p..
    equb &91, &18, &88, &ca, &10, &f7, &60, &86, &72, &84, &73, &a0   ; 8597: 91 18 88... ...
    equb   0, &b1, &72, &85, &74, &c8, &b1, &72, &85, &75, &a0, &13   ; 85a3: 00 b1 72... ..r
    equb &b1, &1a, &85, &7a, &c8, &b1, &1a, &85, &7b, &a5, &7a, &85   ; 85af: b1 1a 85... ...
    equb &7c, &a5, &7b, &85, &7d, &a0,   0, &b1, &7a, &aa, &c8, &b1   ; 85bb: 7c a5 7b... |.{
    equb &7a, &86, &7a, &85, &7b, &f0, &0c, &c8, &b1, &7a, &c5, &74   ; 85c7: 7a 86 7a... z.z
    equb &c8, &b1, &7a, &e5, &75, &90, &de, &a0, &16, &a2,   3, &b5   ; 85d3: c8 b1 7a... ..z
    equb &7a, &91, &1a, &88, &ca, &10, &f8, &60,   8, &0e,   0,   0   ; 85df: 7a 91 1a... z..
    equb   6, &14, &18,   1,   0,   2,   3,   0,   0,   1,   4,   7   ; 85eb: 06 14 18... ...
    equb   7,   7,   7,   1,   1, &86, &72, &84, &73, &a8, &b1        ; 85f7: 07 07 07... ...
    equs "r` "                                                        ; 8602: 72 60 20    r`
    equb &b2, &80, &a9,   0, &85, &78, &85, &79, &85, &7a, &85, &7b   ; 8605: b2 80 a9... ...
    equb &a0,   2, &b1, &76, &38, &e9, &30, &90, &20, &c9, &0a, &90   ; 8611: a0 02 b1... ...
    equb   2, &e9,   7, &0a, &0a, &0a, &0a, &a2,   4, &0a             ; 861d: 02 e9 07... ...
    equs "&x&y&z&{"                                                   ; 8627: 26 78 26... &x&
    equb &b0,   6, &ca, &d0, &f2, &c8, &d0, &dc, &a9,   1, &60, &a0   ; 862f: b0 06 ca... ...
    equb &0c, &a2,   4, &b5, &77, &91, &1a, &88, &ca, &d0, &f8, &8a   ; 863b: 0c a2 04... ...
    equb &60, &86, &84, &84, &85, &a9,   0, &a8, &20, &da, &ff, &c9   ; 8647: 60 86 84... `..
    equb   4, &90, &f1, &a6, &84, &a4, &85, &a9, &40, &20, &ce, &ff   ; 8653: 04 90 f1... ...
    equb &a8, &f0, &e5, &a9,   0, &20, &ce, &ff, &a9,   6, &a2, &84   ; 865f: a8 f0 e5... ...
    equb &a0,   0, &4c, &dd, &ff, &50,   0, &af,   1, &ce, &38, &dd   ; 866b: a0 00 4c... ..L
    equb   0, &2b,   2, &f7,   1, &10,   9, &f2, &a7,   0,   0,   0   ; 8677: 00 2b 02... .+.
    equb   0, &10, &0f, &f2, &ab,   0,   0,   0,   0, &10, &15,   7   ; 8683: 00 10 0f... ...
    equb &0b,   1,   0,   4,   1,   0,   0,   0, &3c,   0,   0,   0   ; 868f: 0b 01 00... ...
    equb &28, &0b, &10, &c8,   7, &0b,   1,   0,   4,   1,   0,   0   ; 869b: 28 0b 10... (..
    equb   0,   5,   0,   0,   0, &28, &0b, &10, &d8,   7, &0b,   2   ; 86a7: 00 05 00... ...
    equb   0,   4,   0,   0,   0,   0,   8,   0,   0,   0, &28, &0b   ; 86b3: 00 04 00... ...
    equb &3a, &df,   1,   7, &0b,   1,   0,   4,   1,   0,   0,   0   ; 86bf: 3a df 01... :..
    equb &16,   0,   0,   0, &28, &0b                                 ; 86cb: 16 00 00... ...
    equs "D)5"                                                        ; 86d1: 44 29 35    D)5
    equb &b3,   1, &57,   0, &fb, &2f, &11, &37, &0f, &80,   5,   5   ; 86d4: b3 01 57... ..W
    equs "`G."                                                        ; 86e0: 60 47 2e    `G.
    equb &f8, &82, &37, &47,   1, &83, &86                            ; 86e3: f8 82 37... ..7
    equs "G%/7G"                                                      ; 86ea: 47 25 2f... G%/
    equb   1, &0f, &82,   5, &ff                                      ; 86ef: 01 0f 82... ...
    equs "v,~?G"                                                      ; 86f4: 76 2c 7e... v,~
    equb   1, &0f, &80, &c3, &17, &80, &0f, &7e, &c3, &17, &7e, &10   ; 86f9: 01 0f 80... ...
    equb &d3, &10, &c8, &0f, &80, &f3, &30, &0b,   9, &26, &0b,   9   ; 8705: d3 10 c8... ...
    equb   5, &a4, &61, &47,   8, &48, &fa, &37,   0,   0,   2, &7d   ; 8711: 05 a4 61... ..a
    equb &b3,   1, &21,   0, &f7, &34, &86, &a1, &0e, &7d, &b3,   1   ; 871d: b3 01 21... ..!
    equb &25,   0, &f7                                                ; 8729: 25 00 f7    %..
    equs "7G="                                                        ; 872c: 37 47 3d    7G=
    equb &f7, &41, &47, &18, &f7, &3e, &47,   9, &2f, &10, &b0, &aa   ; 872f: f7 41 47... .AG
    equb   1,   1,   0, &2f, &10, &b0, &30, &12,   7, &0b,   9, &a2   ; 873b: 01 01 00... ...
    equb &46, &23, &f7, &3e, &47,   7, &f8, &74, &fa, &17, &76, &f8   ; 8747: 46 23 f7... F#.
    equb &78, &0f                                                     ; 8753: 78 0f       x.
    equs "t_G"                                                        ; 8755: 74 5f 47    t_G
    equb   6, &9e, &1b, &46, &0f, &f8, &78, &0f, &76, &72, &17, &72   ; 8758: 06 9e 1b... ...
    equb &0a, &72, &30, &0b,   9, &26, &fb, &2f, &11, &3e, &0f, &78   ; 8764: 0a 72 30... .r0
    equb &c3, &17, &78, &7d, &b3,   1, &39,   6, &10, &11, &0b,   9   ; 8770: c3 17 78... ..x
    equb &0b,   9, &0b, &0d, &72, &c4, &b8, &22,   1, &0b, &11, &17   ; 877c: 0b 09 0b... ...
    equb &15, &b1, &0a, &15, &1d, &7c,   3, &b9, &15,   1, &7d, &b3   ; 8788: 15 b1 0a... ...
    equb   1, &21,   0, &2f, &0a, &5a, &b2,   4, &0a, &5a, &19, &12   ; 8794: 01 21 00... .!.
    equb &5a, &f5, &5a,   2, &0f, &78, &27, &0a, &5a, &f2, &22, &0f   ; 87a0: 5a f5 5a... Z.Z
    equb &88, &c3, &17, &88, &0f, &88,   5, &7f, &61, &a1, &1e, &7d   ; 87ac: 88 c3 17... ...
    equb &b3,   1, &3f,   6, &f7                                      ; 87b8: b3 01 3f... ..?
    equs "5G4"                                                        ; 87bd: 35 47 34    5G4
    equb &fc, &13, &1c, &0b, &1c, &c3, &13, &1c, &0f, &0a, &0b, &1c   ; 87c0: fc 13 1c... ...
    equb &72, &c3, &17, &20, &0a, &20, &18, &a9, &20, &47, &ee, &0b   ; 87cc: 72 c3 17... r..
    equb &1c,   5, &fa, &61, &47,   6,   5, &fa, &13, &1c, &4f, &4d   ; 87d8: 1c 05 fa... ...
    equb   3, &b1, &0b, &1c, &7c,   3, &b1, &0f, &0a, &c3, &0b, &1c   ; 87e4: 03 b1 0b... ...
    equb &7c,   4, &7d, &b3,   1, &18,   0, &fc, &2f, &17, &96, &10   ; 87f0: 7c 04 7d... |.}
    equb &c2, &3a, &67,   1, &a7,   0,   0, &ff, &3c,   9, &40, &86   ; 87fc: c2 3a 67... .:g
    equb &47,   8,   0, &20, &2f, &11, &4f, &30,   0, &20, &2f, &11   ; 8808: 47 08 00... G..
    equb &50, &fe, &11, &49, &fe, &11, &42, &7d, &b3,   1, &28,   4   ; 8814: 50 fe 11... P..
    equb &10, &0b,   5, &3c,   5,   1, &bc, &c7,   1, &9f, &2f, &10   ; 8820: 10 0b 05... ...
    equb &15, &30, &0b, &0b, &f3,   0, &0d, &21, &bd, &b9,   1, &7d   ; 882c: 15 30 0b... .0.
    equb &b3,   1, &24,   0, &b1, &9f, &7c,   8,   5,   1, &2f, &17   ; 8838: b3 01 24... ..$
    equb &8e, &2f, &10, &c2, &4b, &18,   0, &20, &55, &10, &c2, &4b   ; 8844: 8e 2f 10... ./.
    equb &18,   0, &7b, &55, &84, &47, &27, &f8, &8e,   5             ; 8850: 18 00 7b... ..{
    equs "<_G"                                                        ; 885a: 3c 5f 47    <_G
    equb &0a, &9e, &5d, &48, &0c,   2,   1, &0b,   0, &9f, &2f, &10   ; 885d: 0a 9e 5d... ..]
    equb &15, &0f, &8e, &f3, &10, &c2, &4b, &18, &21, &0f, &8e, &c3   ; 8869: 15 0f 8e... ...
    equb &17, &8e, &10, &c2, &8d, &46, &cb, &7d, &b3,   1, &2e,   4   ; 8875: 17 8e 10... ...
    equb   5,   1, &13, &11, &0b,   9, &fc, &60, &0b, &0d,   6, &ff   ; 8881: 05 01 13... ...
    equb &ff, &61, &85, &47,   8,   5,   4, &13, &11, &46, &0d, &0b   ; 888d: ff 61 85... .a.
    equb &0d,   5, &ff, &61, &47,   6,   5,   2, &13, &11, &b5, &11   ; 8899: 0d 05 ff... ...
    equb   0,   4, &b3,   1, &27,   2, &0b,   9, &17, &0d, &b1, &0e   ; 88a5: 00 04 b3... ...
    equb &0d, &7c,   3, &b1, &0e, &0e, &7c,   3, &7d, &b3,   1, &29   ; 88b1: 0d 7c 03... .|.
    equb   4, &0b,   9, &13, &0d, &b1, &0f, &0d, &7c, &0b, &b1, &0f   ; 88bd: 04 0b 09... ...
    equb &0f, &7c, &0b, &7d, &b3,   1, &25,   0, &df, &0d, &b1, &0b   ; 88c9: 0f 7c 0b... .|.
    equb   9, &7c,   3, &7d, &b3,   1, &29,   0, &b1, &0b,   9, &7c   ; 88d5: 09 7c 03... .|.
    equb &0e, &f8, &78, &17, &98, &b1, &30, &0b, &0d, &7c, &0b, &7d   ; 88e1: 0e f8 78... ..x
    equb &b3,   1, &2e,   0, &b1, &0b,   9, &0b, &0d, &7c, &0f, &f8   ; 88ed: b3 01 2e... ...
    equb &86, &17, &7c, &7d, &b3,   1, &2e,   0, &0b, &0d,   5, &ff   ; 88f9: 86 17 7c... ..|
    equb &61, &47, &0e, &b1, &0b,   9,   5, &2a, &72, &0b, &0d, &7c   ; 8905: 61 47 0e... aG.
    equb &0f, &46, &0c, &b1, &0b,   9, &7c, &0e, &b1, &0b, &0d, &7c   ; 8911: 0f 46 0c... .F.
    equb   3, &7d, &b3,   1, &25,   0, &0b,   9,   5,   1, &5c, &47   ; 891d: 03 7d b3... .}.
    equb   7, &4f, &2f,   3, &46, &17, &0b,   9, &f8, &86, &5c, &47   ; 8929: 07 4f 2f... .O/
    equb   7, &4f, &30,   3, &46, &0b, &4f, &2e,   3, &b1, &0b,   9   ; 8935: 07 4f 30... .O0
    equb &c4, &7c,   3, &0b,   9, &2f, &17, &7c, &7d, &b3,   1, &26   ; 8941: c4 7c 03... .|.
    equb   0, &f8, &a4, &fc, &5d, &47, &19, &fc, &2f, &17, &a4, &0f   ; 894d: 00 f8 a4... ...
    equb &a6, &0f                                                     ; 8959: a6 0f       ..
    equs "|]G"                                                        ; 895b: 7c 5d 47    |]G
    equb   7, &b1, &f8, &a6, &7c, &12, &b1, &f8, &a8, &0f, &aa, &7c   ; 895e: 07 b1 f8... ...
    equb &11, &7d, &b3,   1, &36,   1,   9,   9, &a9,   5, &0a, &0f   ; 896a: 11 7d b3... .}.
    equb &18, &a9,   3, &84, &11, &1c, &b5, &1c,   0,   1, &b3,   1   ; 8976: 18 a9 03... ...
    equb &47,   8,   6, &fc, &85, &0e,   9,   5, &ed,   5, &85, &ee   ; 8982: 47 08 06... G..
    equb   5, &80, &76, &13, &21,   9,   9, &a9,   7,   9, &0e, &a9   ; 898e: 05 80 76... ..v
    equb &3f, &84, &47,   6,   5,   2, &13, &25, &0b, &21,   5,   3   ; 899a: 3f 84 47... ?.G
    equb &5c, &47,   6,   5,   5, &13, &25, &0b, &21, &fc             ; 89a6: 5c 47 06... \G.
    equs "\G^"                                                        ; 89b0: 5c 47 5e    \G^
    equb &f5, &0f, &0b, &1d, &13, &25,   9, &0e, &a9, &3f, &47, &11   ; 89b3: f5 0f 0b... ...
    equb   9, &20, &47, &0b, &b1, &0b, &12, &0b, &12, &7c, &0a, &13   ; 89bf: 09 20 47... . G
    equb &25, &46, &13,   9, &11, &47, &0f, &b1, &f5, &0f,   1, &1a   ; 89cb: 25 46 13... %F.
    equb &f5, &0f,   5, &1a, &7c, &0a, &13, &25, &0b, &25, &46, &1d   ; 89d7: f5 0f 05... ...
    equb   5,   2, &13                                                ; 89e3: 05 02 13    ...
    equs "!F("                                                        ; 89e6: 21 46 28    !F(
    equb &0a, &0f, &18, &a9,   3, &47,   6,   5,   5, &13, &21, &46   ; 89e9: 0a 0f 18... ...
    equb &1b,   5,   6, &13, &21, &46, &15, &46, &13, &d7, &8c,   3   ; 89f5: 1b 05 06... ...
    equb   1,   0,   0,   0,   4,   0, &79,   3, &86,   3,   0,   0   ; 8a01: 01 00 00... ...
    equb &73,   3, &0a, &1c, &0b, &21, &23, &0a, &1e, &0b             ; 8a0d: 73 03 0a... s..
    equs "%#}"                                                        ; 8a17: 25 23 7d    %#}
    equb &b3,   1, &5b, &0c, &a5, &0d, &a0, &10, &20, &10, &28, &fe   ; 8a1a: b3 01 5b... ..[
    equb &7c, &14, &0b,   9, &0b, &20, &72, &13, &24,   9, &12, &a9   ; 8a26: 7c 14 0b... |..
    equs "?G3"                                                        ; 8a32: 3f 47 33    ?G3
    equb &b1, &0b, &20, &7c, &0e, &b1, &0e, &16, &7c,   3, &0b, &28   ; 8a35: b1 0b 20... ..
    equb   5,   1, &61, &47,   7, &b1, &0e, &17, &7c,   3, &0b, &28   ; 8a41: 05 01 61... ..a
    equb   5,   2, &61, &47,   7, &b1, &0f, &18, &7c, &0b, &0b, &28   ; 8a4d: 05 02 61... ..a
    equb   5,   5, &5c, &47,   7, &b1, &0f, &1a, &7c,   3, &44, &a8   ; 8a59: 05 05 5c... ..\
    equb   4, &0b,   9,   5, &11                                      ; 8a65: 04 0b 09... ...
    equs "^Gc"                                                        ; 8a6a: 5e 47 63    ^Gc
    equb   9, &17, &47, &2e, &df, &0d, &0b,   9, &2f, &17, &a4, &30   ; 8a6d: 09 17 47... ..G
    equb &0e, &18, &2f, &17, &a6, &30, &0b, &19, &2f, &17, &aa, &30   ; 8a79: 0e 18 2f... ../
    equb &0b, &24, &2f, &17, &a8, &30, &0b,   9,   5, &10, &5c, &47   ; 8a85: 0b 24 2f... .$/
    equb   9,   5, &10, &2f, &17, &a8, &46,   4, &df, &0d, &46, &31   ; 8a91: 09 05 10... ...
    equb   0,   7, &11, &0d, &fe, &11, &17, &b1,   5,   9, &10, &0d   ; 8a9d: 00 07 11... ...
    equb &a0, &7c, &15, &0b,   9,   5,   9, &5c, &47, &0c, &b1,   5   ; 8aa9: a0 7c 15... .|.
    equb &18, &0b                                                     ; 8ab5: 18 0b       ..
    equs " r|"                                                        ; 8ab7: 20 72 7c     r|
    equb   3, &46, &11, &0b,   9,   5, &11, &5c, &47, &0a, &b1,   5   ; 8aba: 03 46 11... .F.
    equb &21, &0b                                                     ; 8ac6: 21 0b       !.
    equs " r|"                                                        ; 8ac8: 20 72 7c     r|
    equb   3, &46, &4c, &0b, &20,   5,   7, &5c, &47, &0d, &b1, &0b   ; 8acb: 03 46 4c... .FL
    equb &24, &f5, &13,   1, &1e, &7c, &11, &46, &3a, &f8, &a4,   5   ; 8ad7: 24 f5 13... $..
    equb &10                                                          ; 8ae3: 10          .
    equs "\G."                                                        ; 8ae4: 5c 47 2e    \G.
    equb &0b,   9,   5                                                ; 8ae7: 0b 09 05    ...
    equs "!\G"                                                        ; 8aea: 21 5c 47    !\G
    equb &0c,   5, &11, &0b                                           ; 8aed: 0c 05 11... ...
    equs " r/"                                                        ; 8af1: 20 72 2f     r/
    equb &17, &a8, &46, &19, &0b,   9,   5, &1f, &5c, &47,   9,   5   ; 8af4: 17 a8 46... ..F
    equb   8, &2f, &17, &a8, &46, &0b,   5,   9, &0b                  ; 8b00: 08 2f 17... ./.
    equs " r/"                                                        ; 8b09: 20 72 2f     r/
    equb &17, &a8, &30, &df, &0d, &46,   7, &b1, &0b, &24, &7c, &0e   ; 8b0c: 17 a8 30... ..0
    equb &7d, &b3,   1, &26,   0, &0b,   9, &fc                       ; 8b18: 7d b3 01... }..
    equs "]G("                                                        ; 8b20: 5d 47 28    ]G(
    equb &f8, &a4,   5, &10, &5c, &0f, &a4,   5, &29, &5c, &85, &47   ; 8b23: f8 a4 05... ...
    equb &0b, &0b,   9, &f8, &aa, &72, &17, &aa, &46, &12, &df, &0d   ; 8b2f: 0b 0b 09... ...
    equb &0b,   9, &2f, &17, &aa,   5, &29, &17, &a4,   5, &29, &17   ; 8b3b: 0b 09 2f... ../
    equb &a8, &30, &7d, &b3,   1, &39, &10, &f7                       ; 8b47: a8 30 7d... .0}
    equs "AGL"                                                        ; 8b4f: 41 47 4c    AGL
    equb &10, &11, &b2,   6, &2f, &0a, &68, &30, &12, &13,   6, &9e   ; 8b52: 10 11 b2... ...
    equb &85, &fc, &10,   9, &ed, &13, &1d, &0a, &13, &f2, &5a, &47   ; 8b5e: 85 fc 10... ...
    equb   8, &0a, &11, &f2, &22, &46, &1a, &f5, &13,   2, &1e, &0b   ; 8b6a: 08 0a 11... ...
    equb   9, &5c, &47, &0c, &0a, &11, &b4,   6, &0a, &13, &12, &11   ; 8b76: 09 5c 47... .\G
    equb &46,   7, &0a, &11, &0a, &13, &22, &0a, &15, &0a, &11, &22   ; 8b82: 46 07 0a... F..
    equb &f5, &11,   2, &0b,   9, &27, &f5, &11,   4, &0b, &0d, &27   ; 8b8e: f5 11 02... ...
    equb &46, &17, &f8, &78, &17, &8e, &30, &0b,   9, &2f, &17, &78   ; 8b9a: 46 17 f8... F..
    equb &b1, &30, &0b, &0d, &7c, &0b, &f8, &8e, &17                  ; 8ba6: b1 30 0b... .0.
    equs "x0}"                                                        ; 8baf: 78 30 7d    x0}
    equb &b3,   1, &23,   0, &f8, &86, &c3, &17, &86, &10, &e3, &10   ; 8bb2: b3 01 23... ..#
    equb &d8, &0f, &86, &f3, &b2, &10, &10, &e3, &10, &d8, &0f, &86   ; 8bbe: d8 0f 86... ...
    equb &f3, &19, &30, &9f,   0, &0f, &21, &9f, &29,   1, &fc, &23   ; 8bca: f3 19 30... ..0
    equb &9f, &29,   5, &fc, &23, &f8, &86,   5,   8, &61, &a1, &a6   ; 8bd6: 9f 29 05... .).
    equb &12,   9, &7d, &b3,   1, &2d, &13, &fc, &13, &11,   5,   1   ; 8be2: 12 09 7d... ..}
    equb &13, &15, &fc, &13, &19,   9,   9, &11, &10,   9, &0a, &11   ; 8bee: 13 15 fc... ...
    equb &0b, &2f, &10, &2e, &b2, &13, &0a, &2e, &12, &20,   0, &3e   ; 8bfa: 0b 2f 10... ./.
    equb &11, &26, &0f, &24, &30, &17, &0c, &2f, &10, &e3, &10, &d8   ; 8c06: 11 26 0f... .&.
    equb &0f, &86, &f3, &19, &29,   3, &19, &30, &12, &0e, &f8, &86   ; 8c12: 0f 86 f3... ...
    equb &30, &16, &16, &2f, &10, &e3, &10, &d8, &0f, &86, &f3, &19   ; 8c1e: 30 16 16... 0..
    equb &29,   3, &0a, &2e, &22, &0f, &ae, &17, &24, &0a, &2e, &30   ; 8c2a: 29 03 0a... )..
    equb &10, &0b, &28, &13, &7d, &b3,   1, &22,   0, &f2, &2f, &12   ; 8c36: 10 0b 28... ..(
    equb &20, &0a, &52, &12, &56, &2f, &0a, &56, &f2, &5b, &0a, &20   ; 8c42: 20 0a 52...  .R
    equb &f2, &5a, &84                                                ; 8c4e: f2 5a 84    .Z.
    equs "G./"                                                        ; 8c51: 47 2e 2f    G./
    equb &f5, &56,   2, &19, &f2, &5b, &47, &15, &2f, &f5, &56,   2   ; 8c54: f5 56 02... .V.
    equb &19, &29,   3, &19, &12, &20,   6, &9c, &81, &fc, &10, &6e   ; 8c60: 19 29 03... .).
    equb &ed, &13, &6e, &2f, &0a, &20, &f2, &5a, &47,   9, &2f, &0a   ; 8c6c: ed 13 6e... ..n
    equb &56, &19, &12                                                ; 8c78: 56 19 12    V..
    equs "V0F"                                                        ; 8c7b: 56 30 46    V0F
    equb &ca, &2f, &0a, &20, &f2                                      ; 8c7e: ca 2f 0a... ./.
    equs "ZG0"                                                        ; 8c83: 5a 47 30    ZG0
    equb &f2, &2f, &12, &22, &10, &e3, &10, &d8, &0f, &9c, &f3, &19   ; 8c86: f2 2f 12... ./.
    equb &29,   3, &19, &12, &20,   6, &9c, &81, &fc, &10, &6e, &ed   ; 8c92: 29 03 19... )..
    equb &13, &6e, &0f, &9c, &c4, &17, &9c, &0f, &9c,   5, &64, &61   ; 8c9e: 13 6e 0f... .n.
    equb &0a, &20, &f2, &5b, &85,   9, &39, &85, &47, &d4, &7d, &b3   ; 8caa: 0a 20 f2... . .
    equb   1, &55,   9, &f8, &80, &fc                                 ; 8cb6: 01 55 09... .U.
    equs "aE>"                                                        ; 8cbc: 61 45 3e    aE>
    equb   7, &f7                                                     ; 8cbf: 07 f7       ..
    equs "8G+"                                                        ; 8cc1: 38 47 2b    8G+
    equb &10,   9,   5,   8, &c5, &f8, &82, &b8, &76,   6,   5, &20   ; 8cc4: 10 09 05... ...
    equb   5, &3e, &0b,   9                                           ; 8cd0: 05 3e 0b... .>.
    equs "/7G"                                                        ; 8cd4: 2f 37 47    /7G
    equb   1, &83, &c0, &74, &72, &bf, &10, &0f, &30, &12,   7, &95   ; 8cd7: 01 83 c0... ...
    equb &b9, &5e,   6, &2f, &10, &0f, &30, &12,   7, &94, &10,   9   ; 8ce3: b9 5e 06... .^.
    equb   5,   1, &f8, &80, &b8, &2a,   7,   7,   9                  ; 8cef: 05 01 f8... ...
    equs "** Error /"                                                 ; 8cf8: 2a 2a 20... **
    equb &10, &0f, &30, &12,   7, &9c,   9,   0, &2f, &10, &d3, &10   ; 8d02: 10 0f 30... ..0
    equb &c8, &30, &0b,   9, &f3, &1d,   5,   1, &9b, &97,   7,   9   ; 8d0e: c8 30 0b... .0.
    equs " at line "                                                  ; 8d1a: 20 61 74...  at
    equb &9c,   9,   0, &f8, &96,   5,   1, &9b, &97,   7,   4        ; 8d23: 9c 09 00... ...
    equs " in "                                                       ; 8d2e: 20 69 6e...  in
    equb &9c,   4,   0, &3a, &67,   1, &0f, &9e, &9b, &9c, &3c,   0   ; 8d32: 9c 04 00... ...
    equb &94,   9                                                     ; 8d3e: 94 09       ..
    equs "2GV/"                                                       ; 8d40: 32 47 56... 2GV
    equb &10, &bc,   7,   7                                           ; 8d44: 10 bc 07... ...
    equs "ERRUTIL"                                                    ; 8d48: 45 52 52... ERR
    equb &a7,   0,   0, &ff,   7, &30, &10, &0d,   5,   1, &2f, &10   ; 8d4f: a7 00 00... ...
    equb &d3, &10, &c8, &30, &0b,   9, &f3, &1d, &b8,   0,   7, &2f   ; 8d5b: d3 10 c8... ...
    equb &10, &bc, &30, &12,   7, &87, &b9, &f6,   6, &2f, &10, &bc   ; 8d67: 10 bc 30... ..0
    equb &30, &12,   7, &88, &11, &11,   9, &11, &a9, &5f, &47, &0b   ; 8d73: 30 12 07... 0..
    equb &2f, &10, &0f, &30, &12,   7, &94, &46, &0b,   9, &11, &2f   ; 8d7f: 2f 10 0f... /..
    equb &10, &0f, &30, &12,   7, &95, &2f, &10, &bc, &ad, &47, &db   ; 8d8b: 10 0f 30... ..0
    equb &b9, &86,   6, &fc, &2f, &17, &80,   4,   0, &3f, &47,   1   ; 8d97: b9 86 06... ...
    equb   9, &31, &47,   9, &2f, &10,   9, &30, &12,   7, &87, &7d   ; 8da3: 09 31 47... .1G
    equb &b3,   1                                                     ; 8daf: b3 01       ..
    equs "~FD"                                                        ; 8db1: 7e 46 44    ~FD
    equb   2,   9, &b3,   2, &22,   0, &f7, &50, &11, &4f,   9, &4f   ; 8db4: 02 09 b3... ...
    equb   0                                                          ; 8dc0: 00          .
    equs "aWG"                                                        ; 8dc1: 61 57 47    aWG
    equb &17, &2e,   1,   9, &0e, &f7, &4f,   0, &7a, &56, &84, &47   ; 8dc4: 17 2e 01... ...
    equb &0b, &2f, &0e, &4f,   5, &20, &73, &bf, &11, &4f, &f7, &4f   ; 8dd0: 0b 2f 0e... ./.
    equb &2e,   1, &11, &4c, &f7                                      ; 8ddc: 2e 01 11... ...
    equs "IGF"                                                        ; 8de1: 49 47 46    IGF
    equb &f7, &38, &47,   9, &2f, &10, &0f, &30, &12,   7, &94, &df   ; 8de4: f7 38 47... .8G
    equb &1b, &f8, &84, &c3, &17, &84, &0f, &96, &c3, &17, &96, &fb   ; 8df0: 1b f8 84... ...
    equb &11, &49, &fc, &17, &82,   9                                 ; 8dfc: 11 49 fc... .I.
    equs "8G#"                                                        ; 8e02: 38 47 23    8G#
    equb &f8, &84, &10, &0f, &30, &12,   7,   5,   4, &9b, &97, &f8   ; 8e05: f8 84 10... ...
    equb &86, &c4, &0f, &86, &fc, &5e, &c0, &72,   5,   2, &9b, &97   ; 8e11: 86 c4 0f... ...
    equb &2e,   1,   9, &4e,   5,   2, &9b, &95, &30, &46,   7, &f8   ; 8e1d: 2e 01 09... ...
    equb &82, &c3, &17, &82, &f7, &38, &47, &0a, &f7, &50, &10, &0f   ; 8e29: 82 c3 17... ...
    equb &30, &12,   7, &95, &f7, &4f,   0,   4                       ; 8e35: 30 12 07... 0..
    equs "UGd"                                                        ; 8e3d: 55 47 64    UGd
    equb &f7                                                          ; 8e40: f7          .
    equs "BGE/"                                                       ; 8e41: 42 47 45... BGE
    equb &10, &c2, &ad, &47, &25, &fe, &2f, &11, &49, &0f, &84,   5   ; 8e45: 10 c2 ad... ...
    equb   1, &5c,   9, &40, &84, &47, &17, &fb, &2f, &11, &42,   9   ; 8e51: 01 5c 09... .\.
    equb &43, &47,   4, &df,   7,   0, &20, &2f, &11                  ; 8e5d: 43 47 04... CG.
    equs "PH2"                                                        ; 8e66: 50 48 32    PH2
    equb   8,   2,   9,   0, &2f, &10, &c2, &30, &12,   7, &88, &2f   ; 8e69: 08 02 09... ...
    equb &11, &50, &10, &c2, &ae, &47, &0b,   0,   4, &2f, &11, &50   ; 8e75: 11 50 10... .P.
    equb &fb, &11                                                     ; 8e81: fb 11       ..
    equs "I0F"                                                        ; 8e83: 49 30 46    I0F
    equb &1d, &2f, &0a, &ac, &18, &11, &50, &0f, &ac, &c3, &17, &ac   ; 8e86: 1d 2f 0a... ./.
    equb   9, &50, &a9, &0d, &11, &49,   9, &49, &47,   8,   0, &20   ; 8e92: 09 50 a9... .P.
    equb &2f, &11                                                     ; 8e9e: 2f 11       /.
    equs "P0}"                                                        ; 8ea0: 50 30 7d    P0}
    equb &b3,   2, &21,   0, &f7, &3f, &47, &1b, &fb, &2f, &11, &3f   ; 8ea3: b3 02 21... ..!
    equb &0f, &7a, &fa, &17, &ae, &0f, &ae, &c4, &17, &a2, &0f, &a2   ; 8eaf: 0f 7a fa... .z.
    equb &17, &24, &0f, &7a, &0f, &ae, &72, &17, &7a, &f8, &a0, &c3   ; 8ebb: 17 24 0f... .$.
    equb &17, &a0, &0a, &ae,   9, &4f, &21, &0f, &ae, &c3, &17, &ae   ; 8ec7: 17 a0 0a... ...
    equb &0f, &ae, &0f, &7a, &5f, &a1, &a5, &2f, &0a, &ae,   0, &20   ; 8ed3: 0f ae 0f... ...
    equb &21, &df, &1d, &7d, &b3,   2, &21,   0, &f7, &4f, &a9,   4   ; 8edf: 21 df 1d... !..
    equb &47, &10, &9e, &82,   0, &3a, &2f, &11, &26, &48, &fa, &37   ; 8eeb: 47 10 9e... G..
    equb   0,   0,   2, &30, &7d, &b3,   2, &62, &40,   5,   1, &2f   ; 8ef7: 00 00 02... ...
    equb &17, &8e, &f7, &50,   0, &30, &57,   9, &50,   0, &39, &56   ; 8f03: 17 8e f7... ...
    equb &84, &47, &16, &10, &0d, &2f, &10, &15, &0f, &8e, &f3,   9   ; 8f0f: 84 47 16... .G.
    equb &50, &21, &0f, &8e, &c3, &17, &8e, &df, &1d, &46, &e1, &10   ; 8f1b: 50 21 0f... P!.
    equb &0d, &2f, &10, &15, &0f, &8e, &f3,   0, &0d, &21, &30, &10   ; 8f27: 0d 2f 10... ./.
    equb &0d, &d3, &3c, &13,   9, &b5,   9,   0,   4, &b3,   2, &41   ; 8f33: 0d d3 3c... ..<
    equb   4, &f8, &a0, &17, &8e, &2e,   1,   9, &0d, &f7, &4f,   0   ; 8f3f: 04 f8 a0... ...
    equb &39, &56, &85,   9, &4f,   4,   9,   0,   0,   0,   0,   0   ; 8f4b: 39 56 85... 9V.
    equb   0, &ff,   3, &7e, &81, &84, &47,   6, &df, &1e, &46, &e3   ; 8f57: 00 ff 03... ...
    equb &f8, &8e, &0f, &a0, &5c, &47,   9, &9e, &7f, &fe, &2f, &11   ; 8f63: f8 8e 0f... ...
    equs "<0}"                                                        ; 8f6f: 3c 30 7d    <0}
    equb &f7, &4f, &30, &11, &4c,   0, &2d, &11, &4e, &fe, &11, &0e   ; 8f72: f7 4f 30... .O0
    equb &f7, &3c, &86, &45, &42, &0d, &f7, &4f, &a9, &20,   9, &4f   ; 8f7e: f7 3c 86... .<.
    equb &a9, &28,   9, &50, &a9, &2a, &84, &85,   9, &4f, &a9, &7b   ; 8f8a: a9 28 09... .(.
    equb &85, &45, &91, &0a,   9, &4c,   0                            ; 8f96: 85 45 91... .E.
    equs " UE"                                                        ; 8f9d: 20 55 45     UE
    equb &88, &0a,   0, &43, &11, &4e,   9, &4c, &a9, &28, &47,   4   ; 8fa0: 88 0a 00... ...
    equb &df, &1d, &f7, &50, &a9                                      ; 8fac: df 1d f7... ...
    equs "$Ed"                                                        ; 8fb1: 24 45 64    $Ed
    equb &0a, &df, &1d, &df, &1d, &f7, &50, &a9, &2b,   9, &50, &a9   ; 8fb4: 0a df 1d... ...
    equb &2a, &85, &11, &4e,   9, &50, &a9, &2d,   9, &4e, &85, &45   ; 8fc0: 2a 85 11... *..
    equb &e1,   9,   9                                                ; 8fcc: e1 09 09    ...
    equs "LF^"                                                        ; 8fcf: 4c 46 5e    LF^
    equb &f7, &3d, &47,   8, &f7, &4e, &11, &37, &46,   4, &9e, &91   ; 8fd2: f7 3d 47... .=G
    equb &46, &6f, &f7, &3d, &47,   8, &f7, &4e, &11, &35, &46,   4   ; 8fde: 46 6f f7... Fo.
    equb &9e, &91, &46, &61, &f7, &4e, &11                            ; 8fea: 9e 91 46... ..F
    equs "2F["                                                        ; 8ff1: 32 46 5b    2F[
    equb &f7, &4e, &11                                                ; 8ff4: f7 4e 11    .N.
    equs "8FU"                                                        ; 8ff7: 38 46 55    8FU
    equb &f7, &4e, &11                                                ; 8ffa: f7 4e 11    .N.
    equs "6FO"                                                        ; 8ffd: 36 46 4f    6FO
    equb &f7, &4e, &11                                                ; 9000: f7 4e 11    .N.
    equs "3FI"                                                        ; 9003: 33 46 49    3FI
    equb &f7, &4e, &11                                                ; 9006: f7 4e 11    .N.
    equs "0OP"                                                        ; 9009: 30 4f 50    0OP
    equb &0e, &f7, &50, &a9, &2a, &47,   7, &4f, &ff,   3, &46,   8   ; 900c: 0e f7 50... ..P
    equb &b1, &2f, &0e, &4e, &7c,   3, &46, &2f, &f7, &4e, &11        ; 9018: b1 2f 0e... ./.
    equs "1F)"                                                        ; 9023: 31 46 29    1F)
    equb &f7, &4e, &11                                                ; 9026: f7 4e 11    .N.
    equs "4F#F!"                                                      ; 9029: 34 46 23... 4F#
    equb &d6, &bc,   9,   9, &44, &70,   9, &46, &7e,   9, &47, &62   ; 902e: d6 bc 09... ...
    equb   9, &4c, &84,   9, &52, &8a,   9, &54, &90,   9, &55, &96   ; 903a: 09 4c 84... .L.
    equb   9, &57, &b0,   9, &58, &b6,   9, &df, &1d, &46, &7b,   9   ; 9046: 09 57 b0... .W.
    equb &4c, &a9                                                     ; 9052: 4c a9       L.
    equs "SGW"                                                        ; 9054: 53 47 57    SGW
    equb &f7, &50, &a9                                                ; 9057: f7 50 a9    .P.
    equs "'GO"                                                        ; 905a: 27 47 4f    'GO
    equb &df, &1d, &f7, &50, &a9, &27, &47,   6, &9e                  ; 905d: df 1d f7... ...
    equs "]FC"                                                        ; 9066: 5d 46 43    ]FC
    equb &b1                                                          ; 9069: b1          .
    equs "/:g"                                                        ; 906a: 2f 3a 67    /:g
    equb   1, &7c,   8, &fc, &2f, &17, &9e, &f8, &9e, &c3, &17, &9e   ; 906d: 01 7c 08... .|.
    equb &0f, &9e,   5                                                ; 9079: 0f 9e 05    ...
    equs "<aG"                                                        ; 907c: 3c 61 47    <aG
    equb &0a, &9e                                                     ; 907f: 0a 9e       ..
    equs "]H."                                                        ; 9081: 5d 48 2e    ]H.
    equb &0a,   1, &4f,   0                                           ; 9084: 0a 01 4f... ..O
    equs "/:g"                                                        ; 9088: 2f 3a 67    /:g
    equb   1, &10, &15, &0f, &9e, &f3,   9, &50, &21, &df, &1d, &df   ; 908b: 01 10 15... ...
    equb &1f, &f7, &50, &a9, &27, &47, &d8, &df, &1d, &df, &1d, &df   ; 9097: 1f f7 50... ..P
    equb   7, &48, &88, &0a,   1, &4f,   0, &46, &20,   9, &4c, &a9   ; 90a3: 07 48 88... .H.
    equb &43, &f7, &3e, &84, &47,   9, &df, &20, &2f, &17, &74, &46   ; 90af: 43 f7 3e... C.>
    equb &10,   9, &4c, &a9, &49, &f7, &3f, &84, &47,   7, &df, &20   ; 90bb: 10 09 4c... ..L
    equb &2f, &17, &7a, &f7, &50,   0                                 ; 90c7: 2f 17 7a... /.z
    equs ",UEE"                                                       ; 90cd: 2c 55 45... ,UE
    equb   9, &46,   4, &df, &1d, &f7, &4f,   0, &2a, &55,   9, &50   ; 90d1: 09 46 04... .F.
    equb   0, &29, &55, &85,   9, &4f,   0, &7d, &55, &84, &47,   8   ; 90dd: 00 29 55... .)U
    equb &df, &1f, &df, &1d, &46, &e9,   9, &4c,   0                  ; 90e9: df 1f df... ...
    equs "}UG"                                                        ; 90f2: 7d 55 47    }UG
    equb   4, &df, &1d,   0, &2d, &11, &4e, &df, &1d, &44, &14,   9   ; 90f5: 04 df 1d... ...
    equb &fc, &2f, &17, &a0, &0f, &24, &c3, &17, &ae, &30,   9, &4c   ; 9101: fc 2f 17... ./.
    equb   4, &0c,   0,   0,   0,   0,   0,   0,   0,   0, &fe, &ff   ; 910d: 04 0c 00... ...
    equb &ff,   7, &81, &47, &55,   9, &4c,   4, &0c,   0,   0,   0   ; 9119: ff 07 81... ...
    equb   0,   0,   0, &ff,   3, &fe, &ff, &ff, &87, &81, &47, &0e   ; 9125: 00 00 00... ...
    equb   9, &4c, &a9, &5f, &47,   4, &df,   2, &df, &1e, &46, &e3   ; 9131: 09 4c a9... .L.
    equb   6, &71, &81, &fc, &10,   9, &ed, &13,   9, &ac,   0        ; 913d: 06 71 81... .q.
    equs "9YG$"                                                       ; 9148: 39 59 47... 9YG
    equb &f8, &86, &17, &9c, &df, &1a, &2f, &0a, &20, &f2, &5a, &47   ; 914c: f8 86 17... ...
    equb &0a, &b1,   0, &3d, &fb, &7c, &19, &46, &0f, &2f, &f5, &20   ; 9158: 0a b1 00... ...
    equb   5, &18, &11, &26, &0f, &24, &c4, &17, &ae                  ; 9164: 05 18 11... ...
    equs "0DB"                                                        ; 916d: 30 44 42    0DB
    equb &0d,   9, &4c,   4,   8,   0,   0,   0,   0, &c0,   0, &ff   ; 9170: 0d 09 4c... ..L
    equb   3, &81, &45, &8d, &0c,   0, &3f, &2f, &11, &26, &0a, &66   ; 917c: 03 81 45... ..E
    equb &12, &20, &0a, &20,   0,   5, &21,   9, &4f, &a9             ; 9188: 12 20 0a... . .
    equs "'Go"                                                        ; 9192: 27 47 6f    'Go
    equb &fb, &11, &0e, &fe, &11, &0f, &df, &1d,   9, &0f, &47, &33   ; 9195: fb 11 0e... ...
    equb   9, &4c, &a9, &27, &47, &10, &f7, &50, &a9, &27, &30, &11   ; 91a1: 09 4c a9... .L.
    equb &0f,   9, &0f, &86, &11, &0e, &df, &1d,   9, &0f, &47, &19   ; 91ad: 0f 09 0f... ...
    equb &f8, &82,   5,   2, &60, &0f, &80, &fc, &5c, &84, &a1, &9d   ; 91b9: f8 82 05... ...
    equb &df, &1f, &2f, &f5, &20,   9, &0e, &4f, &23, &df, &1e, &46   ; 91c5: df 1f 2f... ../
    equb &cd, &f8, &a0,   5,   1                                      ; 91d1: cd f8 a0... ...
    equs "]G!/"                                                       ; 91d6: 5d 47 21... ]G!
    equb &0a, &20,   0,   9, &21, &f5, &20, &0b, &0f, &24, &27, &f5   ; 91da: 0a 20 00... . .
    equb &20,   8, &fe, &21, &f5, &20,   9, &0f, &a0, &27, &0f, &a0   ; 91e6: 20 08 fe...  ..
    equb &fc, &5c, &47,   4, &df,   2, &2f, &f5, &20,   6, &0a        ; 91f2: fc 5c 47... .\G
    equs "*", '"', "D"                                                ; 91fd: 2a 22 44    *"D
    equb &8a, &0c, &f7, &4f, &a9, &26, &30, &11, &0d,   9, &0d, &47   ; 9200: 8a 0c f7... ...
    equb   6, &df,   2, &df, &1e, &2f, &f5, &20,   6, &0a, &2c, &22   ; 920c: 06 df 02... ...
    equb &f7, &4f, &a9, &30,   9, &50, &a9, &30, &84, &47,   6, &df   ; 9218: f7 4f a9... .O.
    equb &1d, &46, &f3, &df, &21, &f7, &4f, &a9, &2e,   9, &50,   0   ; 9224: 1d 46 f3... .F.
    equb &2e, &55, &84,   9, &50,   0, &29, &55, &84, &47, &0c, &df   ; 9230: 2e 55 84... .U.
    equb &1e, &2f, &0a, &20,   0,   4, &21, &df, &21,   9, &4c, &a9   ; 923c: 1e 2f 0a... ./.
    equb &45, &47, &19, &2f, &0a, &20,   0,   4, &21, &df, &1e,   9   ; 9248: 45 47 19... EG.
    equb &4c, &a9, &2d,   9, &4c, &a9, &2b, &85, &47,   4, &df, &1e   ; 9254: 4c a9 2d... L.-
    equb &df, &21,   9, &4c,   4, &0c,   0,   0,   0,   0,   0,   0   ; 9260: df 21 09... .!.
    equb   0,   0, &fe, &ff, &ff,   7, &81, &a1, &98, &fc, &2f, &17   ; 926c: 00 00 fe... ...
    equb &8e, &30,   9, &0d, &47, &1e, &2f, &0a, &20, &18, &a9,   4   ; 9278: 8e 30 09... .0.
    equb &a1, &69,   6,   4, &86, &fc, &10, &0d, &ed, &be, &a1, &19   ; 9284: a1 69 06... .i.
    equb &2f, &f5, &20,   9, &30, &0b,   9                            ; 9290: 2f f5 20... /.
    equs "#F]"                                                        ; 9297: 23 46 5d    #F]
    equb &f7, &3c, &86, &47, &58, &f8, &a0,   5, &3c, &5f, &a1, &39   ; 929a: f7 3c 86... .<.
    equb &f8, &8e, &c3, &17, &8e, &0f, &8e, &0f, &24, &72, &17, &ae   ; 92a6: f8 8e c3... ...
    equb &30, &10, &10, &2f, &10, &15, &0f, &8e, &f3, &0a, &ae, &18   ; 92b2: 30 10 10... 0..
    equb &21, &0a, &ae, &18, &a9, &20, &47, &e2, &10, &10, &2f, &10   ; 92be: 21 0a ae... !..
    equb &15, &0f, &8e, &f3,   0, &0d, &21, &0a, &20, &18, &a9,   5   ; 92ca: 15 0f 8e... ...
    equb &47, &0e, &2f, &f5, &20,   9, &30, &10, &10, &d3             ; 92d6: 47 0e 2f... G./
    equs "<#F"                                                        ; 92e0: 3c 23 46    <#F
    equb &13, &2f, &f5, &20,   9, &30, &10, &10, &d4                  ; 92e3: 13 2f f5... ./.
    equs "<$/"                                                        ; 92ec: 3c 24 2f    <$/
    equb &f5, &20,   6, &f2, &22, &30, &fb, &2f, &11                  ; 92ef: f5 20 06... . .
    equs "<0DB"                                                       ; 92f8: 3c 30 44... <0D
    equb &0d,   9, &4c, &a9,   4, &47,   9,   0, &3a, &2f, &11        ; 92fc: 0d 09 4c... ..L
    equs "&F1"                                                        ; 9307: 26 46 31    &F1
    equb &fe, &2f, &11, &26, &f7, &4f, &3a, &ea,   1, &3a, &df,   1   ; 930a: fe 2f 11... ./.
    equb &0e, &26, &f3, &18, &55,   9, &26,   0, &16, &58, &84, &47   ; 9316: 0e 26 f3... .&.
    equb   8, &ac, &c1, &11, &26, &46, &e7, &ac, &c2, &11, &26,   9   ; 9322: 08 ac c1... ...
    equb &26, &a9,   0, &47,   8,   0,   6, &2f, &11, &26, &30, &df   ; 932e: 26 a9 00... &..
    equb &1d, &ac, &a9, &15, &47,   8, &9e, &81, &df, &1c, &46, &6e   ; 933a: 1d ac a9... ...
    equb &ac, &30, &11, &4d, &f7                                      ; 9346: ac 30 11... .0.
    equs "OFM"                                                        ; 934b: 4f 46 4d    OFM
    equb &ac, &a9,   3, &47,   7,   0, &16, &2f, &11, &26, &ac, &a9   ; 934e: ac a9 03... ...
    equb   7, &47,   8,   0,   9, &2f, &11                            ; 935a: 07 47 08... .G.
    equs "&0FF"                                                       ; 9361: 26 30 46... &0F
    equb &ac, &a9, &13, &47,   8,   0, &10, &2f, &11                  ; 9365: ac a9 13... ...
    equs "&0F9"                                                       ; 936e: 26 30 46... &0F
    equb &ac,   0, &13, &57, &47,   7, &ac, &c2, &c2, &11, &26, &ac   ; 9372: ac 00 13... ...
    equb &a9,   4, &47,   8,   0, &15, &2f, &11                       ; 937e: a9 04 47... ..G
    equs "&0F!"                                                       ; 9386: 26 30 46... &0F
    equb &ac, &a9,   3, &47,   8,   0, &0a, &2f, &11                  ; 938a: ac a9 03... ...
    equs "&0F"                                                        ; 9393: 26 30 46    &0F
    equb &14, &46, &12, &d6, &27, &0d,   4, &29, &1a, &0d, &2e, &de   ; 9396: 14 46 12... .F.
    equb &0c, &3d,   2, &0d, &3e, &f5, &0c, &ac, &30,   9             ; 93a2: 0c 3d 02... .=.
    equs "MUG"                                                        ; 93ac: 4d 55 47    MUG
    equb   4, &df, &1d, &ac, &a9,   5, &11, &44,   9, &26, &a9,   2   ; 93af: 04 df 1d... ...
    equb &11, &45,   9, &26,   4,   4, &80, &f9, &df, &0f, &81, &47   ; 93bb: 11 45 09... .E.
    equb   7, &fb, &2f, &11                                           ; 93c7: 07 fb 2f... ../
    equs ":0}"                                                        ; 93cb: 3a 30 7d    :0}
    equb &b3,   1, &1d,   0, &ac, &a9, &0d, &11, &46,   9, &26, &a9   ; 93ce: b3 01 1d... ...
    equb &0c,   9, &46, &85, &11, &47,   9, &47, &47,   4, &df, &1c   ; 93da: 0c 09 46... ..F
    equb &7d, &b3,   1, &39,   0, &ac, &30,   9,   9, &55, &2f, &11   ; 93e6: 7d b3 01... }..
    equb &3c,   9                                                     ; 93f2: 3c 09       <.
    equs "<G+"                                                        ; 93f4: 3c 47 2b    <G+
    equb &b1, &0e,   9, &7c,   1, &ac, &37,   7,   1, &81,   9, &26   ; 93f7: b1 0e 09... ...
    equb &a9, &3a, &85,   9, &26, &30,   9,   9, &54, &85, &86, &47   ; 9403: a9 3a 85... .:.
    equb &12, &fb, &2f, &11, &3c, &df, &1c, &ac, &30,   9,   9, &55   ; 940f: 12 fb 2f... ../
    equb &2f, &11, &3c, &46, &de, &7d, &b3,   1, &22,   0, &b1,   9   ; 941b: 2f 11 3c... /.<
    equb   9, &7c, &23, &df, &1c, &7d, &b3,   1, &21,   0, &b1, &ac   ; 9427: 09 7c 23... .|#
    equs "|$}"                                                        ; 9433: 7c 24 7d    |$}
    equb &b3,   1, &1d,   0, &2f, &10, &c2, &4b, &18, &a9, &20, &10   ; 9436: b3 01 1d... ...
    equb &c2, &ad, &86, &84, &47,   8, &2f, &10, &c2, &8d, &46, &ee   ; 9442: c2 ad 86... ...
    equb &7d, &b3,   1, &35,   1, &2f, &0a, &20, &18, &a9,   4, &b1   ; 944e: 7d b3 01... }..
    equb &0a, &20, &a0, &7c, &13, &85, &11,   9, &b5,   9,   0,   1   ; 945a: 0a 20 a0... . .
    equb &b3,   1, &21,   0, &df, &22, &ac,   0, &3f, &55, &a1, &6f   ; 9466: b3 01 21... ..!
    equb &f7                                                          ; 9472: f7          .
    equs "GG8"                                                        ; 9473: 47 47 38    GG8
    equb &df                                                          ; 9476: df          .
    equs "'G2"                                                        ; 9477: 27 47 32    'G2
    equb &f7                                                          ; 947a: f7          .
    equs "FG,/"                                                       ; 947b: 46 47 2c... FG,
    equb &0a, &66, &0a, &20, &28, &13, &0a, &20, &18, &a9,   4, &47   ; 947f: 0a 66 0a... .f.
    equb &0e, &2f, &f5, &66,   9, &f5, &20,   9, &1b, &c8, &24, &46   ; 948b: 0e 2f f5... ./.
    equb &0c, &2f, &f5, &66,   9, &f5, &20,   9, &1a, &c5, &23, &2f   ; 9497: 0c 2f f5... ./.
    equb &0a, &66, &12                                                ; 94a3: 0a 66 12    .f.
    equs " 0F"                                                        ; 94a6: 20 30 46     0F
    equb   4, &9e, &70, &7d, &b3,   1, &21,   0, &df, &28, &2f, &0a   ; 94a9: 04 9e 70... ..p
    equb &20, &18,   0,   5, &55, &47, &0b, &9e, &88, &2f, &f5, &20   ; 94b5: 20 18 00...  ..
    equb   9, &fc                                                     ; 94c1: 09 fc       ..
    equs "#0}"                                                        ; 94c3: 23 30 7d    #0}
    equb &b3,   1, &21,   0, &ac, &a9, &3f, &47, &0c, &df, &27, &86   ; 94c6: b3 01 21... ..!
    equb &f7, &47, &84, &a1, &70, &46, &1e, &ac, &a9, &2a, &47, &17   ; 94d2: f7 47 84... .G.
    equb &f7, &47, &a1, &70, &2f, &0a, &66,   0,   7, &21, &f5, &66   ; 94de: f7 47 a1... .G.
    equb   9, &fc, &23, &0a, &66, &12, &20, &46,   4, &9e, &6f, &7d   ; 94ea: 09 fc 23... ..#
    equb &b3,   1, &2d,   0, &9f, &10, &0b, &28, &13, &9f, &29,   6   ; 94f6: b3 01 2d... ..-
    equb &f5, &11,   7, &19, &22, &9f, &29, &0b, &0e, &16, &c3, &26   ; 9502: f5 11 07... ...
    equb &9f, &29, &0c, &f5, &11,   9, &1e, &23, &7d, &b3,   1, &1c   ; 950e: 9f 29 0c... .).
    equb   0, &9f,   0,   5, &21, &9f, &29,   5,   0, &3f, &21, &9f   ; 951a: 00 9f 00... ...
    equb &29,   6, &0a, &0b, &22, &7d, &b3,   1, &35,   1, &ac, &a9   ; 9526: 29 06 0a... )..
    equb &3f, &0a, &66, &0a, &20, &5a, &84, &b1, &0a, &20, &a0, &7c   ; 9532: 3f 0a 66... ?.f
    equb &13, &84, &11,   9, &b5,   9,   0,   1, &b3,   1, &2b,   0   ; 953e: 13 84 11... ...
    equb &f7, &35, &47, &13, &b1,   5, &fd, &f8, &84,   5, &ff, &61   ; 954a: f7 35 47... .5G
    equb &c0,   5, &d9, &74, &73, &0f, &84, &7c, &11, &7d, &b3,   1   ; 9556: c0 05 d9... ...
    equb &4c,   4,   9, &1a,   9,   9,   0, &0d, &57, &84, &11, &1c   ; 9562: 4c 04 09... L..
    equb   9, &1c, &86, &47, &58,   9,   9, &46, &47, &b1,   9, &0a   ; 956e: 09 1c 86... ...
    equb &0a, &0c, &1f, &10, &fe, &7c, &2f, &11, &1c, &46, &46, &b1   ; 957a: 0a 0c 1f... ...
    equb   9, &0a, &0a, &0d, &1f, &10, &fe, &7c, &2f, &11, &1c, &46   ; 9586: 09 0a 0a... ...
    equb &38, &0a, &0d, &12, &1d, &0a, &1d, &f2, &5b,   9, &1c, &86   ; 9592: 38 0a 0d... 8..
    equb &84, &47, &19, &b1, &0a, &1d, &18, &f5, &1d,   6, &19, &1f   ; 959e: 84 47 19... .G.
    equb &10, &fe, &7c, &2f, &11, &1c, &f5, &1d,   3, &19, &12, &1d   ; 95aa: 10 fe 7c... ..|
    equb &46, &e1, &46, &11, &46, &0f, &d5, &4a, &0f, &0b,   4, &15   ; 95b6: 46 e1 46... F.F
    equb &0f, &23, &0f,   7, &0f,   7, &0f,   9, &1c, &11, &1b, &b5   ; 95c2: 0f 23 0f... .#.
    equb &1b,   0,   1, &b3,   1, &34,   4,   9, &0e, &a9, &3f, &47   ; 95ce: 1b 00 01... ...
    equb &1f,   9,   9, &a9,   5, &47, &0d, &0b, &12, &13, &1c, &0b   ; 95da: 1f 09 09... ...
    equb &12, &2f, &13, &6e, &46, &0c, &0f, &12, &13, &1c,   5,   1   ; 95e6: 12 2f 13... ./.
    equb &2f, &13                                                     ; 95f2: 2f 13       /.
    equs "n0F"                                                        ; 95f4: 6e 30 46    n0F
    equb &1d,   9,   9,   0,   5, &55, &47,   8, &f5, &0f,   5, &19   ; 95f7: 1d 09 09... ...
    equb &12, &0f, &f5, &0f,   5, &1a, &13, &1c, &f5, &0f,   1, &1a   ; 9603: 12 0f f5... ...
    equb &2f, &13, &6e, &30, &b5, &1c,   0,   4, &b3,   1, &7f, &35   ; 960f: 2f 13 6e... /.n
    equb &fb, &2f, &11, &48, &30, &10, &21, &9f, &28, &13, &10, &34   ; 961b: fb 2f 11... ./.
    equb &0a, &27, &28, &10, &10, &44, &0a, &11, &28, &10,   9, &21   ; 9627: 0a 27 28... .'(
    equb   9, &0b, &54, &45, &af, &10, &fb, &11, &1f,   9, &26,   0   ; 9633: 09 0b 54... ..T
    equb &3f, &55,   9, &10,   0, &3f, &55, &84, &11, &20,   9, &20   ; 963f: 3f 55 09... ?U.
    equb &47,   9, &0a, &27, &0a, &11, &5b, &11, &1f,   9             ; 964b: 47 09 0a... G..
    equs "!FL"                                                        ; 9655: 21 46 4c    !FL
    equb &a5, &21, &a0, &7c, &30, &a5, &0b, &a0                       ; 9658: a5 21 a0... .!.
    equs "|0]"                                                        ; 9660: 7c 30 5d    |0]
    equb &11, &1f, &46, &4a,   9, &34,   9, &44, &55, &0a, &3d, &0a   ; 9663: 11 1f 46... ..F
    equb &4d, &5b, &85, &11, &1f, &46, &3b,   9, &20, &47,   9,   9   ; 966f: 4d 5b 85... M[.
    equb &29,   9, &13, &55, &11, &1f, &0a, &27, &f2, &5b, &0a, &11   ; 967b: 29 09 13... )..
    equb &f2, &5b, &84, &47, &14,   9, &34,   9, &44, &55, &0a, &3d   ; 9687: f2 5b 84... .[.
    equb &0a, &4d, &5b, &85, &47,   7, &9e, &8b, &fe, &11, &1f, &46   ; 9693: 0a 4d 5b... .M[
    equb &11, &46, &0f, &d6, &30, &10,   3,   5, &f7, &0f,   8,   6   ; 969f: 11 46 0f... .F.
    equb &10,   9, &e8, &0f,   9, &21, &a9,   8,   9, &21, &a9,   5   ; 96ab: 10 09 e8... ...
    equb &85,   9, &1e, &84, &f7, &36, &84, &47, &5f, &a5, &21, &a0   ; 96b7: 85 09 1e... ...
    equb &7c, &13, &47, &40, &0b, &35,   2, &ff, &ff, &ff, &7f, &c5   ; 96c3: 7c 13 47... |.G
    equb &5d, &0b, &39,   2, &ff, &ff, &ff, &7f, &5d, &85, &47, &2a   ; 96cf: 5d 0b 39... ].9
    equb &b1, &0b, &35, &0b, &39, &7c, &0a,   5,   1, &5c, &47, &11   ; 96db: b1 0b 35... ..5
    equb &4f, &f6, &0e, &b1, &0b, &35, &7c,   3, &b1, &0b, &39, &7c   ; 96e7: 4f f6 0e... O..
    equb   3, &46, &0f, &4f, &4c, &0e, &b1, &0b, &35, &7c, &0c, &b1   ; 96f3: 03 46 0f... .F.
    equb &0b, &39, &7c, &0c, &46, &1a, &b1,   5, &4a,   9, &21, &a9   ; 96ff: 0b 39 7c... .9|
    equb   8, &c0,   5, &96                                           ; 970b: 08 c0 05... ...
    equs "tr|"                                                        ; 970f: 74 72 7c    tr|
    equb &0e, &b1, &0b, &35, &7c,   3, &b1, &0b, &39, &7c,   3, &46   ; 9712: 0e b1 0b... ...
    equb &4b, &fe, &11, &1f,   9, &21, &a9,   4, &47, &18, &a5, &0b   ; 971e: 4b fe 11... K..
    equb &a0, &7c, &13, &47, &0f, &4f, &77, &0e,   9, &1e, &86, &11   ; 972a: a0 7c 13... .|.
    equb &1f, &fe, &2f, &11                                           ; 9736: 1f fe 2f... ../
    equs "H0F,"                                                       ; 973a: 48 30 46... H0F
    equb   9, &0b, &a9,   4, &a5, &21, &a0, &7c, &13, &84, &47, &20   ; 973e: 09 0b a9... ...
    equb   9, &1e, &47,   6, &9e, &0b, &46, &10, &9f,   0,   4, &21   ; 974a: 09 1e 47... ..G
    equb &9f, &29,   6, &f2, &22, &9f, &29, &12, &fb, &21, &4f, &82   ; 9756: 9f 29 06... .).
    equb &0e, &fe, &2f, &11, &48, &30, &b5, &1f,   0,   1, &b3,   1   ; 9762: 0e fe 2f... ../
    equb &62,   4, &44, &8d, &26, &b3,   2, &21,   0, &0b,   9, &f8   ; 976e: 62 04 44... b.D
    equb &90, &72, &17, &90, &0f, &90, &0f, &92, &61, &47,   7, &f8   ; 977a: 90 72 17... .r.
    equb &90, &17, &92, &30, &7d, &b3,   2, &23,   0, &4f, &b1, &0e   ; 9786: 90 17 92... ...
    equb &4f,   9, &33, &b1, &9f, &29,   6, &19, &29,   5, &19        ; 9792: 4f 09 33... O.3
    equs "|4O|"                                                       ; 979d: 7c 34 4f... |4O
    equb &0e, &b1, &9f, &29, &0c, &1a, &7c,   3, &f8, &86, &17, &7c   ; 97a1: 0e b1 9f... ...
    equb &7d, &b3,   2, &54, &18, &b1, &9f, &0a, &0b, &7c, &36, &ac   ; 97ad: 7d b3 02... }..
    equb   4,   4,   0, &48, &80,   5, &81, &45, &25, &12, &ac, &30   ; 97b9: 04 04 00... ...
    equb &11, &0d, &ff, &a5, &0e, &10                                 ; 97c5: 11 0d ff... ...
    equs "!|6"                                                        ; 97cb: 21 7c 36    !|6
    equb &0b, &21, &c5, &f8, &90, &72, &17, &90, &30,   9, &0d, &44   ; 97ce: 0b 21 c5... .!.
    equb &0f, &12, &9f, &29,   6, &19, &2f, &0a                       ; 97da: 0f 12 9f... ...
    equs "([0"                                                        ; 97e2: 28 5b 30    ([0
    equb &0a, &14, &2f, &0a, &28, &5b, &85, &a1, &a1, &4f, &84, &0e   ; 97e5: 0a 14 2f... ../
    equb &44, &22, &12, &9f, &29, &12, &18,   9, &20, &84, &86, &a1   ; 97f1: 44 22 12... D".
    equb &a3,   9, &0d, &a9, &1a, &47,   7, &4f, &76, &0e, &46,   5   ; 97fd: a3 09 0d... ...
    equb &4f, &75, &0e, &44, &22, &12, &b1, &9f, &10, &0e, &a0, &fb   ; 9809: 4f 75 0e... Ou.
    equb &7c, &31, &86, &f7, &48, &85, &47, &1b, &9f, &18,   0,   4   ; 9815: 7c 31 86... |1.
    equb &55, &47, &0f, &9f, &29, &12, &18, &86, &a1, &9f, &4f, &77   ; 9821: 55 47 0f... UG.
    equb &0e, &4f, &82, &0e, &4f, &7b, &0e, &46,   4, &9e, &9f, &9f   ; 982d: 0e 4f 82... .O.
    equb   0,   4, &21, &9f, &29,   6, &f2, &22, &9f, &29, &12, &fb   ; 9839: 00 04 21... ..!
    equs "!FL"                                                        ; 9845: 21 46 4c    !FL
    equb &b1, &9f, &10, &0e, &a0, &fb, &7c, &31, &86, &f7, &48, &85   ; 9848: b1 9f 10... ...
    equb &47, &27, &9f, &18, &a9,   4, &47,   7, &4f, &7a, &0e, &46   ; 9854: 47 27 9f... G'.
    equb &1a, &9f, &29, &12, &18, &47,   7, &4f, &74, &0e, &46, &0f   ; 9860: 1a 9f 29... ..)
    equb &9f, &18, &a9,   8, &47,   7, &4f, &80, &0e, &46,   4, &9e   ; 986c: 9f 18 a9... ...
    equb &9f, &46,   4, &9e, &9f, &46, &15, &d6,   0,   0,   5, &0b   ; 9878: 9f 46 04... .F.
    equb &d8, &11, &0e, &9f, &11, &17, &6c, &11, &18, &84, &11, &1a   ; 9884: d8 11 0e... ...
    equb &84, &11, &44, &48, &11, &7d, &b3,   2, &4c,   0,   9, &1f   ; 9890: 84 11 44... ..D
    equb &47,   6,   0,   3, &11, &0d, &b1, &0b,   9,   6, &fc, &85   ; 989c: 47 06 00... G..
    equb &0e, &0d,   5, &e4,   5, &85, &ee,   5, &80                  ; 98a8: 0e 0d 05... ...
    equs "vr|"                                                        ; 98b1: 76 72 7c    vr|
    equb &0e, &7d, &b3,   2, &56, &1a, &df, &22, &f7, &47, &30, &11   ; 98b4: 0e 7d b3... .}.
    equb &22, &f7, &46, &30, &11, &21, &b1, &9f, &0a, &0b, &7c, &37   ; 98c0: 22 f7 46... ".F
    equb   9                                                          ; 98cc: 09          .
    equs '"', "G#"                                                    ; 98cd: 22 47 23    "G#
    equb &9f, &29, &12, &18, &9f, &18, &a9,   4, &85, &47, &16,   9   ; 98d0: 9f 29 12... .).
    equb &21, &47, &10, &9f, &18, &a9,   4, &47,   7, &4f, &c8, &0e   ; 98dc: 21 47 10... !G.
    equb &46,   5, &4f, &c5, &0e, &46,   4, &9e, &70, &ac,   4,   4   ; 98e8: 46 05 4f... F.O
    equb   0, &30,   0,   8, &81, &47, &6a, &ac, &30, &11, &0d, &ff   ; 98f4: 00 30 00... .0.
    equb &fb, &2f, &11, &47, &b1, &30, &10, &0e, &10                  ; 9900: fb 2f 11... ./.
    equs "#|7"                                                        ; 9909: 23 7c 37    #|7
    equb &0b, &23, &c5, &f8, &90, &72, &17, &90, &30,   9, &0d, &a9   ; 990c: 0b 23 c5... .#.
    equb &1b, &47, &19, &9f, &29,   6, &19, &2f, &0a                  ; 9918: 1b 47 19... .G.
    equs "([0"                                                        ; 9921: 28 5b 30    ([0
    equb &0a, &14, &2f, &0a, &28, &5b, &85, &a1, &a1, &4f, &85, &0e   ; 9924: 0a 14 2f... ../
    equb &46, &31, &b1, &9f, &10, &0e, &a0, &fb, &7c, &31, &86, &f7   ; 9930: 46 31 b1... F1.
    equb &48, &85, &47, &21, &9f, &18,   0,   4, &55, &9f, &18,   0   ; 993c: 48 85 47... H.G
    equb   8, &55, &84, &9f, &29, &12, &18, &86, &84, &a1, &9f, &b1   ; 9948: 08 55 84... .U.
    equb &0e, &0d,   5, &5e, &72, &9f, &a0                            ; 9954: 0e 0d 05... ...
    equs "|8F"                                                        ; 995b: 7c 38 46    |8F
    equb   4, &9e, &9f, &46, &90, &7d, &b3,   2, &54, &18, &b1, &9f   ; 995e: 04 9e 9f... ...
    equb &0a, &0b, &7c, &39, &ac,   4,   4,   0, &80, &1f,   2, &81   ; 996a: 0a 0b 7c... ..|
    equb &45, &b2, &13, &ac, &30, &11, &0d, &ff, &a5, &0e, &10        ; 9976: 45 b2 13... E..
    equs "!|9"                                                        ; 9981: 21 7c 39    !|9
    equb &0b, &21, &0a, &0b, &1a, &72, &c5, &f8, &90, &72,   5,   5   ; 9984: 0b 21 0a... .!.
    equb &72, &17, &90, &30,   9, &0d, &a9, &19, &47, &35,   9, &0e   ; 9990: 72 17 90... r..
    equb &a9,   8, &9f, &18, &a9,   5, &84, &47, &26, &9f, &29, &12   ; 999c: a9 08 9f... ...
    equb &18, &47,   7, &4f, &83, &0e, &46,   5, &4f, &81, &0e, &0a   ; 99a8: 18 47 07... .G.
    equb &14, &f2, &5b, &47, &10, &9f, &29,   6, &19, &29,   9, &19   ; 99b4: 14 f2 5b... ..[
    equb &f5, &14,   9, &19, &5b, &a1, &4e, &46,   4, &9e, &9f, &46   ; 99c0: f5 14 09... ...
    equb &4b, &b1, &9f, &10, &0e, &a0, &fb, &7c, &31, &86, &f7, &48   ; 99cc: 4b b1 9f... K..
    equb &85, &47, &3b,   9, &0d,   0, &11, &57, &47, &13, &9f, &18   ; 99d8: 85 47 3b... .G;
    equb &a9,   7, &9f, &18, &a9,   8,   9, &0d,   0, &13, &57, &84   ; 99e4: a9 07 9f... ...
    equb &85, &a1, &9f, &9f, &18,   0,   9, &59, &a1, &9f, &b1, &0e   ; 99f0: 85 a1 9f... ...
    equb &0d,   5, &45, &72, &9f, &a0, &7c, &38, &9f, &18, &a9,   9   ; 99fc: 0d 05 45... ..E
    equb &47, &0a, &b1, &b1, &9f, &a0                                 ; 9a08: 47 0a b1... G..
    equs "|0|"                                                        ; 9a0e: 7c 30 7c    |0|
    equb &0b, &46,   4, &9e,   6, &b1, &9f, &2f, &0a                  ; 9a11: 0b 46 04... .F.
    equs "(|,"                                                        ; 9a1a: 28 7c 2c    (|,
    equb &9f, &29, &12, &fb, &21, &7d, &b3,   2, &26,   4, &b1, &9f   ; 9a1d: 9f 29 12... .).
    equb &10, &0b                                                     ; 9a29: 10 0b       ..
    equs "|:}"                                                        ; 9a2b: 7c 3a 7d    |:}
    equb &b3,   2, &47,   0,   0, &0c, &11,   9, &fe, &11, &13,   0   ; 9a2e: b3 02 47... ..G
    equb &40, &11, &0e, &f5, &0f,   7, &1d,   5, &80, &76, &16, &14   ; 9a3a: 40 11 0e... @..
    equb &f5, &0f,   8, &1e, &13, &15, &b1,   5, &10, &10,   9, &a0   ; 9a46: f5 0f 08... ...
    equb &7c, &15, &7d, &b3,   2, &34,   0, &2f, &10, &54, &b2,   6   ; 9a52: 7c 15 7d... |.}
    equb &0a, &54, &0a, &52, &22, &0a, &54, &12, &52, &f5, &54,   2   ; 9a5e: 0a 54 0a... .T.
    equb &f2, &22, &30,   9,   9,   0, &0c, &55, &47,   6, &9e, &96   ; 9a6a: f2 22 30... ."0
    equb &46, &0a, &2f, &f5, &54,   2, &30, &0a, &0f, &22, &7d, &b3   ; 9a76: 46 0a 2f... F./
    equb   2                                                          ; 9a82: 02          .
    equs "z@F%"                                                       ; 9a83: 7a 40 46... z@F
    equb &b3,   3, &34,   0, &b1,   5, &10, &2e,   2, &10, &0f, &a0   ; 9a87: b3 03 34... ..4
    equb &7c, &15, &2e,   2,   9, &14, &a9, &41,   9, &14, &a9, &42   ; 9a93: 7c 15 2e... |..
    equb &85, &47,   9, &b1, &2e,   2, &0b, &37, &7c, &16, &7d, &f7   ; 9a9f: 85 47 09... .G.
    equb &4c, &30, &11, &0e, &fb, &11, &0b, &df, &0d, &10, &0f, &2f   ; 9aab: 4c 30 11... L0.
    equb &0a, &20, &28, &13, &fe, &11, &4b, &fb, &11, &4d, &0f, &78   ; 9ab7: 0a 20 28... . (
    equb &30, &13, &43,   9, &14,   4, &0a,   0,   0,   0,   0,   0   ; 9ac3: 30 13 43... 0.C
    equb   0,   0,   0,   7,   4, &81, &86, &a1,   1,   9, &0f,   0   ; 9acf: 00 00 00... ...
    equb &0d, &57, &47, &14, &0b, &1b,   5,   2, &c5, &60, &47,   6   ; 9adb: 0d 57 47... .WG
    equb &9e, &99, &46,   8, &0b, &1b, &fc, &60, &a1, &10,   9, &14   ; 9ae7: 9e 99 46... ..F
    equb &a9                                                          ; 9af3: a9          .
    equs "JG)/"                                                       ; 9af4: 4a 47 29... JG)
    equb &10, &e3, &10, &d8, &30, &0e, &1a, &c3, &f3, &19, &0a, &15   ; 9af8: 10 e3 10... ...
    equb &5b, &a1, &42, &a5, &0f, &10, &0f, &a0                       ; 9b04: 5b a1 42... [.B
    equs "|+/"                                                        ; 9b0c: 7c 2b 2f    |+/
    equb &f5, &20, &10, &fe, &21,   9, &4c, &86, &a1, &43,   9, &19   ; 9b0f: f5 20 10... . .
    equb &86, &a1, &63,   9, &14, &a9, &41,   9, &14, &a9, &42, &85   ; 9b1b: 86 a1 63... ..c
    equb &47, &19, &0b, &1b, &13, &37, &fb, &11, &19, &f8, &86, &30   ; 9b27: 47 19 0b... G..
    equb &16, &1a, &fb, &2f, &11, &4b, &f5, &56,   4, &1e, &30, &13   ; 9b33: 16 1a fb... ...
    equb &1b, &df, &1c, &ac,   4,   2, &48,   2, &81, &86, &47, &40   ; 9b3f: 1b df 1c... ...
    equb   9, &14, &a9, &41,   9, &14, &a9, &42, &85,   9, &0f,   0   ; 9b4b: 09 14 a9... ...
    equb &0c, &56,   9, &0f,   0,   9, &57, &84, &85,   9, &19,   9   ; 9b57: 0c 56 09... .V.
    equb &0e, &84, &86, &85, &47,   6, &df, &3f, &46, &1b, &0e, &1a   ; 9b63: 0e 84 86... ...
    equb &f8, &86, &60,   9, &3b,   9, &4c, &85, &84, &47,   9, &2f   ; 9b6f: f8 86 60... ..`
    equb &f5, &20, &11, &fe, &21, &30, &fe, &2f, &11                  ; 9b7b: f5 20 11... . .
    equs "M0D"                                                        ; 9b84: 4d 30 44    M0D
    equb &90, &16, &fb, &2f, &11, &4b, &df, &3f, &ac, &44, &7e, &16   ; 9b87: 90 16 fb... ...
    equb   9, &0f, &a9,   7, &47, &26,   9, &14, &a9, &4a, &a1, &a2   ; 9b93: 09 0f a9... ...
    equb &b1,   5, &18, &2f, &0e, &30,   5,   7                       ; 9b9f: b1 05 18... ...
    equs "tr0"                                                        ; 9ba7: 74 72 30    tr0
    equb &10, &0f, &a0, &7c, &15, &ff, &0a, &15, &18, &11, &0f, &f5   ; 9baa: 10 0f a0... ...
    equb &15,   1, &19, &12, &15, &46, &3f, &fb, &11, &18,   9, &0e   ; 9bb6: 15 01 19... ...
    equb &f7, &3b, &85, &47,   7, &4f, &f0, &0e, &46,   5, &4f, &4b   ; 9bc2: f7 3b 85... .;.
    equb &0e,   9, &0f, &a9, &0d, &47, &16, &0a, &15, &18, &11, &0f   ; 9bce: 0e 09 0f... ...
    equb &f5, &15,   1, &18, &11, &17, &ff, &f5, &15,   2, &19, &12   ; 9bda: f5 15 01... ...
    equb &15, &46, &13,   9, &0f, &a9, &0e, &47,   9,   0,   5, &11   ; 9be6: 15 46 13... .F.
    equb &0f, &ff, &46,   6, &9e, &94, &df, &1c, &44, &8b, &16, &a5   ; 9bf2: 0f ff 46... ..F
    equb &0f, &a0, &7c, &3d, &ff, &10, &22, &2f, &0a, &20, &28, &13   ; 9bfe: 0f a0 7c... ..|
    equb   9, &26,   0, &42, &55,   9, &26,   0, &41, &55, &84, &a1   ; 9c0a: 09 26 00... .&.
    equb &41, &2f, &0a, &56, &0a, &54, &5b, &a1, &89, &2f, &0a, &52   ; 9c16: 41 2f 0a... A/.
    equb &19, &12, &52, &0a, &54, &b4,   6, &df, &1c, &b1, &0b, &2e   ; 9c22: 19 12 52... ..R
    equb &7c, &16,   9, &22, &11, &0f, &0b, &27, &13, &14, &44, &8b   ; 9c2e: 7c 16 09... |..
    equb &16, &f8, &90, &30, &13, &47, &f7, &3a, &30, &11, &0c, &a5   ; 9c3a: 16 f8 90... ...
    equb &0f, &a0, &7c, &3c,   5,   4, &13, &3b, &fc, &13, &3f, &ac   ; 9c46: 0f a0 7c... ..|
    equb &a9,   9, &47, &74, &ff,   9, &0f,   0, &0b, &59,   9, &0f   ; 9c52: a9 09 47... ..G
    equb   0,   9, &58, &85, &a1, &97, &fb, &2f, &11, &4c, &fb, &11   ; 9c5e: 00 09 58... ..X
    equb &3a, &b1, &30, &10                                           ; 9c6a: 3a b1 30... :.0
    equs '"', "|;"                                                    ; 9c6e: 22 7c 3b    "|;
    equb &0b, &3b, &0e, &34,   5,   3, &74, &c3, &72, &13, &3b,   0   ; 9c71: 0b 3b 0e... .;.
    equb   5, &11, &0f, &0a, &15, &12, &35, &f5, &15,   5, &19, &12   ; 9c7d: 05 11 0f... ...
    equb &15, &a5, &0f, &10, &22, &a0, &fe, &7c, &31, &a1, &a0, &0b   ; 9c89: 15 a5 0f... ...
    equb &3f, &c3, &13, &3f, &f7, &45, &30, &11, &0d,   9, &0d, &47   ; 9c95: 3f c3 13... ?..
    equb   3, &ff, &0a, &35, &18, &11, &0f, &f5, &35,   3, &19, &12   ; 9ca1: 03 ff 0a... ...
    equb &15, &f5, &35,   7, &1d,   5, &7f, &61, &11, &17,   9, &0d   ; 9cad: 15 f5 35... ..5
    equb &86, &ac, &a9, &0a, &85, &47, &99,   9, &0d, &a1, &95, &f4   ; 9cb9: 86 ac a9... ...
    equb &0a, &46, &8b,   9, &0c, &2f, &11, &3a, &30, &0b, &47, &2f   ; 9cc5: 0a 46 8b... .F.
    equb &17, &90, &4f, &42, &0e, &0b, &3b,   5, &ff, &61, &a1, &79   ; 9cd1: 17 90 4f... ..O
    equb &b1, &0b, &3b, &7c,   3, &b1, &0b, &3f, &7c,   3, &46, &14   ; 9cdd: b1 0b 3b... ..;
    equb &fe, &11, &0b, &46, &0f, &d6, &79, &16,   3,   3, &8d, &15   ; 9ce9: fe 11 0b... ...
    equb   6, &23, &15,   9, &cb, &15,   9, &0b, &45, &1f, &15,   9   ; 9cf5: 06 23 15... .#.
    equb &0f,   0,   9, &58, &0b, &43, &f8, &78, &5c, &84, &0f, &a4   ; 9d01: 0f 00 09... ...
    equb   5, &10, &5c, &84,   9, &4c, &84, &47, &0e, &fe, &2f, &11   ; 9d0d: 05 10 5c... ..\
    equb &4d, &fc, &17, &a4, &0f, &aa, &30, &13, &1b, &a5, &0f, &a0   ; 9d19: 4d fc 17... M..
    equb &7c, &13, &11, &21, &9f, &10, &0f, &28, &13, &7d, &b3,   2   ; 9d25: 7c 13 11... |..
    equb &3d,   5, &44, &82, &19, &b3,   3, &ad, &5a, &10, &12,   7   ; 9d31: 3d 05 44... =.D
    equb &0b,   1,   0,   4,   0,   0,   0,   0, &1f,   0,   0,   0   ; 9d3d: 0b 01 00... ...
    equb &28, &0b, &46, &37, &b3,   4, &1e,   0, &fe, &2f, &11, &3a   ; 9d49: 28 0b 46... (.F
    equb &b1, &2e,   3, &10                                           ; 9d55: b1 2e 03... ...
    equs "=|;"                                                        ; 9d59: 3d 7c 3b    =|;
    equb &f8, &90,   5,   5, &73, &17, &90, &7d, &b3,   4, &21,   0   ; 9d5c: f8 90 05... ...
    equb &2e,   3,   9,   9, &47, &10, &4f, &7e, &0e                  ; 9d68: 2e 03 09... ...
    equs "O@3"                                                        ; 9d71: 4f 40 33    O@3
    equb &f8, &90,   5, &40, &73, &17, &90, &30, &fe, &2e,   3, &11   ; 9d74: f8 90 05... ...
    equb   9, &7d, &ff,   4,   0, &15, &1d,   5, &20, &13, &0e, &fc   ; 9d80: 09 7d ff... .}.
    equb &c4, &13, &0a, &fb, &11,   9, &ac, &a9, &0a, &47, &12, &2e   ; 9d8c: c4 13 0a... ...
    equb   2, &9f, &29,   6, &f2, &22, &4f,   4, &0e, &4f,   0,   3   ; 9d98: 02 9f 29... ..)
    equb &44, &f9, &17, &df, &41, &2e,   2, &9f, &30, &10, &3d, &28   ; 9da4: 44 f9 17... D..
    equb &13,   9, &3d,   0,   5, &55, &a1, &7a, &b1, &2e,   2, &9f   ; 9db0: 13 09 3d... ..=
    equb &30, &10, &3d, &a0, &fb, &7c, &31, &a1, &93, &ac, &a9, &16   ; 9dbc: 30 10 3d... 0.=
    equb &47, &2a, &ff, &a5                                           ; 9dc8: 47 2a ff... G*.
    equs "P|;"                                                        ; 9dcc: 50 7c 3b    P|;
    equb &f8, &90,   5,   5, &73, &17, &90, &b1, &30, &10, &3d, &10   ; 9dcf: f8 90 05... ...
    equb &50, &a0, &fb, &7c, &31, &a1, &76,   9, &62, &47,   7, &4f   ; 9ddb: 50 a0 fb... P..
    equb &2d, &0e, &46,   5, &4f, &2b, &0e, &df                       ; 9de7: 2d 0e 46... -.F
    equs "BFE"                                                        ; 9def: 42 46 45    BFE
    equb   9, &42, &a9, &3f, &f7, &3a, &84, &47, &2e, &0b, &46,   5   ; 9df2: 09 42 a9... .B.
    equb   8, &75, &13, &0e, &0b, &0e,   5, &20, &5f, &0b, &46, &fc   ; 9dfe: 08 75 13... .u.
    equb &60, &85, &47,   6, &9e, &7c, &46, &15, &0d, &1d, &0b        ; 9e0a: 60 85 47... `.G
    equs "F,~"                                                        ; 9e15: 46 2c 7e    F,~
    equb &15, &1d, &0b, &0e, &0b, &0a, &61, &47,   6, &0b, &0e, &13   ; 9e18: 15 1d 0b... ...
    equb &0a, &46, &10,   9, &4f, &47,   7, &4f, &2c, &0e, &46,   5   ; 9e24: 0a 46 10... .F.
    equb &4f, &2a, &0e, &df, &42, &f7, &45, &47, &0b, &ff, &df        ; 9e30: 4f 2a 0e... O*.
    equs "AHA"                                                        ; 9e3b: 41 48 41    AHA
    equb &17,   3, &63,   0, &0b, &0e,   5                            ; 9e3e: 17 03 63... ..c
    equs " `G", '"', "O"                                              ; 9e45: 20 60 47...  `G
    equb   4, &0e, &b1, &0b, &0a, &c3, &7c,   3, &10, &0e, &fc, &0b   ; 9e4a: 04 0e b1... ...
    equb &0a, &b8, &f7, &17, &a5, &1d, &10, &12, &0b, &0e, &f3, &1d   ; 9e56: 0a b8 f7... ...
    equb &7c,   3, &b9, &ea, &17, &df, &42, &2e,   2, &9f,   0,   8   ; 9e62: 7c 03 b9... |..
    equb &21, &9f, &29,   5,   0, &3f, &21, &fb, &2f, &11, &3a, &f4   ; 9e6e: 21 9f 29... !.)
    equb &0a, &7d, &b3,   3, &56, &1c, &9f, &29,   8, &1d, &13, &10   ; 9e7a: 0a 7d b3... .}.
    equb &ff, &fb, &11, &0b, &9f, &29,   5, &18, &a9                  ; 9e86: ff fb 11... ...
    equs "HGf"                                                        ; 9e8f: 48 47 66    HGf
    equb &df,   2,   5, &f1, &0b, &10, &73, &c6,   5,   8             ; 9e92: df 02 05... ...
    equs "]GV"                                                        ; 9e9c: 5d 47 56    ]GV
    equb &fc, &c4, &13, &0c, &b1,   0,   7, &7c, &23, &ff, &0b, &0c   ; 9e9f: fc c4 13... ...
    equb &c3, &13, &0c, &0b, &10,   5, &ed, &5c, &0b, &0c,   5,   2   ; 9eab: c3 13 0c... ...
    equb &5c, &84, &47,   8, &a5, &14                                 ; 9eb7: 5c 84 47... \.G
    equs "|>F"                                                        ; 9ebd: 7c 3e 46    |>F
    equb &1b, &a5, &14, &7c, &3b, &0b, &10,   5, &d4, &5e, &47, &0b   ; 9ec0: 1b a5 14... ...
    equb   9, &14,   0,   9, &55, &a1, &3d, &46,   7,   9, &26, &86   ; 9ecc: 09 14 00... ...
    equb &a1, &51, &f7, &45, &86, &47, &cb, &0b, &0c, &9f, &29,   9   ; 9ed8: a1 51 f7... .Q.
    equb &1d, &61, &a1, &3c, &0b, &0c, &9f, &29,   9, &1d, &60, &a1   ; 9ee4: 1d 61 a1... .a.
    equb &11, &f4,   8, &44, &56, &19, &0b, &10,   5, &ae             ; 9ef0: 11 f4 08... ...
    equs "^G1"                                                        ; 9efa: 5e 47 31    ^G1
    equb &ac, &a9,   7, &47, &20, &ff, &a5, &14, &7c, &3e, &0b, &10   ; 9efd: ac a9 07... ...
    equb   5, &ae, &5d, &0a, &1a, &2f, &0a, &2a, &5b, &84, &a1, &46   ; 9f09: 05 ae 5d... ..]
    equb   9, &14,   0, &0d, &58, &a1, &45, &f4,   8, &46, &0b, &b1   ; 9f15: 09 14 00... ...
    equb   5, &10, &2f, &0a, &60, &a0, &7c, &15, &44, &56, &19, &f4   ; 9f21: 05 10 2f... ../
    equb   7, &a5, &14, &7c, &3b, &0b, &10,   5, &8e, &73, &bf, &46   ; 9f2d: 07 a5 14... ...
    equb &73,   9, &26, &86, &a1                                      ; 9f39: 73 09 26... s.&
    equs "QDT"                                                        ; 9f3e: 51 44 54    QDT
    equb &19,   9, &14,   0,   5, &55, &a1, &44,   9, &26, &47,   5   ; 9f41: 19 09 14... ...
    equb &fc, &13, &10, &46, &74,   9, &14,   0,   5, &55, &a1, &44   ; 9f4d: fc 13 10... ...
    equb &9f, &29,   6, &0a, &1a, &22, &0b, &10, &0e, &26,   5,   2   ; 9f59: 9f 29 06... .).
    equb &74, &72, &13, &10, &fe, &11, &0b, &46, &58,   9, &14,   0   ; 9f65: 74 72 13... tr.
    equb   4, &55,   9, &26, &86, &84, &a1, &50, &9f,   9, &14, &21   ; 9f71: 04 55 09... .U.
    equb &9f, &29,   6, &0a, &1a, &22, &0b, &10,   9, &26, &86, &c0   ; 9f7d: 9f 29 06... .).
    equb   5,   3, &74, &72, &13, &10, &46, &35, &0b, &10,   5, &d1   ; 9f89: 05 03 74... ..t
    equb &60,   9, &26, &84, &47,   9, &4f, &77, &0e,   0,   4, &11   ; 9f95: 60 09 26... `.&
    equb &14,   9, &14,   0,   4, &55, &a1, &4f, &46, &1b, &d5, &21   ; 9fa1: 14 09 14... ...
    equb &19, &30, &0a, &ca, &18, &ca, &18, &d2, &18, &e2, &18, &e2   ; 9fad: 19 30 0a... .0.
    equb &18,   0,   0,   0,   0,   0,   0, &fe, &18, &fe, &18, &f4   ; 9fb9: 18 00 00... ...
    equb   8, &0b, &10, &fc, &5d, &47,   7, &b1, &0b, &10, &7c, &0e   ; 9fc5: 08 0b 10... ...
    equb &0b, &10,   5, &d4, &5c, &0b, &10,   5, &d3, &5c, &85, &47   ; 9fd1: 0b 10 05... ...
    equb &0a, &b1, &a5, &14, &a0                                      ; 9fdd: 0a b1 a5... ...
    equs "|0|"                                                        ; 9fe2: 7c 30 7c    |0|
    equb   3, &a5, &14, &10, &14, &a0,   9, &0b, &7c, &31, &11, &0b   ; 9fe5: 03 a5 14... ...
    equb &7d, &ac, &a9, &2b, &30, &11, &0d,   9, &0d, &47,   3, &ff   ; 9ff1: 7d ac a9... }..
    equb &9f, &2f, &0a, &20, &28, &13, &0f, &90, &30, &13, &0e, &ac   ; 9ffd: 9f 2f 0a... ./.
    equb &44, &19, &1a, &df, &2a, &9f, &2f, &0a, &20, &28, &13, &30   ; a009: 44 19 1a... D..
    equb &9f, &18, &a9,   9, &47, &1f, &b1,   5,   7, &9f, &29,   9   ; a015: 9f 18 a9... ...
    equb &1e, &7c, &11, &b1, &9f, &29, &0b, &1e, &c3, &9f, &29,   9   ; a021: 1e 7c 11... .|.
    equb &1e, &7c,   4, &fb, &2f, &11, &3a, &df, &1c, &46, &10, &df   ; a02d: 1e 7c 04... .|.
    equb &1c, &f7, &3a, &86, &47,   9, &b1,   5,   9, &9f, &a0, &7c   ; a039: 1c f7 3a... ..:
    equb &15, &46, &62, &ff, &b1, &9f, &7c, &3b, &f4,   8, &46, &59   ; a045: 15 46 62... .Fb
    equb &b1, &9f, &2f, &0a, &20, &a0, &7c, &2b, &b1, &2f, &0a        ; a051: b1 9f 2f... ../
    equs " |5"                                                        ; a05c: 20 7c 35     |5
    equb &df                                                          ; a05f: df          .
    equs ".FG"                                                        ; a060: 2e 46 47    .FG
    equb &df                                                          ; a063: df          .
    equs "@FC"                                                        ; a064: 40 46 43    @FC
    equb &b1, &9f                                                     ; a067: b1 9f       ..
    equs "|CF="                                                       ; a069: 7c 43 46... |CF
    equb &b1, &9f, &7c, &3e, &9f, &18,   0,   9, &58, &f7, &4d, &86   ; a06d: b1 9f 7c... ..|
    equb &84, &47,   9, &b1,   5, &18, &9f, &a0, &7c, &15, &46, &25   ; a079: 84 47 09... .G.
    equb &9e,   1, &46, &21, &d6, &15, &1a,   9,   7, &d8, &19,   9   ; a085: 9e 01 46... ..F
    equb &f3, &19, &2a, &9c, &19, &3f, &9c, &19, &40, &fd, &19, &41   ; a091: f3 19 2a... ..*
    equb &fd, &19, &48, &f7, &19, &49, &f7, &19, &4a, &e1, &19,   9   ; a09d: fd 19 48... ..H
    equb &0d, &47, &0f, &9f, &29,   6, &19, &2f, &0a, &28, &5b, &a1   ; a0a9: 0d 47 0f... .G.
    equb &a1, &4f, &86, &0e, &0b, &0e, &2f, &17, &90, &30, &0a, &0b   ; a0b5: a1 4f 86... .O.
    equb &9f, &18,   0,   8, &58, &c0,   5,   5, &74, &9f, &18, &a9   ; a0c1: 9f 18 00... ...
    equb   8, &c0,   5                                                ; a0cd: 08 c0 05    ...
    equs " tr#"                                                       ; a0d0: 20 74 72...  tr
    equb &b1, &0a, &0b, &1a, &7c, &33, &9f, &29, &12, &b1, &9f, &a0   ; a0d4: b1 0a 0b... ...
    equb &7c, &13, &21, &7d, &b3,   2, &27,   4, &f8, &90, &30, &13   ; a0e0: 7c 13 21... |.!
    equb &0b, &b1, &9f, &7c, &3b, &0b, &0b, &2f, &17, &90, &0a, &28   ; a0ec: 0b b1 9f... ...
    equb &30, &9f, &29,   6, &19, &5b, &a1, &a1, &7d, &b3,   2, &3e   ; a0f8: 30 9f 29... 0.)
    equb &16, &44, &5b, &1b, &b3,   3, &51, &13, &9f, &29,   3, &19   ; a104: 16 44 5b... .D[
    equb &f2, &5b, &47, &0b, &b1, &9f, &29,   3, &19,   0,   2        ; a110: f2 5b 47... .[G
    equs "|E."                                                        ; a11b: 7c 45 2e    |E.
    equb   2, &10, &0d, &30, &9f, &28, &13, &2e,   2,   9, &17, &47   ; a11e: 02 10 0d... ...
    equb &4c, &a5, &0c, &7c, &3b,   9, &0c,   0,   9                  ; a12a: 4c a5 0c... L..
    equs "WG1"                                                        ; a133: 57 47 31    WG1
    equb   9, &0c,   0, &0c, &55, &47, &0c, &b1, &a5, &0c, &a0        ; a136: 09 0c 00... ...
    equs "|0|3F"                                                      ; a141: 7c 30 7c... |0|
    equb   9, &b1, &f5, &12,   1, &1e, &7c, &33,   9, &11, &a9, &3f   ; a146: 09 b1 f5... ...
    equb &47, &0b, &b1,   5, &1f, &0f, &15, &7c, &11, &46, &0a, &b1   ; a152: 47 0b b1... G..
    equb   5, &18, &10, &0c, &a0, &7c, &15, &b1, &2e,   2, &10, &0d   ; a15e: 05 18 10... ...
    equb &30, &10, &0c, &a0, &fe, &7c, &31, &a1                       ; a16a: 30 10 0c... 0..
    equs "ZFR"                                                        ; a172: 5a 46 52    ZFR
    equb &fe, &2f, &11, &3b, &b1, &30, &10, &0c                       ; a175: fe 2f 11... ./.
    equs "|>O"                                                        ; a17d: 7c 3e 4f    |>O
    equb   2, &33, &fb, &2f, &11, &3b, &30,   9, &15,   9, &0c, &a9   ; a180: 02 33 fb... .3.
    equb   5, &84, &a1, &37,   9, &0c,   0,   9, &58,   9, &14, &84   ; a18c: 05 84 a1... ...
    equb &2e,   2,   9, &15, &86, &84, &47, &0e, &f7, &34, &47,   8   ; a198: 2e 02 09... ...
    equb   9, &1e, &a1, &12, &46,   4, &9e, &12, &0a, &12, &2e,   2   ; a1a4: 09 1e a1... ...
    equb &0a, &13, &5b, &a5, &0d, &30, &10, &0c, &a0, &fb, &7c, &31   ; a1b0: 0a 13 5b... ..[
    equb &85, &a1, &5a,   9, &11, &a9, &42, &a1, &65, &b1,   9, &0b   ; a1bc: 85 a1 5a... ..Z
    equs "|$}"                                                        ; a1c8: 7c 24 7d    |$}
    equb &ff, &ac, &a9,   7, &47, &18, &ff, &9f, &f2, &5a, &47,   6   ; a1cb: ff ac a9... ...
    equb &9e, &5b, &46, &0c, &9f, &12, &0b, &b1, &0a, &0b,   0,   8   ; a1d7: 9e 5b 46... .[F
    equs "|EF"                                                        ; a1e3: 7c 45 46    |EF
    equb   7, &9f, &f2, &5b, &a1, &11, &7d, &b3,   2, &88, &41, &44   ; a1e6: 07 9f f2... ...
    equb &1d, &22, &b3,   3, &21,   0, &f8, &7c, &0f, &86, &5d, &47   ; a1f2: 1d 22 b3... .".
    equb   7, &b1, &f8, &86, &7c, &12, &7d, &b3,   3                  ; a1fe: 07 b1 f8... ...
    equs "l6FS"                                                       ; a207: 6c 36 46... l6F
    equb &b3,   4, &1c,   2, &10, &0b, &b2, &0a, &0a, &0b, &2e,   3   ; a20b: b3 04 1c... ...
    equb &0b                                                          ; a217: 0b          .
    equs "3#0"                                                        ; a218: 33 23 30    3#0
    equb &f5, &0b,   4, &f8                                           ; a21b: f5 0b 04... ...
    equs "x#0"                                                        ; a21f: 78 23 30    x#0
    equb &f5, &0b,   8, &2e,   3, &9f, &22, &30, &9f, &0a, &0b, &22   ; a222: f5 0b 08... ...
    equb &7d, &b3,   4, &26,   0, &2e,   3, &0b, &3b, &2f, &17, &7c   ; a22e: 7d b3 04... }..
    equb &0f, &78, &2e,   3, &13, &27, &2e,   2, &0b, &3f, &2f, &17   ; a23a: 0f 78 2e... .x.
    equb &90, &b1, &2e,   2, &0b,   9, &fb, &7c, &46, &b1,   5, &44   ; a246: 90 b1 2e... ...
    equb &fc, &7c, &10, &f8, &98, &2e,   2, &13, &47, &7d, &ff, &a5   ; a252: fc 7c 10... .|.
    equb &0f, &7c, &3b,   9, &0f,   0,   5, &55, &a1, &6b, &b1,   5   ; a25e: 0f 7c 3b... .|;
    equb &44, &fc, &7c, &10, &f8, &98, &30, &13, &23, &f2, &12, &0b   ; a26a: 44 fc 7c... D.|
    equb &fc, &13, &2f, &f4, &2c, &f8, &7c, &30, &13, &3b, &0b, &2f   ; a276: fc 13 2f... ../
    equb   5,   3, &72, &13, &2f, &df, &29, &a5, &0f, &2f, &0a, &20   ; a282: 05 03 72... ..r
    equb &a0, &fb, &7c, &31, &a1, &71, &0a, &0b, &12,   9, &2f, &f5   ; a28e: a0 fb 7c... ..|
    equb &20,   9, &1a, &30, &13, &33, &0a, &0b, &f2, &5a, &47,   8   ; a29a: 20 09 1a...  ..
    equb &a5, &0b                                                     ; a2a6: a5 0b       ..
    equs "|IFB"                                                       ; a2a8: 7c 49 46... |IF
    equb &0a, &0b, &12, &0d, &0b, &33, &0a, &0d, &1a, &5c, &47,   6   ; a2ac: 0a 0b 12... ...
    equb &9e                                                          ; a2b8: 9e          .
    equs "tF2"                                                        ; a2b9: 74 46 32    tF2
    equb &0b, &33, &0a, &0d, &1a, &60, &47,   8, &a5, &0b             ; a2bc: 0b 33 0a... .3.
    equs "|IF$"                                                       ; a2c6: 7c 49 46... |IF
    equb &9f, &f2, &5a, &0b, &33, &9f, &1a, &60, &85, &47, &0a, &b1   ; a2ca: 9f f2 5a... ..Z
    equb &f5, &0d,   8                                                ; a2d6: f5 0d 08    ...
    equs "|IF"                                                        ; a2d9: 7c 49 46    |IF
    equb &11, &9f, &12, &0d, &9f, &29,   8, &19, &12,   9, &48, &40   ; a2dc: 11 9f 12... ...
    equb &1c,   3, &3f,   0, &df, &1c, &f7, &45, &47,   9, &ff, &48   ; a2e8: 1c 03 3f... ..?
    equb &10, &1c,   3, &3f,   0, &f4,   4, &df, &4a, &f7, &44, &47   ; a2f4: 10 1c 03... ...
    equb   3, &ff, &fb, &2f, &11, &3c,   9, &26, &a9, &23, &45, &10   ; a300: 03 ff fb... ...
    equb &1c, &ff, &fc, &13, &27, &ac, &a9, &3c, &47,   7, &df,   2   ; a30c: 1c ff fc... ...
    equb &ff, &df, &4a, &f8, &86, &17, &7c, &b1, &30, &0b, &23, &f8   ; a318: ff df 4a... ..J
    equb &78, &7c, &17, &0a, &0b, &12,   9, &9f, &29,   8, &19, &f2   ; a324: 78 7c 17... x|.
    equb &5b, &47, &0a, &9f, &29,   8, &19, &12,   9, &46, &f2, &9f   ; a330: 5b 47 0a... [G.
    equb &1a, &0a, &0b, &1a, &73, &c3, &13, &2b, &0b, &2f, &0b, &2b   ; a33c: 1a 0a 0b... ...
    equb   9, &21, &86, &c0, &c3, &74, &5f, &11, &22,   5, &d6, &0e   ; a348: 09 21 86... .!.
    equb &22, &73, &0e, &21,   5,   2, &74, &72, &13, &37, &b1, &0b   ; a354: 22 73 0e... "s.
    equb &37, &0b, &27, &7c, &0f,   9, &22, &47,   7, &0a, &0b, &1a   ; a360: 37 0b 27... 7.'
    equb &13, &2f, &0b, &37,   5, &94, &73, &bf, &46, &2e, &b1, &0b   ; a36c: 13 2f 0b... ./.
    equb &2f, &7c,   3, &b1, &0b, &2b, &7c,   3, &46, &2f, &b1, &0b   ; a378: 2f 7c 03... /|.
    equb &2f,   5,   3, &75, &7c,   3, &46, &25, &b1, &0b, &2f, &7c   ; a384: 2f 05 03... /..
    equb &0c, &b1, &0b, &2b, &7c, &0b, &46, &19, &b1, &0b, &2f,   5   ; a390: 0c b1 0b... ...
    equb   3, &75, &7c, &0b, &46, &0f, &d5,   0,   0, &41,   4,   6   ; a39c: 03 75 7c... .u|
    equb &1d, &12, &1d, &1c, &1d, &28, &1d, &0a, &0b, &12,   9, &9f   ; a3a8: 1d 12 1d... ...
    equb &f2                                                          ; a3b4: f2          .
    equs "[G@"                                                        ; a3b5: 5b 47 40    [G@
    equb   9, &22, &47, &15, &0b, &2f, &9f, &1a, &60, &47, &0c, &4f   ; a3b8: 09 22 47... ."G
    equb   0, &0b, &0b, &2f, &c3, &13, &2f, &46, &f1, &46, &15, &0b   ; a3c4: 00 0b 0b... ...
    equb &37,   5, &d8, &5c, &47,   9, &b1, &9f, &1a, &7c, &0c, &46   ; a3d0: 37 05 d8... 7..
    equb   7, &b1, &9f, &1a, &7c,   3, &b1, &9f, &29,   4, &1a, &7c   ; a3dc: 07 b1 9f... ...
    equb &0b, &9f, &29,   8, &19, &12,   9, &0b, &2f, &c3, &13, &2f   ; a3e8: 0b 9f 29... ..)
    equb &46, &bf, &0b, &27, &fc, &5d, &47, &0b, &b1, &0b, &27, &c4   ; a3f4: 46 bf 0b... F..
    equb &c4, &f8, &78, &7c, &17, &b1, &2e,   2, &0b, &47, &f8, &78   ; a400: c4 f8 78... ..x
    equb &7c, &17, &0a, &0b, &f2                                      ; a40c: 7c 17 0a... |..
    equs "[G'"                                                        ; a411: 5b 47 27    [G'
    equb &0a, &0b, &12,   9, &9f, &29,   4, &1a, &c4, &c4, &13, &33   ; a414: 0a 0b 12... ...
    equb &0b, &33, &0b                                                ; a420: 0b 33 0b    .3.
    equs "#aG"                                                        ; a423: 23 61 47    #aG
    equb   9, &b1, &0b, &33, &f8, &78, &7c, &17, &f5, &0b,   8, &19   ; a426: 09 b1 0b... ...
    equb &12, &0b, &9f, &b4, &0a, &46, &d7, &7d, &b3,   3, &c3, &8b   ; a432: 12 0b 9f... ...
    equb &44, &83, &1e, &b3,   4, &21,   0, &df, &0d, &df, &47, &b1   ; a43e: 44 83 1e... D..
    equb   6, &12,   7, &7c, &0b, &7d, &b3,   4, &34,   0, &b1,   5   ; a44a: 06 12 07... ...
    equb &10, &2e,   3, &10, &33, &a0, &7c, &15, &df, &4c, &2e,   3   ; a456: 10 2e 03... ...
    equb &10, &0d, &10, &46, &28, &13, &10, &46, &10, &33, &28, &13   ; a462: 10 0d 10... ...
    equb &7d, &b3,   4, &1e,   0, &ac, &a9,   1, &47, &0a, &df,   2   ; a46e: 7d b3 04... }..
    equb &fe, &2e,   3, &11, &7f, &ff, &b1, &2e,   3, &10, &0d        ; a47a: fe 2e 03... ...
    equs "|;}"                                                        ; a485: 7c 3b 7d    |;}
    equb &b3,   4, &22,   0, &f7, &45, &47, &16, &ff, &2e,   3,   9   ; a488: b3 04 22... .."
    equb &7c, &47,   6, &df, &4e, &46,   9, &b1, &2e,   3, &10, &0d   ; a494: 7c 47 06... |G.
    equs "|>F"                                                        ; a4a0: 7c 3e 46    |>F
    equb &10, &fb, &2e,   3, &11, &7e,   9, &7d, &86, &30,   9,   9   ; a4a3: 10 fb 2e... ...
    equb &84, &a1, &11, &7d, &b3,   4, &25,   0, &ac, &a9,   4, &47   ; a4af: 84 a1 11... ...
    equb &38, &ff, &b1, &2e,   3, &10                                 ; a4bb: 38 ff b1... 8..
    equs " |;."                                                       ; a4c1: 20 7c 3b...  |;
    equb   3,   9, &32, &86, &47,   7, &b1, &0b,   9, &7c,   1, &b1   ; a4c5: 03 09 32... ..2
    equb &0b,   9, &7c, &0e, &0b,   9,   5, &9a, &5c, &47, &0d, &2e   ; a4d1: 0b 09 7c... ..|
    equb   3,   9, &0d,   0,   4, &55, &a1, &58, &46,   5, &4f, &9a   ; a4dd: 03 09 0d... ...
    equb &50, &2e,   3,   9, &46, &a9, &0d, &a1, &62, &7d, &fb, &11   ; a4e9: 50 2e 03... P..
    equb &7f, &2f, &f5, &20,   6, &1d, &30, &13, &8c, &0b, &8c, &44   ; a4f5: 7f 2f f5... ./.
    equb &90, &21, &0b, &8c,   5, &88, &61, &11, &7c, &10, &33, &2f   ; a501: 90 21 0b... .!.
    equb &0a, &60, &28, &13, &30,   9, &7c, &47, &0a, &10, &33, &2f   ; a50d: 0a 60 28... .`(
    equb &0a, &62, &28, &13, &30, &ff, &0b, &8c, &be,   9, &7c, &55   ; a519: 0a 62 28... .b(
    equb &11, &7d, &ac, &a9,   7, &45, &18, &20, &ff,   9, &7c, &47   ; a525: 11 7d ac... .}.
    equb &16,   5, &95, &13, &84,   4,   2, &1e,   2, &15, &5b, &df   ; a531: 16 05 95... ...
    equb &4e, &10, &46, &10, &0d, &28, &13, &46, &14, &fe, &2f, &11   ; a53d: 4e 10 46... N.F
    equb &4c,   5, &88, &30, &13, &84,   4,   1, &1c, &15, &5b, &a5   ; a549: 4c 05 88... L..
    equs "F|>"                                                        ; a555: 46 7c 3e    F|>
    equb &fe, &11, &7e,   9, &46,   0, &0d, &57,   9, &7f, &86, &84   ; a558: fe 11 7e... ..~
    equb &47, &16, &f7, &4d, &47, &0a, &b1,   5, &10, &10, &46, &a0   ; a564: 47 16 f7... G..
    equb &7c, &15, &df, &4c, &b1, &fe                                 ; a570: 7c 15 df... |..
    equs "|OF"                                                        ; a576: 7c 4f 46    |OF
    equb   4, &df, &4d,   9, &46, &a9, &0d, &47, &10,   9, &7c, &47   ; a579: 04 df 4d... ..M
    equb   8,   5, &9d, &13, &84, &46,   6,   5, &8c, &13, &84,   9   ; a585: 08 05 9d... ...
    equb &7e, &45, &14, &20,   9, &7c, &47,   7, &4f, &9b, &50, &46   ; a591: 7e 45 14... ~E.
    equb   6,   9, &16, &a1, &37, &10, &20, &10, &46, &28, &13, &0a   ; a59d: 06 09 16... ...
    equb &26, &18, &11, &20, &f5, &26,   2, &19, &12, &26,   9, &0d   ; a5a9: 26 18 11... &..
    equb &11, &7b,   9, &46, &a9, &0e, &47, &26,   9, &7b, &a9,   5   ; a5b5: 11 7b 09... .{.
    equb &47,   7, &0a, &13, &18, &11, &7b,   9, &7b, &0d, &5b, &81   ; a5c1: 47 07 0a... G..
    equb &86, &a1, &57,   6, &fc, &85, &0e, &7b,   5, &ed,   5, &85   ; a5cd: 86 a1 57... ..W
    equb &ee,   5, &80, &76, &13, &80, &46, &2b, &a5, &20, &a0, &10   ; a5d9: ee 05 80... ...
    equb &80, &10, &88, &fb, &7c, &14,   9, &7c, &47, &13, &a5, &20   ; a5e5: 80 10 88... ...
    equb &10, &0d, &a0, &fe, &7c, &31, &a1, &56,   9, &7b,   0, &0d   ; a5f1: 10 0d a0... ...
    equb &57, &a1, &55, &0b, &80,   5,   5, &60, &47,   5, &fc, &13   ; a5fd: 57 a1 55... W.U
    equb &80, &0b, &80, &0b, &84, &72, &13, &80,   9, &7f, &47, &11   ; a609: 80 0b 80... ...
    equb &0b, &80,   5, &97, &5c, &47,   8,   5, &99, &13, &80, &46   ; a615: 0b 80 05... ...
    equb   4, &9e, &3b, &b1, &0b, &80, &7c, &0e, &0b, &80,   5, &9c   ; a621: 04 9e 3b... ..;
    equb &5c, &47, &0a, &b1, &a5, &0d, &a0                            ; a62d: 5c 47 0a... \G.
    equs "|0|"                                                        ; a634: 7c 30 7c    |0|
    equb &0b,   9, &7c, &86, &47, &38,   9, &46, &a9, &0e, &47,   8   ; a637: 0b 09 7c... ..|
    equb &10, &20, &10, &0d, &28, &13, &a5, &0d, &10, &20, &a0, &fe   ; a643: 10 20 10... . .
    equb &7c, &31, &a1, &56, &0b, &80,   5, &93, &5d, &47, &1b, &b1   ; a64f: 7c 31 a1... |1.
    equb   5, &21, &2f, &0e, &4d,   5, &10                            ; a65b: 05 21 2f... .!/
    equs "ts0"                                                        ; a662: 74 73 30    ts0
    equb &10, &0d, &a0, &7c, &15,   9, &0d, &a9,   8, &47,   5        ; a665: 10 0d a0... ...
    equs "O 3"                                                        ; a670: 4f 20 33    O 3
    equb &fb, &11, &7f, &2e,   2, &0b, &3f, &2f, &17, &90, &b1, &fb   ; a673: fb 11 7f... ...
    equs "|OD "                                                       ; a67f: 7c 4f 44... |OD
    equb &1f, &f4,   8, &46,   9, &df, &4d,   9, &7d, &86, &a1, &11   ; a683: 1f f4 08... ...
    equb   9, &7d, &47, &0e,   9, &46,   0, &0e, &55, &a1, &59, &b1   ; a68f: 09 7d 47... .}G
    equb &0b, &8c, &7c, &0e, &fb, &2f, &11, &4c, &30, &0b, &52, &fc   ; a69b: 0b 8c 7c... ..|
    equb &60, &a1, &10, &44, &d7, &21, &ff, &f4,   7, &a5             ; a6a7: 60 a1 10... `..
    equs "F|>"                                                        ; a6b1: 46 7c 3e    F|>
    equb   9, &46,   0, &0d, &58, &47,   6, &9e                       ; a6b4: 09 46 00... .F.
    equs "\FR"                                                        ; a6bc: 5c 46 52    \FR
    equb   9, &46,   0, &0e, &55, &c0, &13, &80, &0b, &8c,   5, &a6   ; a6bf: 09 46 00... .F.
    equb &60, &47, &0c, &b1, &0b, &8c, &0b, &80, &72, &7c, &0e, &46   ; a6cb: 60 47 0c... `G.
    equb &39, &f7, &45, &47, &1a, &0b, &8c, &c3, &13, &8c, &ff, &a5   ; a6d7: 39 f7 45... 9.E
    equb &0d, &7c, &3b, &df,   2,   9, &0d,   0,   9, &55, &a1, &53   ; a6e3: 0d 7c 3b... .|;
    equb   9, &4f, &86, &a1, &54, &b1, &0b, &8c, &7c, &0e, &b1, &0b   ; a6ef: 09 4f 86... .O.
    equb &80, &f5, &4c,   4, &1e, &7c, &0f, &0b, &8c, &be, &47, &0a   ; a6fb: 80 f5 4c... ..L
    equb &b1, &a5, &0d, &a0                                           ; a707: b1 a5 0d... ...
    equs "|0|"                                                        ; a70b: 7c 30 7c    |0|
    equb   3, &f4,   8, &44, &d7, &21, &ff, &ac, &a9,   7, &47, &12   ; a70e: 03 f4 08... ...
    equb &ff, &a5                                                     ; a71a: ff a5       ..
    equs "F|>"                                                        ; a71c: 46 7c 3e    F|>
    equb   9, &46,   0, &0e, &55, &a1, &52, &f4,   8, &46, &0b, &b1   ; a71f: 09 46 00... .F.
    equb   5, &10, &2f, &0a, &62, &a0, &7c, &15, &b1, &0b, &8c, &7c   ; a72b: 05 10 2f... ../
    equb &0e, &44, &d7, &21, &ff, &f4,   7, &0b, &8c,   5, &b2, &5c   ; a737: 0e 44 d7... .D.
    equb &47,   8, &a5                                                ; a743: 47 08 a5    G..
    equs "F|>F"                                                       ; a746: 46 7c 3e... F|>
    equb   6, &a5                                                     ; a74a: 06 a5       ..
    equs "F|;"                                                        ; a74c: 46 7c 3b    F|;
    equb   9, &46,   0,   7, &55, &a1, &8e, &f5, &4c,   3, &1e, &13   ; a74f: 09 46 00... .F.
    equb &90, &f7, &45, &45, &83, &21, &0a, &4c, &18, &a9, &0c, &45   ; a75b: 90 f7 45... ..E
    equb &81, &21, &f5, &4c,   1, &19, &29,   5, &19, &12,   9, &ff   ; a767: 81 21 f5... .!.
    equb &9f, &f2, &5a, &47,   6, &9e                                 ; a773: 9f f2 5a... ..Z
    equs "JFp"                                                        ; a779: 4a 46 70    JFp
    equb &df, &29, &9f, &19, &29,   2, &19, &29,   6, &19, &12, &0b   ; a77c: df 29 9f... .).
    equb &0a, &0b, &18, &2f, &f5, &20,   6, &19, &18, &54, &30, &f5   ; a788: 0a 0b 18... ...
    equb &0b,   9, &19, &2f, &f5, &20,   6, &19, &29,   9, &19, &5a   ; a794: 0b 09 19... ...
    equb &84, &47, &47, &9f, &19, &12, &59, &f5, &59,   2, &19, &29   ; a7a0: 84 47 47... .GG
    equb   9, &1a, &2f, &f5, &20,   9, &1a, &5c, &47,   8             ; a7ac: 09 1a 2f... ../
    equs "Hd!"                                                        ; a7b6: 48 64 21    Hd!
    equb   3, &94,   0, &0a, &59, &19, &12, &59, &0a, &59, &f2, &5a   ; a7b9: 03 94 00... ...
    equb &47, &e2, &9f, &29,   6, &19, &12,   9, &9f, &f2, &5a, &47   ; a7c5: 47 e2 9f... G..
    equb &d3, &9e, &48, &9f, &29,   2, &1e, &13, &90, &df, &1c, &f7   ; a7d1: d3 9e 48... ..H
    equb &45, &47,   8, &9f, &29,   4, &19, &12,   9, &46,   4, &9e   ; a7dd: 45 47 08... EG.
    equb &49, &f7, &45, &86, &47, &85, &46,   4, &9e, &4b, &f4,   8   ; a7e9: 49 f7 45... I.E
    equb &b1, &0b, &8c, &0b, &90, &7c, &11                            ; a7f5: b1 0b 8c... ...
    equs "FKFI"                                                       ; a7fc: 46 4b 46... FKF
    equb &d8, &8e, &21, &0b,   0, &87,   0,   0,   0, &93, &1e, &88   ; a800: d8 8e 21... ..!
    equb   0,   0,   0, &93, &1e, &89,   0,   0,   0, &a4, &20, &8d   ; a80c: 00 00 00... ...
    equb   0,   0,   0, &3d, &20, &8f,   0,   0,   0, &3d, &20, &94   ; a818: 00 00 00... ...
    equb   0,   0,   0, &93, &1e, &95,   0,   0,   0, &93, &1e, &a6   ; a824: 00 00 00... ...
    equb   0,   0,   0, &3d, &20, &aa,   0,   0,   0, &3d, &20, &b2   ; a830: 00 00 00... ...
    equb   0,   0,   0, &cb, &20, &b4,   0,   0,   0, &cb, &20, &7d   ; a83c: 00 00 00... ...
    equb &b3,   3, &2d,   4, &10, &0b, &f8, &86,   5,   1, &bc, &1c   ; a848: b3 03 2d... ..-
    equb &22, &9f, &2f, &10, &f5, &10, &d8, &30, &0b, &0b, &f3, &19   ; a854: 22 9f 2f... "./
    equb &22, &9f, &19, &f2                                           ; a860: 22 9f 19... "..
    equs "[G$"                                                        ; a864: 5b 47 24    [G$
    equb &9f, &19, &29,   2, &1e, &2f, &f5, &20,   9, &1a, &5c, &47   ; a867: 9f 19 29... ..)
    equb &10, &0b, &0b, &2e,   2, &13, &4b, &48, &1c, &22,   3, &0f   ; a873: 10 0b 0b... ...
    equb   0, &46,   7, &9f, &9f, &19, &19, &22, &46, &da, &bd, &e5   ; a87f: 00 46 07... .F.
    equb &21, &7d, &f8, &8c, &c3, &17, &8c, &fb, &11, &4c, &0f, &90   ; a88b: 21 7d f8... !}.
    equb &30, &13, &3f, &f2, &12, &36, &df, &2d, &45, &d2, &22, &a5   ; a897: 30 13 3f... 0.?
    equs "6|Q"                                                        ; a8a3: 36 7c 51    6|Q
    equb &0a, &36, &f2, &5b, &0b, &4b, &f8, &86, &5c, &84, &45, &cb   ; a8a6: 0a 36 f2... .6.
    equb &22, &f5, &36,   6, &f8                                      ; a8b2: 22 f5 36... ".6
    equs "x'0"                                                        ; a8b7: 78 27 30    x'0
    equb &f5, &36,   8, &f8, &90, &27, &30, &f5, &36, &0c, &18, &a1   ; a8ba: f5 36 08... .6.
    equb &26, &f5, &36, &0c, &fe, &21, &f5, &36, &0a, &f8, &8c, &26   ; a8c6: 26 f5 36... &.6
    equb &30, &f5, &36, &0b, &fe, &21, &f5, &36,   4, &0b,   9, &27   ; a8d2: 30 f5 36... 0.6
    equb &f5, &36, &0d,   9, &0d, &21, &f5, &36, &0e, &19, &12, &3a   ; a8de: f5 36 0d... .6.
    equb &0a, &3a, &f2                                                ; a8ea: 0a 3a f2    .:.
    equs "[GF"                                                        ; a8ed: 5b 47 46    [GF
    equb &b1, &0a, &3a, &1e, &f8, &78, &7c, &17, &b1, &0a, &3a, &1e   ; a8f0: b1 0a 3a... ..:
    equb   5,   3, &72, &f5, &36,   8, &1e, &7c, &17, &f5, &3a,   2   ; a8fc: 05 03 72... ..r
    equb &1e, &f8, &86, &5d, &47, &0b, &f8, &8c,   5,   1, &5d, &a1   ; a908: 1e f8 86... ...
    equb &24, &46, &0f,   9, &0d, &0b,   9, &f5, &3a,   6, &1c, &83   ; a914: 24 46 0f... $F.
    equb &84, &86, &a1, &22, &0a, &3a, &12, &3c, &f5, &3a,   4, &19   ; a920: 84 86 a1... ...
    equb &12, &3a, &0a, &3c, &b4, &26, &46, &b8, &f5, &36, &0e, &f2   ; a92c: 12 3a 0a... .:.
    equb &22, &46,   4, &9e, &25, &ff, &f4,   4, &df, &47, &fe, &2f   ; a938: 22 46 04... "F.
    equb &11, &3c, &ac,   4, &0a, &20,   0,   0, &60, &ec             ; a944: 11 3c ac... .<.
    equs "ABg"                                                        ; a94e: 41 42 67    ABg
    equb &ef,   4, &81, &86, &47, &0e, &f7, &3c, &a1, &0d, &fb, &2f   ; a951: ef 04 81... ...
    equb &11, &3c, &df, &1c, &46, &e5, &fb, &2f, &11, &3c,   4,   7   ; a95d: 11 3c df... .<.
    equb &20,   0,   0,   0                                           ; a969: 20 00 00...  ..
    equs "H@@?"                                                       ; a96d: 48 40 40... H@@
    equb   7,   1, &fb, &11, &3a, &df, &2e, &fc, &13, &47, &ac        ; a971: 07 01 fb... ...
    equs "D@&"                                                        ; a97c: 44 40 26    D@&
    equb &df,   2, &2f, &f5, &20,   8, &1d, &30, &13, &4b, &ff, &2f   ; a97f: df 02 2f... ../
    equb &f5, &20,   9, &1d, &30, &13, &43, &0b, &43, &fc             ; a98b: f5 20 09... . .
    equs "aGB"                                                        ; a995: 61 47 42    aGB
    equb &b1,   0,   7, &7c, &23, &ff, &0b, &47, &c3, &13, &47, &a5   ; a998: b1 00 07... ...
    equb &0e, &7c, &3b, &0b, &4b,   5, &e7, &5c, &47, &0b,   9, &0e   ; a9a4: 0e 7c 3b... .|;
    equb   0,   9, &55, &a1, &3d, &46,   7,   9, &20, &86, &a1, &51   ; a9b0: 00 09 55... ..U
    equb &f7, &45, &86, &47, &de, &f4,   8, &0b, &47, &0b             ; a9bc: f7 45 86... .E.
    equs "C]G"                                                        ; a9c6: 43 5d 47    C]G
    equb &10, &0b, &47, &0b, &43, &61, &a1, &3c, &0b, &43,   5, &3f   ; a9c9: 10 0b 47... ..G
    equb &5d, &a1, &11, &b1, &0b, &4b, &7c, &0e, &0b, &4b,   5, &e3   ; a9d5: 5d a1 11... ]..
    equb &5c, &47,   7, &b1, &0b, &47, &7c,   3, &0b, &4b,   5, &e7   ; a9e1: 5c 47 07... \G.
    equb &5c, &47, &0a, &b1, &a5, &0e, &a0                            ; a9ed: 5c 47 0a... \G.
    equs "|0|"                                                        ; a9f4: 7c 30 7c    |0|
    equb 3                                                            ; a9f7: 03          .
    equs "Dw&"                                                        ; a9f8: 44 77 26    Dw&
    equb &fe, &2f, &11, &4c, &b1, &30, &10                            ; a9fb: fe 2f 11... ./.
    equs "!|>"                                                        ; aa02: 21 7c 3e    !|>
    equb &b1,   9, &21, &0a, &27, &1f, &10, &fe, &7c, &2f, &a1, &61   ; aa05: b1 09 21... ..!
    equb   9, &2a, &a1, &37, &fb, &2f, &11, &4c,   9, &4d, &30, &11   ; aa11: 09 2a a1... .*.
    equb &3e, &f4, &15, &a5, &0e, &7c, &3b, &a5, &21, &10, &0e, &a0   ; aa1d: 3e f4 15... >..
    equb &fe, &7c, &31, &a1, &0c, &b1,   5, &21, &0e, &3e,   5, &10   ; aa29: fe 7c 31... .|1
    equb &74, &73, &10, &21, &a0, &7c, &15                            ; aa35: 74 73 10... ts.
    equs "Dw&OH"                                                      ; aa3c: 44 77 26... Dw&
    equb &0e, &ff, &df                                                ; aa41: 0e ff df    ...
    equs "-Gp"                                                        ; aa44: 2d 47 70    -Gp
    equb &a5                                                          ; aa47: a5          .
    equs "8|Q"                                                        ; aa48: 38 7c 51    8|Q
    equb &0a, &38, &f2                                                ; aa4b: 0a 38 f2    .8.
    equs "[G`"                                                        ; aa4e: 5b 47 60    [G`
    equb &f5, &38,   6, &1e, &fc                                      ; aa51: f5 38 06... .8.
    equs "\G,"                                                        ; aa56: 5c 47 2c    \G,
    equb &10, &3a, &b2, &26, &0a, &3a, &f8                            ; aa59: 10 3a b2... .:.
    equs "x'0"                                                        ; aa60: 78 27 30    x'0
    equb &f5, &3a,   2, &f8, &86, &27, &30, &f5, &3a,   6             ; aa63: f5 3a 02... .:.
    equs "/7'"                                                        ; aa6d: 2f 37 27    /7'
    equb   1, &25, &30, &f5, &3a,   4, &f5, &38, &0e, &19, &22, &f5   ; aa70: 01 25 30... .%0
    equb &38, &0e, &0a                                                ; aa7c: 38 0e 0a    8..
    equs ":", '"', "F"                                                ; aa7f: 3a 22 46    :"F
    equb &18, &f5, &38, &0b, &18, &f5, &38, &0d, &18, &f5, &38,   4   ; aa82: 18 f5 38... ..8
    equb &1e                                                          ; aa8e: 1e          .
    equs "/7'"                                                        ; aa8f: 2f 37 27    /7'
    equb   1, &83, &84, &85, &86, &a1, &22, &b1, &f5, &38,   6, &1e   ; aa92: 01 83 84... ...
    equb &7c, &0b, &b1, &0b, &4b, &c4, &7c,   3, &b1, &f5, &38,   8   ; aa9e: 7c 0b b1... |..
    equb &1e, &7c, &0b, &46,   4, &9e, &21, &df, &1c, &46,   4, &9e   ; aaaa: 1e 7c 0b... .|.
    equs "(Dw&"                                                       ; aab6: 28 44 77... (Dw
    equb &ff, &a5, &0e, &7c, &44, &f4, &33, &b1,   5, &45, &fc, &7c   ; aaba: ff a5 0e... ...
    equb &10, &f8, &98, &30, &13, &43, &0b, &43, &13, &47, &b1, &0b   ; aac6: 10 f8 98... ...
    equb   9, &fb, &7c, &46, &ac, &a9, &22, &47, &1b, &b1,   5, &44   ; aad2: 09 fb 7c... ..|
    equb &fc, &7c, &10, &f8, &98, &30, &13, &43, &b1, &0b, &47, &f8   ; aade: fc 7c 10... .|.
    equb &78, &7c, &17, &ff, &b1, &0b,   9, &fb, &7c, &46, &df, &47   ; aaea: 78 7c 17... x|.
    equb &b1, &0b, &43, &f8, &78, &7c, &17                            ; aaf6: b1 0b 43... ..C
    equs "Dw&"                                                        ; aafd: 44 77 26    Dw&
    equb &df, &47, &f8, &78, &30, &13, &43, &b1,   0                  ; ab00: df 47 f8... .G.
    equs "6|2"                                                        ; ab09: 36 7c 32    6|2
    equb &df, &2e, &a5, &0e, &7c, &44, &b1,   5, &45, &0b, &43, &7c   ; ab0c: df 2e a5... ...
    equb &10                                                          ; ab18: 10          .
    equs "Dw&"                                                        ; ab19: 44 77 26    Dw&
    equb &ff, &df, &47, &f8, &78, &30, &13, &43, &a5, &0e, &7c, &44   ; ab1c: ff df 47... ..G
    equb &b1,   5, &45, &fc, &7c, &10, &f8, &98, &30, &13, &47, &f4   ; ab28: b1 05 45... ..E
    equb &20, &b1, &0b,   9, &fb, &7c, &46, &b1,   5, &44, &0b, &43   ; ab34: 20 b1 0b...  ..
    equb &7c, &10, &b1, &0b, &47, &f8, &78, &7c, &17                  ; ab40: 7c 10 b1... |..
    equs "Dw&"                                                        ; ab49: 44 77 26    Dw&
    equb &ff, &a5                                                     ; ab4c: ff a5       ..
    equs "!|>"                                                        ; ab4e: 21 7c 3e    !|>
    equb   9, &21,   0,   5, &55, &a1, &40, &f7, &4b, &86, &a1, &38   ; ab51: 09 21 00... .!.
    equb   9, &2a, &a1, &37,   9, &32, &a1, &5e, &2f, &10, &e3, &10   ; ab5d: 09 2a a1... .*.
    equb &d8, &0f, &86, &f3, &19, &29,   5, &19, &30, &12, &34, &0a   ; ab69: d8 0f 86... ...
    equb &34, &f2, &5a, &47, &12, &2f, &10, &e3, &10, &d8, &0f, &86   ; ab75: 34 f2 5a... 4.Z
    equb &c4, &f3, &19, &29,   3, &19, &30, &12, &34, &0f, &22, &f5   ; ab81: c4 f3 19... ...
    equb &34,   1, &1e, &5e, &f8, &86,   5,   1, &61, &84, &a1, &14   ; ab8d: 34 01 1e... 4..
    equb &2f, &f5, &20,   9, &fe, &21, &0a, &20, &30, &12, &34, &f4   ; ab99: 2f f5 20... /.
    equb &15, &a5, &0e, &7c, &3b, &a5, &21, &10, &0e, &a0, &fb, &7c   ; aba5: 15 a5 0e... ...
    equb &31, &a1, &3f, &ac, &a9, &21, &47,   9,   5, &ba, &13, &43   ; abb1: 31 a1 3f... 1.?
    equb &ff, &46,   8,   5, &b6, &13, &43, &f4, &34, &a5, &0e, &7c   ; abbd: ff 46 08... .F.
    equb &3b, &a5, &21, &10, &0e, &a0, &fb, &7c, &31, &a1, &3f, &0b   ; abc9: 3b a5 21... ;.!
    equb &3f,   5,   4, &72, &2f, &17, &90, &f4, &20,   9, &33, &47   ; abd5: 3f 05 04... ?..
    equb &10, &0b, &43, &c3, &c3, &13, &43, &f8, &90,   5,   6, &72   ; abe1: 10 0b 43... ..C
    equb &17, &90, &30, &b1, &0b, &43, &fc, &7c, &0f, &f8, &86, &17   ; abed: 17 90 30... ..0
    equb &7c, &0f, &78, &30, &13, &47, &f7, &36, &47, &1c, &b1,   5   ; abf9: 7c 0f 78... |.x
    equb   9, &10, &21, &a0, &7c, &15, &a5, &21, &10, &0e, &a0, &fe   ; ac05: 09 10 21... ..!
    equb &7c, &31, &11, &3e, &b1,   5, &11, &10, &21, &a0, &7c, &15   ; ac11: 7c 31 11... |1.
    equb &b1, &0b,   9, &fb, &7c, &46, &0b, &43, &c3, &13, &43, &b1   ; ac1d: b1 0b 09... ...
    equb &0b, &43, &0b, &47, &7c, &0f, &b1, &0b, &47, &c4, &c4, &f8   ; ac29: 0b 43 0b... .C.
    equb &78, &7c, &17, &f5, &34,   9,   9, &2a, &21, &f8, &86, &17   ; ac35: 78 7c 17... x|.
    equs "|Dw&"                                                       ; ac41: 7c 44 77... |Dw
    equb &fe, &2f, &11, &3b, &0f, &90, &30, &13, &43, &ff, &a5, &0e   ; ac45: fe 2f 11... ./.
    equb &7c, &3e, &a5, &0e, &a0                                      ; ac51: 7c 3e a5... |>.
    equs "|=/"                                                        ; ac56: 7c 3d 2f    |=/
    equb &f5, &54,   4, &0f, &90, &27, &4f,   2, &33, &f7, &45, &86   ; ac59: f5 54 04... .T.
    equb &47, &e9, &fb, &2f, &11, &3b, &0f, &90, &30, &13, &47, &f4   ; ac65: 47 e9 fb... G..
    equb &20, &b1, &0b,   9, &fb, &7c, &46, &df, &47, &0b, &47, &c4   ; ac71: 20 b1 0b...  ..
    equb &c4, &13, &47, &b1,   5, &12, &0b, &47, &7c, &11, &2f, &0a   ; ac7d: c4 13 47... ..G
    equb &52, &19, &12, &52, &30, &0b, &47, &0b                       ; ac89: 52 19 12... R..
    equs "C^G"                                                        ; ac91: 43 5e 47    C^G
    equb &e7, &46, &52, &b1,   0                                      ; ac94: e7 46 52... .FR
    equs "#|2FK"                                                      ; ac99: 23 7c 32... #|2
    equb &df                                                          ; ac9e: df          .
    equs "KFG"                                                        ; ac9f: 4b 46 47    KFG
    equb &b1, &2f, &0a                                                ; aca2: b1 2f 0a    ./.
    equs " |5F?"                                                      ; aca5: 20 7c 35...  |5
    equb &df                                                          ; acaa: df          .
    equs "HF;F9"                                                      ; acab: 48 46 3b... HF;
    equb &d6, &3e, &26, &11, &1d, &27, &26, &1e                       ; acb0: d6 3e 26... .>&
    equs ":&%"                                                        ; acb8: 3a 26 25    :&%
    equb &dc, &24, &27, &cf                                           ; acbb: dc 24 27... .$'
    equs "#(J$1"                                                      ; acbf: 23 28 4a... #(J
    equb &90, &24, &38, &ac, &24, &39, &d5, &25, &3d, &8b, &23, &3e   ; acc4: 90 24 38... .$8
    equb &8b, &23, &40, &8b, &23, &41, &8b, &23, &42, &8b, &23, &45   ; acd0: 8b 23 40... .#@
    equb &0f                                                          ; acdc: 0f          .
    equs "#F.&G2&J"                                                   ; acdd: 23 46 2e... #F.
    equb &8b, &23, &0a, &36, &f2, &5b, &47,   7, &f5, &36, &0b, &fb   ; ace5: 8b 23 0a... .#.
    equb &21, &0b, &3f, &2f, &17, &90, &0f, &8c, &c4, &17, &8c, &7d   ; acf1: 21 0b 3f... !.?
    equb &f8, &94, &c3, &17, &94, &0f, &94,   5, &ff, &61, &47,   6   ; acfd: f8 94 c3... ...
    equb &9e, &67, &46, &0d                                           ; ad09: 9e 67 46... .gF
    equs "/7'"                                                        ; ad0d: 2f 37 27    /7'
    equb   1, &0f, &94                                                ; ad10: 01 0f 94    ...
    equs ",~?'"                                                       ; ad13: 2c 7e 3f... ,~?
    equb   1, &f8, &94, &30, &13, &0a, &ff, &b1, &0b, &0a, &fe, &7c   ; ad17: 01 f8 94... ...
    equb &46, &f7, &44, &86, &47,   7, &b1,   9,   9, &7c, &23, &f7   ; ad23: 46 f7 44... F.D
    equb &44, &86,   9, &26, &30,   9,   9, &2a,   4,   8,   0,   0   ; ad2f: 44 86 09... D..
    equb   0,   0, &40, &40,   0,   4, &7e, &81, &85, &47, &d9, &b1   ; ad3b: 00 00 40... ..@
    equb   9,   9                                                     ; ad47: 09 09       ..
    equs "|$/7'"                                                      ; ad49: 7c 24 2f... |$/
    equb   1, &30, &0b, &0a, &2c, &7f                                 ; ad4e: 01 30 0b... .0.
    equs "/?'"                                                        ; ad54: 2f 3f 27    /?'
    equb   1, &7d, &b3,   1, &51, &11                                 ; ad57: 01 7d b3... .}.
    equs "D|'"                                                        ; ad5d: 44 7c 27    D|'
    equb &b3,   2, &22,   0, &ac, &a9, &40, &0f, &86,   5,   1, &5d   ; ad60: b3 02 22... .."
    equb &84, &47,   6, &9e, &8f                                      ; ad6c: 84 47 06... .G.
    equs "Fe/"                                                        ; ad71: 46 65 2f    Fe/
    equb &0a, &20, &18, &a9, &0d, &f5, &20, &0c, &1a,   5,   3, &c5   ; ad74: 0a 20 18... . .
    equb &5c, &84                                                     ; ad80: 5c 84       \.
    equs "GG/"                                                        ; ad82: 47 47 2f    GG/
    equb &0a, &20, &0a                                                ; ad85: 0a 20 0a    . .
    equs ".[G=/"                                                      ; ad88: 2e 5b 47... .[G
    equb &f5, &20, &0c,   5,   4, &c5, &23, &f5, &22,   3, &f5, &20   ; ad8d: f5 20 0c... . .
    equb   3, &19, &22, &0a, &20, &2e,   1, &0a, &1a, &5a, &47, &0b   ; ad99: 03 19 22... .."
    equb &2f, &f5, &20,   3, &19, &2e,   1, &12, &1a, &2f, &f5, &20   ; ada5: 2f f5 20... /.
    equb   3, &0a, &2e, &22, &0a, &20, &12, &2e, &10, &e3, &10, &d8   ; adb1: 03 0a 2e... ...
    equb   5,   1, &f3, &19, &29,   3, &0a                            ; adbd: 05 01 f3... ...
    equs ".", '"', "0F"                                               ; adc4: 2e 22 30... ."0
    equb &0f, &ac,   0, &3e, &55, &f5, &20,   5, &18, &a9, &40, &85   ; adc8: 0f ac 00... ...
    equb &a1, &3e, &2f, &f5, &2e,   5, &2e,   1,   9, &0b, &21, &2f   ; add4: a1 3e 2f... .>/
    equb &f5, &2e, &0a, &2e,   1,   9,   9, &86, &21, &df, &1c, &7d   ; ade0: f5 2e 0a... ...
    equb &f2, &12, &1a, &df, &54, &2f, &f5, &2e,   3, &19, &30, &12   ; adec: f2 12 1a... ...
    equb &1a,   5,   1, &13, &1e, &f7, &45, &47, &0c, &ff, &0b, &1e   ; adf8: 1a 05 01... ...
    equb &c3, &13, &1e, &df, &54, &46, &f4, &fb, &2f, &11, &39, &0a   ; ae04: c3 13 1e... ...
    equb &2e, &30, &12, &1c, &f4,   4,   9, &0a, &ac,   0, &44, &55   ; ae10: 2e 30 12... .0.
    equb &84, &a1, &73, &a5, &13, &10, &14, &10, &16, &0a, &0e, &10   ; ae1c: 84 a1 73... ..s
    equb &23,   9, &10, &fb, &7c, &52, &b1,   9, &13, &0a, &14, &1f   ; ae28: 23 09 10... #..
    equb &10, &fe, &7c, &2f, &11, &22,   9, &22, &47,   6, &0a, &11   ; ae34: 10 fe 7c... ..|
    equb &fe, &21,   9,   9, &47,   8,   5,   2, &13, &16, &46,   9   ; ae40: fe 21 09... .!.
    equb   9, &0a,   9, &22, &84, &a1, &9e, &0a, &0c, &0a, &0c, &1a   ; ae4c: 09 0a 09... ...
    equb &0b, &1e, &0b, &16                                           ; ae58: 0b 1e 0b... ...
    equs "tr#"                                                        ; ae5c: 74 72 23    tr#
    equb &0a, &0c, &1a, &13, &1e, &0a, &1c,   9, &13, &21, &f5, &1c   ; ae5f: 0a 0c 1a... ...
    equb   6, &0a, &14, &22, &0b, &1e, &0b, &16, &73, &13, &1e, &f5   ; ae6b: 06 0a 14... ...
    equb &1c, &0c, &0b, &1e, &23, &f5, &1c,   8,   9, &23, &21, &f5   ; ae77: 1c 0c 0b... ...
    equb &1c,   3, &19, &12, &1c, &0a, &1c, &0a, &1a, &5a, &0a, &1c   ; ae83: 1c 03 19... ...
    equb &f2, &5a, &85, &f7, &3c, &85, &47, &cf, &7d, &b3,   1, &30   ; ae8f: f2 5a 85... .Z.
    equb   5, &f8, &86, &30, &13, &0f, &2f, &0a, &20, &18, &a9,   0   ; ae9b: 05 f8 86... ...
    equb &47, &25, &0b, &0f, &c4, &13, &0f, &0b, &0f, &2f, &17, &9c   ; aea7: 47 25 0b... G%.
    equb &df, &1a, &2f, &0a, &20, &f2, &5a, &47,   6, &9e, &73, &46   ; aeb3: df 1a 2f... ../
    equb &0c, &2f, &f5, &20,   5, &18,   0, &44, &55, &a1, &73, &46   ; aebf: 0c 2f f5... ./.
    equb &d7, &9f, &2f, &f5, &20,   6, &19, &22, &30, &0a, &0b, &2f   ; aecb: d7 9f 2f... ../
    equb &f5, &20, &0c, &1a, &23, &30,   9, &0d, &2f, &0a, &20, &18   ; aed7: f5 20 0c... . .
    equb &a9,   5, &84, &47, &12, &0a, &0b, &b1, &9f, &19, &29,   1   ; aee3: a9 05 84... ...
    equb &1a, &9f, &19, &29,   5, &1a, &7c, &0a, &23, &2f, &0a, &20   ; aeef: 1a 9f 19... ...
    equb &18, &30, &11, &0e, &b5, &0e,   0,   1, &b3,   1, &23,   0   ; aefb: 18 30 11... .0.
    equb &9f, &1a,   6, &ff, &ff, &5f, &47,   8, &9f,   5,   1, &23   ; af07: 9f 1a 06... ...
    equb &9e, &1a, &7d, &b3,   1, &36, &0b, &ac, &a9, &44, &47, &13   ; af13: 9e 1a 7d... ..}
    equb &b1, &9f, &0a, &0b,   9, &0d, &7c, &55,   0,   5, &55, &a1   ; af1f: b1 9f 0a... ...
    equb &78, &ff, &44, &be, &29, &10, &17, &b2, &0c, &f5, &17, &0b   ; af2b: 78 ff 44... x.D
    equb   5,   1, &26, &0a, &17, &2f, &12, &5c,   9, &26,   0,   7   ; af37: 05 01 26... ..&
    equb &55, &47,   4, &df, &29, &ac, &a9                            ; af43: 55 47 04... UG.
    equs "?Ge"                                                        ; af4a: 3f 47 65    ?Ge
    equb &f5, &17,   1, &2f, &f5, &20,   9, &1a, &23, &f5, &5c,   9   ; af4d: f5 17 01... ...
    equb &f5, &20,   6, &19, &29,   9, &19, &22, &f5, &20,   6, &19   ; af59: f5 20 06... . .
    equb &18, &30, &11, &16, &0a, &17,   9, &16, &21, &df, &1c, &f4   ; af65: 18 30 11... .0.
    equb &16, &df, &29,   9, &16, &2f, &f5, &20,   6, &19, &18, &55   ; af71: 16 df 29... ..)
    equb &f5, &20,   6, &19, &29,   9, &19, &f5, &5c,   9, &19, &5b   ; af7d: f5 20 06... . .
    equb &85, &a1, &76, &2f, &f5, &5c,   5, &f5, &20,   9, &1a, &23   ; af89: 85 a1 76... ..v
    equb &f5, &20,   9, &1a, &f5, &5c,   1, &1a, &60, &a1, &77, &df   ; af95: f5 20 09... . .
    equb &1c,   9, &16, &a9,   3, &47,   8, &f5, &17, &0b,   5,   4   ; afa1: 1c 09 16... ...
    equs "&Fc"                                                        ; afad: 26 46 63    &Fc
    equb &f8, &86, &30, &13, &12, &f8, &8a, &17, &86, &fe, &11, &39   ; afb0: f8 86 30... ..0
    equb   9, &26,   0,   7, &55, &a1, &78, &df, &1c, &fc, &13, &0e   ; afbc: 09 26 00... .&.
    equb &b1,   0                                                     ; afc8: b1 00       ..
    equs ">|#"                                                        ; afca: 3e 7c 23    >|#
    equb &b1, &2f, &0a, &20, &0a                                      ; afcd: b1 2f 0a... ./.
    equs "\|,/"                                                       ; afd2: 5c 7c 2c... \|,
    equb &f5, &20,   9, &30, &0b, &0e, &23, &0b, &0e, &c3, &13, &0e   ; afd6: f5 20 09... . .
    equb &df, &1c, &f7, &45, &47, &0a, &df, &1c                       ; afe2: df 1c f7... ...
    equs "HX)"                                                        ; afea: 48 58 29    HX)
    equb   1, &19,   0, &0b, &12, &2f, &17, &86, &fb, &11, &39, &f4   ; afed: 01 19 00... ...
    equb   8, &f5, &17,   1, &fc, &23, &0a, &17,   0,   6, &21, &f5   ; aff9: 08 f5 17... ...
    equb &17,   9, &0a, &17, &22, &f5, &17,   5, &0b, &0e, &c4, &23   ; b005: 17 09 0a... ...
    equb &0a, &0b, &f5, &17, &0b, &1d, &23,   9, &0d, &47, &10, &0a   ; b011: 0a 0b f5... ...
    equb &0b, &b1, &f5, &17,   1, &1a, &f5, &17,   5, &1a, &7c, &0a   ; b01d: 0b b1 f5... ...
    equb &23, &9f, &0a, &17, &22, &b1, &0a, &0b                       ; b029: 23 9f 0a... #..
    equs "|V}"                                                        ; b031: 7c 56 7d    |V}
    equb &b3,   1, &52, &0e                                           ; b034: b3 01 52... ..R
    equs "DD-"                                                        ; b038: 44 44 2d    DD-
    equb &b3,   2, &4c, &14, &a5, &12, &0a, &0b, &fe, &7c, &57, &10   ; b03b: b3 02 4c... ..L
    equb &16, &b2, &0c, &f5, &16,   5, &0a, &12, &22, &f7             ; b047: 16 b2 0c... ...
    equs "EG", '"'                                                    ; b051: 45 47 22    EG"
    equb &ff,   9, &0f, &11, &24, &a5, &14, &10, &1c, &0a, &0d,   9   ; b054: ff 09 0f... ...
    equb &0f, &fe, &7c, &58,   0, &0b, &11, &11, &2e,   1,   9, &20   ; b060: 0f fe 7c... ..|
    equb &47,   6,   0,   9, &11, &11, &46, &15, &f4, &0a, &f4, &2c   ; b06c: 47 06 00... G..
    equb &a5, &11, &10, &14, &10, &1c, &0a, &0d, &10, &24,   9, &0f   ; b078: a5 11 10... ...
    equb &fe, &7c, &52, &f5, &12,   5, &1a, &f5, &12,   1, &1a, &73   ; b084: fe 7c 52... .|R
    equb &c3, &13, &18, &0a, &12, &18, &a9,   3, &f5, &12,   1, &1a   ; b090: c3 13 18... ...
    equb   5,   1, &5c, &84, &0b, &18,   5,   1, &61, &84,   9, &0f   ; b09c: 05 01 5c... ..\
    equb &84, &0a, &14, &2f, &0a, &2a, &5a, &84, &2e,   1, &11, &20   ; b0a8: 84 0a 14... ...
    equb &30, &f5, &16, &0a, &0b, &1c, &27, &f5, &16,   3, &0a, &14   ; b0b4: 30 f5 16... 0..
    equb &22, &0a, &16,   9, &11, &21, &a5, &18, &7c, &56, &0a, &0b   ; b0c0: 22 0a 16... "..
    equb &0b, &18, &0b, &1c, &74, &23, &b1, &0a, &0b, &7c, &56, &f5   ; b0cc: 0b 18 0b... ...
    equb &16,   1, &0a, &0b, &1a, &27, &0a, &16, &12, &12,   9, &10   ; b0d8: 16 01 0a... ...
    equb &86, &45, &fd, &2a, &b1,   5, &10, &0a, &0d, &1a, &7c, &11   ; b0e4: 86 45 fd... .E.
    equb &b1,   5,   7,   5, &2a, &72, &fc, &7c, &0f, &fc, &13, &20   ; b0f0: b1 05 07... ...
    equb   0, &0b, &11, &11,   9, &11, &a9, &0b,   9, &11, &a9,   9   ; b0fc: 00 0b 11... ...
    equb &85, &47, &45, &b1, &f5, &16, &0a, &1e, &7c, &0b, &f5, &16   ; b108: 85 47 45... .GE
    equb   5, &19, &29, &0b, &1d,   5,   1, &5c, &47,   7, &4f,   1   ; b114: 05 19 29... ..)
    equb   3, &46,   5, &4f,   4,   3, &b1, &f5, &16,   5, &19, &29   ; b120: 03 46 05... .F.
    equb   1, &1a, &7c, &0c, &b1, &f5, &16,   5, &19, &29,   5, &1a   ; b12c: 01 1a 7c... ..|
    equb &7c, &0c, &0b, &20,   5, &0b, &72, &13, &20, &0a, &16, &18   ; b138: 7c 0c 0b... |..
    equb &11, &11, &f5, &16,   3, &19, &12, &16, &46, &b4, &b1, &f8   ; b144: 11 11 f5... ...
    equb &98, &30, &0b, &20, &7c, &17, &b1,   5, &28, &0b, &20, &7c   ; b150: 98 30 0b... .0.
    equb &11, &f5, &12,   8, &0a, &0d, &1a, &27, &0a, &0d, &0a, &0d   ; b15c: 11 f5 12... ...
    equb &1a, &0b                                                     ; b168: 1a 0b       ..
    equs " r#"                                                        ; b16a: 20 72 23     r#
    equb &9f, &0a, &12, &22, &f5, &12,   7, &0e, &24,   5, &80, &74   ; b16d: 9f 0a 12... ...
    equb &f8, &8a                                                     ; b179: f8 8a       ..
    equs "r&}"                                                        ; b17b: 72 26 7d    r&}
    equb &b3,   2, &6c, &23, &fe, &11, &20, &fe, &2f, &11, &39, &ac   ; b17e: b3 02 6c... ..l
    equb &a9, &3e,   9, &26, &a9, &40, &85, &47, &25,   9, &20, &86   ; b18a: a9 3e 09... .>.
    equb &a1, &13, &b1, &fb, &fb,   0, &41, &9f, &0a, &0b,   9, &0f   ; b196: a1 13 b1... ...
    equb &10, &1f, &7c, &53, &fe, &2f, &11, &39,   9, &44, &30, &11   ; b1a2: 10 1f 7c... ..|
    equb &20,   9, &20, &47,   3, &ff, &46, &d5, &ac, &a9, &1e        ; b1ae: 20 09 20...  .
    equs "E.-"                                                        ; b1b9: 45 2e 2d    E.-
    equb   9, &20, &86, &a1, &13, &fb, &11, &20, &fb, &2f, &11, &39   ; b1bc: 09 20 86... . .
    equb &ff, &ac, &11, &51, &0a, &20, &30, &12, &21, &df, &1c, &ac   ; b1c8: ff ac 11... ...
    equb &a9,   4, &47, &65, &f7, &51,   0                            ; b1d4: a9 04 47... ..G
    equs ">YG"                                                        ; b1db: 3e 59 47    >YG
    equb &1e, &f8, &24, &17, &ae, &b1,   0, &42, &fb, &7c, &19, &2f   ; b1de: 1e f8 24... ..$
    equb &f5, &20,   1, &30, &f5, &21,   1, &1e, &27, &2f, &0a, &20   ; b1ea: f5 20 01... . .
    equb &30, &12, &21, &46, &12, &f7, &51, &a9, &3e, &47, &0a, &f5   ; b1f6: 30 12 21... 0.!
    equb &21,   5,   0                                                ; b202: 21 05 00    !..
    equs "B!F"                                                        ; b205: 42 21 46    B!F
    equb   4, &9e, &3e, &df, &1c, &ac,   0, &44, &55, &a1, &78, &a5   ; b208: 04 9e 3e... ..>
    equb &11, &10, &1b,   9, &0f, &7c, &57, &0a, &21,   0,   5, &21   ; b214: 11 10 1b... ...
    equb &f5, &21,   6, &0a, &11, &22, &f5, &21, &0c, &9f, &1a, &23   ; b220: f5 21 06... .!.
    equb &f5, &21,   8,   9, &0f, &21, &9f, &9f, &1a, &0b, &1b        ; b22c: f5 21 08... .!.
    equs "r#F5"                                                       ; b237: 72 23 46... r#F
    equb &f7, &51,   0, &44, &55, &a1, &87, &0a, &21, &2f, &12, &20   ; b23b: f7 51 00... .Q.
    equb &0f, &24, &30, &13, &13, &2f, &f5, &20,   1, &1e, &17, &24   ; b247: 0f 24 30... .$0
    equb &b1, &30, &10, &11, &10, &1b,   9, &0f, &7c, &55,   0,   5   ; b253: b1 30 10... .0.
    equb &55, &a1, &78, &2f, &0a, &20, &30, &12, &21, &0b, &13, &2f   ; b25f: 55 a1 78... U.x
    equb &17, &24, &30, &b1,   0                                      ; b26b: 17 24 30... .$0
    equs ",|#"                                                        ; b270: 2c 7c 23    ,|#
    equb &9f, &1a, &13, &23, &f2, &12, &29, &fc, &13, &17, &10, &27   ; b273: 9f 1a 13... ...
    equb &b2,   8, &f5, &27,   6, &0a, &29, &22, &10, &2d, &b2,   4   ; b27f: b2 08 f5... ...
    equb &0a, &27, &0a, &2d, &22, &0a, &2d, &f2, &22,   9, &20, &86   ; b28b: 0a 27 0a... .'.
    equb &47,   4, &df, &1c, &fb, &11, &20, &df, &29, &0b, &17, &c3   ; b297: 47 04 df... G..
    equb &13, &17, &b1, &0a, &21, &2f, &0a, &20, &a0, &fb, &7c, &31   ; b2a3: 13 17 b1... ...
    equb &b1, &0a, &21, &a0                                           ; b2af: b1 0a 21... ..!
    equs "|0/"                                                        ; b2b3: 7c 30 2f    |0/
    equb &f5, &20,   9, &1a, &60, &85, &0b, &6e, &f5, &20,   9, &1a   ; b2b6: f5 20 09... . .
    equb &61, &85, &a1, &8d, &2f, &0a, &20, &0a                       ; b2c2: 61 85 a1... a..
    equs "fZG"                                                        ; b2ca: 66 5a 47    fZG
    equb &12, &2f, &10, &2e, &b2, &13, &0a, &2e, &0a, &20, &28, &13   ; b2cd: 12 2f 10... ./.
    equb &0a, &2e, &12, &20, &30, &0a, &27, &12, &2b, &0a, &2b, &f2   ; b2d9: 0a 2e 12... ...
    equs "[G,"                                                        ; b2e5: 5b 47 2c    [G,
    equb &0a, &2b, &19, &12, &2f, &0a, &2f, &19, &f2, &5b, &47, &18   ; b2e8: 0a 2b 19... .+.
    equb &f5, &2f,   2, &19, &29,   9, &1a, &2f, &f5, &20,   9, &1a   ; b2f4: f5 2f 02... ./.
    equb &5c, &a1, &47, &0a, &2f, &19, &12, &2f, &46, &e5, &f5, &2b   ; b300: 5c a1 47... \.G
    equb   6, &19, &12, &2b, &46, &d2, &f5, &2d,   2, &2f, &0a, &20   ; b30c: 06 19 12... ...
    equb &22, &df, &1c, &f7, &45, &47, &19, &10, &31, &b2,   4, &0a   ; b318: 22 df 1c... "..
    equb &2d, &0a, &31, &22, &0a, &31, &12, &2d, &0a, &2d, &f2        ; b324: 2d 0a 31... -.1
    equs '"', "H$,"                                                   ; b32f: 22 48 24... "H$
    equb   2, &33,   0, &f4,   4, &fe, &2f, &11, &39, &f4,   7, &9f   ; b333: 02 33 00... .3.
    equb &1a, &13, &1b, &a5, &1b, &0a, &0b, &10, &2b,   9, &0f, &7c   ; b33f: 1a 13 1b... ...
    equb &59, &f5, &27,   4, &0a, &2b, &22, &f5, &27,   2, &0b, &1b   ; b34b: 59 f5 27... Y.'
    equb &27, &0a, &27, &12, &29, &f4,   8, &0b, &1b, &0b             ; b357: 27 0a 27... '.'
    equs "#aG"                                                        ; b361: 23 61 47    #aG
    equb   6, &0b, &1b, &13, &23, &fb, &2f, &11, &39,   9, &44, &30   ; b364: 06 0b 1b... ...
    equb &11, &20,   9, &20, &47,   3, &ff,   9, &20, &ac, &a9, &3f   ; b370: 11 20 09... . .
    equb   9, &26,   4,   2,   0, &30, &81, &85, &84, &86, &45, &0d   ; b37c: 09 26 04... .&.
    equb &2c, &9f, &0b, &23, &23, &f5, &11,   5, &1a, &f5, &11,   1   ; b388: 2c 9f 0b... ,..
    equb &1a, &73, &c3, &0b, &17, &5d, &a1, &64, &46,   5, &f2, &12   ; b394: 1a 73 c3... .s.
    equb &27, &0a, &0d, &0a, &27, &22, &f7, &44, &47, &0b,   9, &20   ; b3a0: 27 0a 0d... '..
    equb &47,   6, &9e, &23, &46,   3, &ff, &7d, &0a, &11,   9, &13   ; b3ac: 47 06 9e... G..
    equb &21, &ac,   4,   7,   0,   0,   0, &10, &10, &20,   5, &81   ; b3b8: 21 ac 04... !..
    equs "EU."                                                        ; b3c4: 45 55 2e    EU.
    equb &ac, &a9, &2d, &30, &11, &13, &0a, &11,   9, &13, &21,   9   ; b3c7: ac a9 2d... ..-
    equb &13, &47,   3, &ff, &ac, &a9                                 ; b3d3: 13 47 03... .G.
    equs "2G'"                                                        ; b3d9: 32 47 27    2G'
    equb   0,   8, &11, &19, &ff, &f4, &2c, &a5, &1a, &10, &1c, &fb   ; b3dc: 00 08 11... ...
    equb &7c, &57,   5, &20, &13, &1c, &b1, &f5, &1a,   1, &1a, &f5   ; b3e8: 7c 57 05... |W.
    equb &1a,   5, &1a, &7c, &0a,   5,   1, &61, &a1, &1c             ; b3f4: 1a 05 1a... ...
    equs "DR."                                                        ; b3fe: 44 52 2e    DR.
    equb &ac, &a9                                                     ; b401: ac a9       ..
    equs "$G;"                                                        ; b403: 24 47 3b    $G;
    equb &ff, &f4, &2c, &10, &1a, &b2,   6, &b1, &0a, &1a, &f5, &1a   ; b406: ff f4 2c... ..,
    equb   2, &10, &1c, &0a, &0f, &f5, &1a,   1,   9, &13, &fb, &7c   ; b412: 02 10 1c... ...
    equb &52, &f5, &1a,   4, &0b, &1c, &27, &0b, &1c,   5,   5, &72   ; b41e: 52 f5 1a... R..
    equb &13, &1c, &b1,   0, &0d, &0a, &1a, &1f, &10, &fb, &7c, &2f   ; b42a: 13 1c b1... ...
    equb &a1, &7b,   0, &0d, &11, &19                                 ; b436: a1 7b 00... .{.
    equs "DR."                                                        ; b43c: 44 52 2e    DR.
    equb &ac, &a9, &1c, &47, &1f, &ff, &f4,   9, &a5, &1a, &10, &1c   ; b43f: ac a9 1c... ...
    equb &0a, &0f,   9, &13,   9, &14, &7c, &58,   0, &0b, &11, &19   ; b44b: 0a 0f 09... ...
    equb   9, &20, &47,   6,   0,   9, &11, &19, &46, &63, &ac, &a9   ; b457: 09 20 47... . G
    equs "0G\"                                                        ; b463: 30 47 5c    0G\
    equb &f8, &86,   5,   8, &5c, &a1, &a6, &f8, &86, &c3, &17, &86   ; b466: f8 86 05... ...
    equb &30, &10, &1a, &b2,   7, &2f, &10, &e3, &10, &d8, &0f, &86   ; b472: 30 10 1a... 0..
    equb &f3, &30, &0a, &1a, &22, &0a, &1a,   0, &0c, &21, &f5, &1a   ; b47e: f3 30 0a... .0.
    equb   3, &f2, &22, &fc, &13, &1c, &fe, &2f, &11, &39, &ff, &a5   ; b48a: 03 f2 22... .."
    equb &1c, &0a, &0f, &f5, &1a,   5,   9, &13, &7c, &59, &f5, &1a   ; b496: 1c 0a 0f... ...
    equb   1, &0b, &1c, &27, &f8, &86, &c4, &17, &86, &10, &e3, &10   ; b4a2: 01 0b 1c... ...
    equb &d8, &0f, &86, &f3, &19, &29,   3, &19, &12, &2e, &f4, &23   ; b4ae: d8 0f 86... ...
    equb   0, &0c, &11, &19, &46,   4, &9e, &86                       ; b4ba: 00 0c 11... ...
    equs "DB/"                                                        ; b4c2: 44 42 2f    DB/
    equb &ac, &a9                                                     ; b4c5: ac a9       ..
    equs "DG", '"'                                                    ; b4c7: 44 47 22    DG"
    equb &a5, &1a, &10, &1c,   9, &13, &7c, &55, &11, &19, &2f, &0a   ; b4ca: a5 1a 10... ...
    equb &20, &18,   0,   7, &59, &47, &0b, &0a, &11, &2f, &f5, &20   ; b4d6: 20 18 00...  ..
    equb   8, &18, &21, &30, &ff                                      ; b4e2: 08 18 21... ..!
    equs "DB/"                                                        ; b4e7: 44 42 2f    DB/
    equb &ac, &a9,   6                                                ; b4ea: ac a9 06    ...
    equs "E$/"                                                        ; b4ed: 45 24 2f    E$/
    equb &f7, &4a, &11, &39, &0f, &86, &30, &13, &15, &f8, &8a, &17   ; b4f0: f7 4a 11... .J.
    equb &86, &ff, &0b, &15, &2f, &17, &86, &30, &10, &1a, &b2,   7   ; b4fc: 86 ff 0b... ...
    equb &2f, &0a, &20, &30, &12, &21, &ac, &a9                       ; b508: 2f 0a 20... /.
    equs "DG7"                                                        ; b510: 44 47 37    DG7
    equb &0a, &21, &18, &a9,   0, &47, &18, &f5, &1a,   5, &f5, &21   ; b513: 0a 21 18... .!.
    equb   6, &19, &29,   5, &19, &22, &f5, &21,   6, &19, &29,   5   ; b51f: 06 19 29... ..)
    equb &0a, &1a, &22, &46, &18, &f5, &1a,   1, &f5, &21,   6, &19   ; b52b: 0a 1a 22... .."
    equb &22, &0a, &1a, &0a, &21, &18, &21, &f5, &1a,   3, &f5, &21   ; b537: 22 0a 1a... "..
    equb &0c, &1a                                                     ; b543: 0c 1a       ..
    equs "'F>"                                                        ; b545: 27 46 3e    'F>
    equb &f7                                                          ; b548: f7          .
    equs "JG8"                                                        ; b549: 4a 47 38    JG8
    equb &ac, &a9, &3e, &47, &15, &f5, &21,   5,   0, &44, &21, &f5   ; b54c: ac a9 3e... ..>
    equb &21,   6, &0a, &1a, &22, &f5, &1a,   5, &f2, &22, &46, &1e   ; b558: 21 06 0a... !..
    equb &ac, &a9, &4c, &0a, &20, &0a, &64, &5a, &84, &47, &11, &f5   ; b564: ac a9 4c... ..L
    equb &1a,   5, &2f, &0a                                           ; b570: 1a 05 2f... ../
    equs "^", '"', "0"                                                ; b574: 5e 22 30    ^"0
    equb &0a, &1a, &2f, &12, &5e, &46,   4, &9e, &73, &46,   4, &9e   ; b577: 0a 1a 2f... ../
    equb &73,   0,   7, &11, &19,   5,   2, &13, &1c, &fb, &2f, &11   ; b583: 73 00 07... s..
    equb &39, &df, &1c, &46, &20, &ac,   4,   8, &80, &30,   0,   0   ; b58f: 39 df 1c... 9..
    equb   0,   0,   0, &80, &81, &47, &0c, &a5, &1a, &10, &1c,   9   ; b59b: 00 00 00... ...
    equb &13                                                          ; b5a7: 13          .
    equs "|WF"                                                        ; b5a8: 7c 57 46    |WF
    equb   4, &9e, &73,   0,   5, &11, &19, &a5, &1c, &7c, &56, &0a   ; b5ab: 04 9e 73... ..s
    equb &0b, &0a, &1a, &22, &0a, &0d, &0b, &1c, &23, &9f,   9, &19   ; b5b7: 0b 0a 1a... ...
    equb &21, &7d, &b3,   1                                           ; b5c3: 21 7d b3... !}.
    equs "Z(F*"                                                       ; b5c7: 5a 28 46... Z(F
    equb &b3,   2, &1d,   0, &2e,   1, &0a, &0f, &f2, &5b, &47, &1d   ; b5cb: b3 02 1d... ...
    equb &2e,   1, &f5, &0f,   1, &0a, &0b, &22, &0a, &0f,   9, &25   ; b5d7: 2e 01 f5... ...
    equb &21, &f5, &0f,   3, &0b, &2e, &27, &f5, &0f,   5, &19, &12   ; b5e3: 21 f5 0f... !..
    equb &0f, &46, &df, &7d, &fe, &2f, &11, &4a, &ff, &ac, &a9, &44   ; b5ef: 0f 46 df... .F.
    equb &30, &11, &32, &ac, &a9, &3e, &30,   9, &32, &2f, &0a, &20   ; b5fb: 30 11 32... 0.2
    equb &18, &a9,   0, &84, &85, &86, &a1, &3e, &2f, &0a, &20, &12   ; b607: 18 a9 00... ...
    equb &64, &f5, &64,   5,   0, &4c, &21, &df, &1c, &fb, &2f, &11   ; b613: 64 f5 64... d.d
    equb &39, &f2, &12, &5e, &0a, &64, &30, &12, &21, &f4, &0f, &a5   ; b61f: 39 f2 12... 9..
    equb &25, &10, &0b, &10, &2e, &9f, &f5, &21,   8, &fb, &fb, &7c   ; b62b: 25 10 0b... %..
    equb &52, &fe, &2f, &11, &39, &0a, &5e, &30, &12, &0d, &f5, &21   ; b637: 52 fe 2f... R./
    equb   5,   0, &44, &21, &0a, &21,   9, &25, &21, &f5, &21, &0c   ; b643: 05 00 44... ..D
    equb &0b, &2e, &23,   9, &32, &47, &0a, &f5, &21,   6, &19, &12   ; b64f: 0b 2e 23... ..#
    equb &0f, &df, &5b, &0a, &0d, &12, &0f, &df, &5b, &f5, &21,   6   ; b65b: 0f df 5b... ..[
    equb &0a, &0b, &22, &f4,   5, &ac,   0                            ; b667: 0a 0b 22... .."
    equs ":VG"                                                        ; b66e: 3a 56 47    :VG
    equb &88, &10, &11, &2f, &10, &e3, &10, &d8, &0f, &86, &f3, &19   ; b671: 88 10 11... ...
    equb &28, &10, &30, &0a, &14, &12, &21, &0a, &21, &12, &23, &f8   ; b67d: 28 10 30... (.0
    equb &24, &30, &13, &26, &f5, &23,   5, &18, &a9, &44, &0a, &23   ; b689: 24 30 13... $0.
    equb &18, &a9,   0, &84, &45, &ba, &30, &f8, &86, &c4, &17, &9c   ; b695: 18 a9 00... ...
    equb &2f, &10, &e3, &10, &d8, &0f, &9c, &f3, &19, &29,   3, &19   ; b6a1: 2f 10 e3... /..
    equb &12, &20, &30, &f5, &23,   1, &1e, &2f, &17, &24,   6, &9c   ; b6ad: 12 20 30... . 0
    equb &81, &0f, &9c, &10, &9c, &ed, &30, &13, &2a, &f8, &9c, &c4   ; b6b9: 81 0f 9c... ...
    equb &17, &9c, &0f, &9c,   5, &64, &61, &0a, &20, &f2, &5b, &85   ; b6c5: 17 9c 0f... ...
    equb &47, &d0, &2f, &0a, &20, &f2, &5a, &47,   6, &9e, &84        ; b6d1: 47 d0 2f... G./
    equs "FN/"                                                        ; b6dc: 46 4e 2f    FN/
    equb &f5, &20,   5, &18, &a9                                      ; b6df: f5 20 05... . .
    equs "DGC"                                                        ; b6e4: 44 47 43    DGC
    equb &f5, &23,   6, &19, &12, &0f, &2f, &0a, &20, &30, &f5, &33   ; b6e7: f5 23 06... .#.
    equb   6, &19, &12, &0b, &0a, &33, &18, &11, &25, &f5, &33, &0c   ; b6f3: 06 19 12... ...
    equb &1a, &13, &2e, &12, &33, &df, &5b, &0a, &23, &0a, &14, &5a   ; b6ff: 1a 13 2e... ...
    equb &47, &0f, &f5, &23,   3, &19, &12, &14, &0a, &14, &2f, &12   ; b70b: 47 0f f5... G..
    equb &2e, &46, &0e, &f5, &21,   3, &f5, &23,   3, &19, &22, &0a   ; b717: 2e 46 0e... .F.
    equb &21, &12, &23, &46,   4, &9e, &85, &0a, &23, &12, &21, &f5   ; b723: 21 12 23... !.#
    equb &23,   3, &19, &12, &23, &0a, &23, &f2, &5a, &45, &1d, &30   ; b72f: 23 03 19... #..
    equb &2f, &10, &e3, &10, &d8, &0f, &86, &f3, &19, &30, &10, &11   ; b73b: 2f 10 e3... /..
    equb &28, &10, &0b, &26, &2f, &17, &24, &7d, &b3,   1, &4c, &14   ; b747: 28 10 0b... (..
    equb &44, &b6, &31, &b3,   2, &46, &17, &46, &4b, &b3,   3, &2a   ; b753: 44 b6 31... D.1
    equb   4, &0a, &0b, &19, &12, &0f, &0a, &0f, &9f, &19             ; b75f: 04 0a 0b... ...
    equs "[G6"                                                        ; b769: 5b 47 36    [G6
    equb &f5, &0f,   5, &18, &a9, &47, &f5, &0f,   5, &18, &a9, &4a   ; b76c: f5 0f 05... ...
    equb &85, &47, &17, &b1, &f5, &0f,   6, &19, &29,   3, &f5, &0f   ; b778: 85 47 17... .G.
    equb   6, &19, &29,   5, &7c, &5f, &f5, &0f,   6, &19, &b4, &10   ; b784: 06 19 29... ..)
    equb &f5, &0f,   3, &19, &12, &0d, &0a, &0f, &b4, &13, &0a, &0d   ; b790: f5 0f 03... ...
    equb &12, &0f, &46, &c7, &0a, &0b, &f2, &22, &7d, &b1, &2e,   1   ; b79c: 12 0f 46... ..F
    equb &9f, &a0, &7c,   6, &4f, &dd, &0e, &b1, &f8, &86, &c4, &7c   ; b7a8: 9f a0 7c... ..|
    equb   3, &f8, &78, &30, &13, &1c, &4f,   0, &0c, &b1, &2e,   1   ; b7b4: 03 f8 78... ..x
    equb &10, &10                                                     ; b7c0: 10 10       ..
    equs "|\."                                                        ; b7c2: 7c 5c 2e    |\.
    equb   1, &9f, &29,   6, &19, &b1, &30, &0b, &1c, &f8, &92, &7c   ; b7c5: 01 9f 29... ..)
    equb &17, &b1, &0b, &1c, &c3, &c3, &2e,   1, &0b, &10, &30, &f5   ; b7d1: 17 b1 0b... ...
    equb &20, &0b, &1e, &73, &7c, &17, &f5, &20,   1, &2e,   1, &0b   ; b7dd: 20 0b 1e...  ..
    equb &10, &27, &9f, &29,   5, &18, &a9, &4a, &47, &1e, &4f, &b5   ; b7e9: 10 27 9f... .'.
    equb &0e, &b1, &f5, &20,   9, &1e, &7c, &0b, &b1, &f5, &20, &0d   ; b7f5: 0e b1 f5... ...
    equb &1d, &7c,   3, &2e,   1, &9f, &29, &10, &18, &86, &a1, &60   ; b801: 1d 7c 03... .|.
    equb &46,   5, &4f, &7d, &0e, &2e,   1, &0b, &0b, &2f, &17, &24   ; b80d: 46 05 4f... F.O
    equb &b1, &30, &f5, &20,   5, &f5, &20,   3, &7c, &5f, &12, &20   ; b819: b1 30 f5... .0.
    equb &7d,   0, &47, &11, &14, &ac, &a9, &26, &47,   6,   0, &4a   ; b825: 7d 00 47... }.G
    equb &11, &14, &fe, &2f, &11, &39, &ff, &2f, &0a, &20, &30, &12   ; b831: 11 14 fe... ...
    equb   9, &f8, &24, &30, &13, &0b, &ac, &a9, &3e, &45, &b0, &32   ; b83d: 09 f8 24... ..$
    equb   5,   9, &13, &10, &9f, &29,   5,   9, &14, &21, &df, &18   ; b849: 05 09 13... ...
    equb &ff, &9f, &29,   6, &2f, &10, &e3, &10, &d8, &0f, &86, &f3   ; b855: ff 9f 29... ..)
    equb &19, &22, &30, &9f, &29,   6, &19, &ac, &a9,   7, &47, &39   ; b861: 19 22 30... ."0
    equb &fb, &2f, &11, &4a, &30, &fe, &2f, &11, &39, &df, &1c, &ac   ; b86d: fb 2f 11... ./.
    equb &a9, &37, &30, &11, &16,   9, &16, &47,   3, &ff, &b1,   9   ; b879: a9 37 30... .70
    equb &16, &fe,   0, &40, &10, &10, &10, &10, &fb, &10, &15, &7c   ; b885: 16 fe 00... ...
    equb &53, &f7, &44, &86,   9, &3c, &85, &47, &da, &f4,   8, &f5   ; b891: 53 f7 44... S.D
    equb &1d,   5, &f5, &1d,   3, &19, &22, &f5, &1d, &0b, &0b, &10   ; b89d: 1d 05 f5... ...
    equb &27, &f8, &86, &17, &8a, &fb, &11, &39, &30,   9, &14, &a9   ; b8a9: 27 f8 86... '..
    equs "JGA"                                                        ; b8b5: 4a 47 41    JGA
    equb &f4,   4, &ac, &a9                                           ; b8b8: f4 04 ac... ...
    equs "DG6"                                                        ; b8bc: 44 47 36    DG6
    equb &f5, &1d, &0d, &2f, &f5, &20, &0c, &1a, &26, &0a, &20, &18   ; b8bf: f5 1d 0d... ...
    equb &30, &11, &0f,   9, &0f,   0,   7, &59, &a1, &80, &f5, &1d   ; b8cb: 30 11 0f... 0..
    equb   9, &0b, &10, &27, &0b, &10, &f5, &1d, &0d, &1d, &72, &13   ; b8d7: 09 0b 10... ...
    equb &10, &9f,   9, &0f, &21, &f5, &1d,   7, &2f, &f5, &20,   6   ; b8e3: 10 9f 09... ...
    equb &19, &22, &46,   4, &9e, &7e, &df, &1c, &f4,   5, &df,   5   ; b8ef: 19 22 46... ."F
    equb &9f, &29, &0c, &f8, &88, &23,   9, &26, &a9, &3b, &47, &15   ; b8fb: 9f 29 0c... .).
    equb &f5, &1d,   1, &0b, &10, &27, &9f, &29,   9, &fe, &21, &f8   ; b907: f5 1d 01... ...
    equb &86, &c4, &17, &86, &ff, &46,   4, &df, &5e, &12, &1d, &46   ; b913: 86 c4 17... ...
    equb &57, &ac, &30,   9, &14                                      ; b91f: 57 ac 30... W.0
    equs "TGN"                                                        ; b924: 54 47 4e    TGN
    equb &f8, &86, &c3, &17, &86, &10, &e3, &10, &d8, &0f, &86, &f3   ; b927: f8 86 c3... ...
    equb &30, &9f, &29,   6, &19, &22, &ff, &f4,   5, &9f, &29,   6   ; b933: 30 9f 29... 0.)
    equb &19, &29,   1, &1e, &13, &10, &9f, &29,   9, &18, &86, &a1   ; b93f: 19 29 01... .).
    equb &8c, &9f, &29,   9, &fb, &21, &2f, &0a, &58, &30, &12, &1b   ; b94b: 8c 9f 29... ..)
    equb &10, &17, &fc, &9f, &29, &0c, &1a, &b8, &f9, &32, &0a, &1b   ; b957: 10 17 fc... ...
    equb &19, &12, &1b, &b9, &f1, &32, &f5, &1b,   2, &f8, &78, &27   ; b963: 19 12 1b... ...
    equb &df, &5e, &46,   4, &9e, &8a, &7d, &b3,   1, &48, &10, &f8   ; b96f: df 5e 46... .^F
    equb &86, &17, &8a, &fe, &11, &39,   4,   7, &20,   0,   0, &a0   ; b97b: 86 17 8a... ...
    equb &40, &42, &a0, &3f,   7,   1, &10, &f5, &10, &d8, &0f, &86   ; b987: 40 42 a0... @B.
    equb &f3, &f2, &22,   9, &26, &a9, &29, &45, &c5, &33, &df, &1c   ; b993: f3 f2 22... .."
    equb &df, &2a, &2f, &f5, &20,   9, &1a, &30, &13, &17, &df, &2d   ; b99f: df 2a 2f... .*/
    equb &86, &0b, &17, &fc, &60, &85, &0b, &17,   6, &0f, &27, &61   ; b9ab: 86 0b 17... ...
    equb &85, &47,   6, &9e                                           ; b9b7: 85 47 06... .G.
    equs "(Fo/"                                                       ; b9bb: 28 46 6f... (Fo
    equb &10, &f5, &10, &d8, &0f, &86, &f3, &19, &30, &12, &11, &0a   ; b9bf: 10 f5 10... ...
    equb &11, &12, &13, &0a, &11, &f2, &5b, &47, &1e, &f5, &11,   2   ; b9cb: 11 12 13... ...
    equb &1e, &0b, &17, &5c, &47, &0a, &9e, &27, &48, &bb, &33,   1   ; b9d7: 1e 0b 17... ...
    equb &1b,   0, &0a, &11, &12, &13, &0a, &11, &19, &12, &11, &46   ; b9e3: 1b 00 0a... ...
    equb &e0, &10, &11, &b2, &10, &f5, &11,   6, &fc, &27, &f5, &11   ; b9ef: e0 10 11... ...
    equb   2, &0b, &17, &27, &f5, &11, &0c, &fb, &21, &0a, &11, &f2   ; b9fb: 02 0b 17... ...
    equb &22, &f5, &11, &0e, &f2, &22, &f5, &11, &0b, &fb, &21, &0a   ; ba07: 22 f5 11... "..
    equb &13, &f2, &5a, &47, &10, &2f, &10, &f5, &10, &d8, &0f, &86   ; ba13: 13 f2 5a... ..Z
    equb &f3, &30, &0a, &11, &22, &46,   7, &0a, &13, &0a, &11, &22   ; ba1f: f3 30 0a... .0.
    equb &df, &1c, &f7, &45, &86                                      ; ba2b: df 1c f7... ...
    equs "E-3"                                                        ; ba30: 45 2d 33    E-3
    equb &f4,   5, &ac, &a9, &1f, &47, &53, &ff, &f4, &3e, &fb, &2f   ; ba33: f4 05 ac... ...
    equb &11, &39, &f4, &0f, &df, &28, &2f, &f5, &2e,   5,   0, &3f   ; ba3f: 11 39 f4... .9.
    equb &21, &0a, &2e, &0a, &20, &18, &21, &f5, &2e,   9, &f5, &20   ; ba4b: 21 0a 2e... !..
    equb   9, &1b, &24, &f5, &2e,   6, &f5, &20,   6, &19, &22, &0a   ; ba57: 09 1b 24... ..$
    equb &20, &18, &a9,   9, &47, &16, &2f, &0a, &20, &0a             ; ba63: 20 18 a9...  ..
    equs "fZG"                                                        ; ba6d: 66 5a 47    fZG
    equb   7, &f8, &ae, &c3, &17, &24, &2f, &f5, &2e,   8, &fe, &21   ; ba70: 07 f8 ae... ...
    equb &30, &fe, &2f, &11, &39, &df, &1c, &f4,   5, &ac,   0        ; ba7c: 30 fe 2f... 0./
    equs ":VG"                                                        ; ba87: 3a 56 47    :VG
    equb &b2, &f8, &86, &17, &7c,   9, &26, &a9, &35, &47,   6, &b1   ; ba8a: b2 f8 86... ...
    equb &9f, &7c, &5a, &fb, &11, &0b, &ac, &a9                       ; ba96: 9f 7c 5a... .|Z
    equs "7G$"                                                        ; ba9e: 37 47 24    7G$
    equb &fb, &2f, &11, &4a, &ff, &fe, &2f, &11, &39, &30, &b1, &fb   ; baa1: fb 2f 11... ./.
    equb &fb,   0, &40, &9f, &9f, &fb, &10, &0b, &7c, &53, &fe, &2f   ; baad: fb 00 40... ..@
    equb &11, &39, &f4,   5, &ac,   0                                 ; bab9: 11 39 f4... .9.
    equs ":VG"                                                        ; babf: 3a 56 47    :VG
    equb &ea, &ac, &a9, &2e,   9, &26, &a9, &26, &85, &47, &24, &b1   ; bac2: ea ac a9... ...
    equb   5, &44, &fc, &7c, &10, &f8, &98, &30, &13, &0d, &df, &5d   ; bace: 05 44 fc... .D.
    equb &f4,   5, &ac,   0, &2e, &55,   9, &26,   0, &26, &55, &84   ; bada: f4 05 ac... ...
    equb &47, &f2, &b1, &0b, &0d, &f8, &78, &7c, &17, &fb, &2f, &11   ; bae6: 47 f2 b1... G..
    equb &39, &10, &e3, &10, &d8, &0f, &86, &f3, &19, &29,   3, &19   ; baf2: 39 10 e3... 9..
    equb &30, &12, &15, &0a, &15, &f2                                 ; bafe: 30 12 15... 0..
    equs "[G)"                                                        ; bb04: 5b 47 29    [G)
    equb &f5, &15,   5, &18,   0, &47, &57, &f5, &15,   9, &18, &84   ; bb07: f5 15 05... ...
    equb &a1, &1f, &f5, &15,   5, &18, &a9, &40, &f5, &15, &0c, &1a   ; bb13: a1 1f f5... ...
    equb   5,   2, &c5, &60, &84, &a1, &66, &f5, &15,   3, &19, &12   ; bb1f: 05 02 c5... ...
    equb &15, &46, &d5, &b1,   0, &1d, &7c, &23, &9f, &1a, &2f, &17   ; bb2b: 15 46 d5... .F.
    equb &90, &0f, &90, &17, &92, &fc, &17, &8c, &0f, &86, &17, &7c   ; bb37: 90 0f 90... ...
    equb &fc, &17, &94,   4,   0, &3f, &27,   1, &b1,   0             ; bb43: fc 17 94... ...
    equs "#|2"                                                        ; bb4d: 23 7c 32    #|2
    equb   9, &0b, &47,   5, &4f, &db, &0e, &2f, &10, &f5, &10, &d8   ; bb50: 09 0b 47... ..G
    equb &0f, &86, &f3, &19, &30, &12, &11, &0a, &11, &f2, &5b, &47   ; bb5c: 0f 86 f3... ...
    equb &18, &f5, &11, &0c, &18, &86, &a1, &18, &0a, &11, &12, &13   ; bb68: 18 f5 11... ...
    equb &0a, &11, &19, &12, &11, &0a, &13, &b4, &10, &46, &e6, &f8   ; bb74: 0a 11 19... ...
    equb &92,   5, &0a, &72, &17, &92, &10, &e3, &10, &d8, &0f, &86   ; bb80: 92 05 0a... ...
    equb &f3, &f2, &22, &0f, &86, &c4, &17, &86, &0f, &86, &17, &8a   ; bb8c: f3 f2 22... .."
    equb &7d,   7, &19                                                ; bb98: 7d 07 19    }..
    equs "ISO-Pascal compiler R1.10"                                  ; bb9b: 49 53 4f... ISO
    equb &10, &0f, &12,   7, &9c, &19,   0, &94,   5,   4, &17, &72   ; bbb4: 10 0f 12... ...
    equb &0a, &72, &1e, &17, &ac,   6, &d0,   7, &17, &74,   4,   0   ; bbc0: 0a 72 1e... .r.
    equb &15, &78,   6, &e8,   3, &17, &7a,   5,   1, &17, &7c, &fc   ; bbcc: 15 78 06... .x.
    equb &c4, &17, &86, &fc, &c4, &17, &88,   4,   0, &3f, &47,   1   ; bbd8: c4 17 86... ...
    equb &3a, &ea,   1,   7, &16                                      ; bbe4: 3a ea 01... :..
    equs "@~,.:;^()[]*+-/====<> ("                                    ; bbe9: 40 7e 2c... @~,
    equb &16, &fc, &17, &a4, &f2, &12, &52, &10, &58, &b2,   4, &0a   ; bc00: 16 fc 17... ...
    equb &58, &12, &5a, &10, &68, &b2,   6, &0a, &68, &b2,   6, &0a   ; bc0c: 58 12 5a... X.Z
    equb &68, &19, &f2, &22, &0a, &68, &19, &29,   2, &fc, &27, &0a   ; bc18: 68 19 f2... h..
    equb &68, &19, &29,   4, &fc, &27, &10, &66, &b2, &13, &b1, &0a   ; bc24: 68 19 29... h.)
    equb &66, &f2, &7c, &2c, &df, &18,   6, &90, &85, &fc, &10, &3c   ; bc30: 66 f2 7c... f.|
    equb &ed, &17, &8e, &10, &e3, &10, &d8, &fc, &f3, &19, &29,   3   ; bc3c: ed 17 8e... ...
    equb &0a, &2e, &22, &b1, &3a, &67,   1, &7c,   8, &df,   7, &fb   ; bc48: 0a 2e 22... .."
    equb &11, &42, &10, &c2, &4b, &18, &a9, &3e, &47, &0f, &10, &c2   ; bc54: 11 42 10... .B.
    equb &8d, &df, &26, &b1, &3a, &a3,   1, &7c,   9, &46, &3e, &10   ; bc60: 8d df 26... ..&
    equb &c2, &4b, &18,   0, &7b, &55, &10, &c2, &ad, &86, &84, &47   ; bc6c: c2 4b 18... .K.
    equb &2d, &b1, &3a, &67,   1, &7c,   9, &0f, &8e, &c4, &17, &9e   ; bc78: 2d b1 3a... -.:
    equb &fe, &11, &42, &df, &26, &10, &c2, &4b, &18,   0, &7b, &55   ; bc84: fe 11 42... ..B
    equb &10, &c2, &ad, &86, &84, &47, &0a, &b1, &3a, &a3,   1, &7c   ; bc90: 10 c2 ad... ...
    equb   9, &46,   5, &fb, &11, &41, &46,   5, &fb, &11, &41,   9   ; bc9c: 09 46 05... .F.
    equb &41, &47, &17, &3a, &a3,   1, &3a, &67,   1, &6c, &3c,   0   ; bca8: 41 47 17... AG.
    equb &a1, &a8,   6, &48, &86, &fc, &3a, &a3,   1, &ed, &17, &8e   ; bcb4: a1 a8 06... ...
    equb &df, &26, &10, &c2, &4b, &18, &a9, &7b, &11, &40,   9, &42   ; bcc0: df 26 10... .&.
    equb &11, &43,   9, &42, &86                                      ; bccc: 11 43 09... .C.
    equs "G':g"                                                       ; bcd1: 47 27 3a... G':
    equb   1, &10, &15,   5,   1, &f3,   0                            ; bcd5: 01 10 15... ...
    equs "R!:g"                                                       ; bcdc: 52 21 3a... R!:
    equb   1, &10, &15,   5,   2, &f3,   0                            ; bce0: 01 10 15... ...
    equs "A!:g"                                                       ; bce7: 41 21 3a... A!:
    equb   1, &10, &15,   5,   3, &f3,   0, &4d, &21,   5,   3, &17   ; bceb: 01 10 15... ...
    equb &9e,   9, &40, &47,   7, &fe, &11, &42, &46,   8,   9, &43   ; bcf7: 9e 09 40... ..@
    equb &47,   4, &df,   7, &df, &1c, &fb, &11, &3d, &4f, &af,   3   ; bd03: 47 04 df... G..
    equb &b1, &0e, &33, &7c,   3, &0f, &78, &17, &9a, &4f,   0, &0b   ; bd0f: b1 0e 33... ..3
    equb   4,   9, &28,   0,   0, &a0, &40, &42, &a0,   4,   1, &3f   ; bd1b: 04 09 28... ..(
    equb   7,   1, &f4, &2f, &df,   5, &b1, &0a, &20, &a0, &7c,   6   ; bd27: 07 01 f4... ...
    equb &f5, &2e,   3, &19, &12, &2e, &10, &e3, &10, &d8, &0f, &86   ; bd33: f5 2e 03... ...
    equb &f3, &19, &29,   3, &0a, &2e, &22,   9, &26,   0, &3b, &58   ; bd3f: f3 19 29... ..)
    equb &a1,   1, &df, &18, &0f, &a2, &17, &ae,   6, &81, &85, &fc   ; bd4b: a1 01 df... ...
    equb &0a, &ae, &ed, &13, &6a, &b1,   0, &40,   0, &0e, &7c, &19   ; bd57: 0a ae ed... ...
    equb &f5, &2e,   6, &0a, &2a, &22, &f5, &2e, &0c, &fc, &c4, &23   ; bd63: f5 2e 06... ...
    equb &f5, &2e,   1, &0f, &a2, &27, &0a, &2e, &12, &60, &b1,   0   ; bd6f: f5 2e 01... ...
    equb &40,   0, &0e, &7c, &19, &f5, &2e,   6, &0a, &2a, &22, &f5   ; bd7b: 40 00 0e... @..
    equb &2e, &0c,   5,   2, &c5, &23, &f5, &2e,   1, &0f, &a2,   5   ; bd87: 2e 0c 05... ...
    equb   6, &72, &27, &0a, &2e, &12, &62, &0f, &a2,   5, &0d, &72   ; bd93: 06 72 27... .r'
    equb &17, &24, &4f, &dd, &0b, &0f, &78, &17, &a2, &4f,   0, &0c   ; bd9f: 17 24 4f... .$O
    equb   5,   9, &13, &6a, &df, &1c,   9, &26, &a9,   7, &47, &77   ; bdab: 05 09 13... ...
    equb &df, &1c, &f5, &20,   9, &fe, &21,   9, &26, &a9, &3e, &47   ; bdb7: df 1c f5... ...
    equb &16, &f5, &20,   5,   0, &40, &21, &0a, &20,   0, &0d, &21   ; bdc3: 16 f5 20... ..
    equb &f5, &20, &0c,   5,   3, &c5                                 ; bdcf: f5 20 0c... . .
    equs "#FM"                                                        ; bdd5: 23 46 4d    #FM
    equb   9, &26, &a9                                                ; bdd8: 09 26 a9    .&.
    equs "@GE"                                                        ; bddb: 40 47 45    @GE
    equb &f5, &20, &0c, &1a, &fc, &c4, &5c, &47,   8,   5, &a7, &17   ; bdde: f5 20 0c... . .
    equb &8e, &46, &14, &f5, &20, &0c, &1a,   5,   2, &c5, &5c, &47   ; bdea: 8e 46 14... .F.
    equb   8,   5, &ab, &17, &8e, &46,   4, &9e, &83, &f5, &20, &0c   ; bdf6: 08 05 ab... ...
    equb &0b, &6a, &23, &b1,   5, &10, &0a, &20, &a0, &7c, &15, &4f   ; be02: 0b 6a 23... .j#
    equb &f2, &0e, &b1, &0f, &8e, &7c,   3, &4f,   0, &0c, &0b, &6a   ; be0e: f2 0e b1... ...
    equb   5,   6, &72, &13, &6a, &46,   4, &9e, &6e, &df, &1c,   9   ; be1a: 05 06 72... ..r
    equb &45, &86, &47, &8f, &f4,   8, &f4,   5, &a5                  ; be26: 45 86 47... E.G
    equs "j|\"                                                        ; be2f: 6a 7c 5c    j|\
    equb &b1, &0f, &a2, &0f, &92, &7c, &17, &b1, &0f, &a2, &c3, &c3   ; be32: b1 0f a2... ...
    equb &0b, &6a,   5,   9, &73, &7c, &17, &4f, &b0, &0e, &b1, &0f   ; be3e: 0b 6a 05... .j.
    equb &9a, &0f, &78, &7c, &17, &0a, &58, &19, &12, &58, &b1, &f5   ; be4a: 9a 0f 78... ..x
    equb &58,   2, &1e, &7c, &0b, &0a, &58, &19, &f2, &5a, &47, &ef   ; be56: 58 02 1e... X..
    equb &b1,   6, &ff, &ff, &7c, &0b, &f4,   3, &10, &0f, &12,   7   ; be62: b1 06 ff... ...
    equb &94, &df, &1b, &0f, &7e, &10, &0f, &12,   7,   5,   1, &9b   ; be6e: 94 df 1b... ...
    equb &97,   7, &15                                                ; be7a: 97 07 15    ...
    equs " Compilation error(s)"                                      ; be7d: 20 43 6f...  Co
    equb &9c, &15,   0, &94,   9                                      ; be92: 9c 15 00... ...
    equs "7G}"                                                        ; be97: 37 47 7d    7G}
    equb 9                                                            ; be9a: 09          .
    equs "AGo"                                                        ; be9b: 41 47 6f    AGo
    equb &fc, &17, &98, &10, &b0, &a6,   1,   1,   0, &10, &b6, &3a   ; be9e: fc 17 98... ...
    equb &a3,   1, &ab,   1,   1,   0, &3c, &0a, &68, &19, &19, &12   ; beaa: a3 01 ab... ...
    equb &68, &10, &b0, &12,   7, &91, &17, &8e, &f5, &68,   2, &1e   ; beb6: 68 10 b0... h..
    equb &0f, &98                                                     ; bec2: 0f 98       ..
    equs "\G1"                                                        ; bec4: 5c 47 31    \G1
    equb &0f, &98, &c3, &17, &98, &10, &b0, &12,   7, &91, &17, &8e   ; bec7: 0f 98 c3... ...
    equb &10, &b6, &12,   7, &f5, &68,   4, &1e,   6,   0,   1, &76   ; bed3: 10 b6 12... ...
    equb &a2, &f5, &68,   4, &1e,   6,   0,   1, &75, &17, &8e, &0a   ; bedf: a2 f5 68... ..h
    equb &68, &19, &f2, &5b, &47,   7, &0a, &68, &19, &12, &68, &0f   ; beeb: 68 19 f2... h..
    equb &98, &c3, &17, &98, &10, &b6, &12,   7, &0f, &8e, &a2, &0f   ; bef7: 98 c3 17... ...
    equb &78, &0f, &98, &5e, &47, &b0, &46, &0c,   6, &11,   4, &17   ; bf03: 78 0f 98... x..
    equb &72, &0a, &72,   5,   1, &26,   7, &0c                       ; bf0f: 72 0a 72... r.r
    equs "Code size = "                                               ; bf17: 43 6f 64... Cod
    equb &10, &0f, &12,   7, &9c, &0c,   0, &0f, &78,   5,   1, &9b   ; bf23: 10 0f 12... ...
    equb &97,   7,   6                                                ; bf2f: 97 07 06    ...
    equs " bytes"                                                     ; bf32: 20 62 79...  by
    equb &9c,   6,   0, &94, &db, &b0,   6,   0, &64,   0, &ad,   0   ; bf38: 9c 06 00... ...
    equb &b7,   0,   4,   1, &23,   1, &48,   1, &83,   1, &ac,   1   ; bf44: b7 00 04... ...
    equb &c8,   1, &0d,   2, &37,   2, &4a,   2, &da,   2, &5d,   2   ; bf50: c8 01 0d... ...
    equb &69,   2, &7d,   2, &8d,   2, &af,   2, &fc,   2, &10,   3   ; bf5c: 69 02 7d... i.}
    equb &aa,   3, &a9,   4, &da,   4, &42,   5, &75,   5, &cb,   5   ; bf68: aa 03 a9... ...
    equb &45,   6, &3f,   7, &46,   7, &33,   8, &73,   8, &8c,   8   ; bf74: 45 06 3f... E.?
    equb &cc,   8, &5e, &0d, &77, &0d, &b1, &0d, &bd, &0d, &c6, &0d   ; bf80: cc 08 5e... ..^
    equb &df, &0d, &f6, &0d, &3d, &0e, &56, &0e, &86, &0e, &a7, &0e   ; bf8c: df 0d f6... ...
    equb &bc, &0e, &d6, &0e, &f0, &0e, &61, &0f, &a7, &0f, &fc, &10   ; bf98: bc 0e d6... ...
    equb   3, &11, &91, &1a, &1b, &11, &bf, &16, &3e, &11, &26, &12   ; bfa4: 03 11 91... ...
    equb &46, &12, &f4, &12, &b3, &13, &be, &13, &e5, &13, &11, &14   ; bfb0: 46 12 f4... F..
    equb &17, &14, &c6, &16, &dd, &16, &f4, &16, &0c, &18, &74, &1a   ; bfbc: 17 14 c6... ...
    equb &98, &1a, &7d, &1b, &84, &1b, &95, &1b, &9b, &1b, &bf, &1b   ; bfc8: 98 1a 7d... ..}
    equb &ca, &1d, &d1, &1d, &e0, &1d, &ff, &1d, &18, &1e, &43, &1e   ; bfd4: ca 1d d1... ...
    equb &d8, &21, &c4, &29, &e9, &26, &f0                            ; bfe0: d8 21 c4... .!.
    equs "&(("                                                        ; bfe7: 26 28 28    &((
    equb &93, &28, &a6, &28, &cb, &29, &0e                            ; bfea: 93 28 a6... .(.
    equs "+U/[/"                                                      ; bff1: 2b 55 2f... +U/
    equb   6, &33, &df, &30, &e6, &30, &ec, &30, &ff, &ff             ; bff6: 06 33 df... .3.
.pydis_end

; Automatically generated labels:
;     l006a
;     l006b
;     l006c
;     l006d
;     l006e
;     l00fd
;     l0100
;     l041a
;     l062e
;     loop_c805a
    assert <(l006a) == &6a
    assert <brkv_handler == &58
    assert <fx163_192_1 == &40
    assert <fx163_192_3 == &4c
    assert >(l006a) == &00
    assert >brkv_handler == &80
    assert >fx163_192_1 == &80
    assert copyright - rom_header == &0f
    assert osbyte_enter_language == &8e
    assert osbyte_read_write_last_break_type == &fd
    assert osbyte_select_output_stream == &03
    assert osword_read_io_memory == &05
    assert our_osbyte_a == &a3
    assert our_osbyte_x == &c0

save pydis_start, pydis_end
