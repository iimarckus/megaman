; C698 and CC46 contain HP of an enemy on screen
; C6D8 and CC46 contain HP of an enemy on screen

; D70D, D71C, D721, D741, D742, D75C, D784: Megaman's x coord?
; D71E, D723, D724, D728, D743, D744, D746, D75D: Megaman's y coord?
; maybe these are the coords of each individual sprite?

; weapons:
; $00 buster
; $01 rush coil
; $02 spark shock
; $03 gemini laser
; $04 search snake
; $05 shadow blade
; $06 screw crusher
; $07 rush jet
; $08 dive missile
; $09 skull barrier
; $0A drill bomb
; $0B dust crusher
; $0C energy tank(?)

; ld a,1 ; top half of screen
; F:414B, call $0230
; ld a,2 ; bottom half
; F:414B, call $0230

; a = 0: draw "MENU"
; a = 1: draw upper half of stage select background
; a = 2: draw lower half of stage select background
; a = 3: draw shutters over sparkman
; a = 4: draw shutters over geminiman
; a = 5: draw shutters over snakeman
; a = 6: draw shutters over shadowman
; a = 7: draw password entry background
;
; a = E: draw upper half of Dr.W stage select background
; a = F: draw lower half of Dr.W stage select background

; Function22D: loads robot master sprite tiles to $8000
; a = 1 : first batch of robot masters???
; a = 2 : second batch of robot masters???
; a = 3 : password
; a = 4 : acquire weapon?
; a = 5 : sparkman
; a = 6 : geminiman
; a = 7 : snakeman
; a = 8 : shadowman
; a = 9 : diveman
; a = A : skullman
; a = B : drillman
; a = C : dustman
; a = D : wily fortress cutscene?
; a = E : wily floaty thing
; a = F : ending city cutscene?
; a = 10: wily fortress destroyed cutscene?
; a = 11: wily machine?

bankswitch: MACRO
	ld [$DE93],a
	ld [$2100],a
ENDM

SECTION "func0",ROM0[0]
Func0:
	ld hl,$FFFE
	ld sp,hl
	jp $0150
	db 1

Func8:
	ld a,l
	ld [$cf78],a
	ld a,h
	jp $0819

rept 8
	nop
endr

SECTION "func18",ROM0[$18]
	ld a,[$DF06]
	cp $2B
	ret

rept 34
	nop
endr

SECTION "func40",ROM0[$40]
	jp $05AB

rept 5
	nop
endr

SECTION "func48",ROM0[$48]
	jp $0719

rept 5
	nop
endr

SECTION "func50",ROM0[$50]
	reti

rept 7
	nop
endr

SECTION "func58",ROM0[$58]
	reti

rept 7
	nop
endr

SECTION "func60",ROM0[$60]
	reti

	db 1,2,4,8,16,32,64,128
	nop
	nop
	nop
	nop
	nop
	nop
	db $11,$FF,$80

rept 94
	nop
endr

SECTION "funcd0",ROM0[$D0]
incbin "base3.gb",$D0,$30

SECTION "header",ROM0[$100]
	nop
	jp $0150

SECTION "start",ROM0[$150]
Function150:
	jp Function529
Function153:
	jp $1BA1
Function156:
	jp $3E15
Function159:
	jp $3E21
Function15C:
	jp $2C26
Function15F:
	jp $2C3A
Function162:
	jp $2C2E
Function165:
	jp FunctionBE0
Function168:
	jp $1630
Function16B:
	jp $158A
Function16E:
	jp $1840
Function171:
	jp $184B
Function174:
	jp Function15F8
Copy8: ; $177
	; copy 8 bytes of data pointed to by de to the location pointed to by hl
	jp Function15BC
Copy4: ; $17A
	; copy 4 bytes of data pointed to by de to the location pointed to by hl
	jp Function15C8
Copy2: ; $17D
	; copy 2 bytes of data pointed to by de to the location pointed to by hl
	jp Function15CE
Function180:
	jp CopyData
Function183:
	jp Function178B
Function186:
	jp $1747
Function189:
	jp $176D
Function18C:
	jp $60E5
Function18F:
	jp $24A9
Function192:
	jp $24C3
Function195:
	jp $247C
Function198:
	jp $24B9
Function19B:
	jp $2D3A
Function19E:
	jp $311B
Function1A1:
	jp $312E
Function1A4:
	jp $306C
Function1A7:
	jp $30A2
Function1AA:
	jp $2E80
Function1AD:
	jp $2B39
Function1B0:
	jp $2B45
Function1B3:
	jp $2B54
Function1B6:
	jp $2A69
Function1B9:
	jp $2A7F
Function1BC:
	jp $0C8E
Function1BF:
	jp $2E66
Function1C2:
	jp $1859
Function1C5:
	jp $189B
Function1C8:
	jp $155D
Function1CB:
	jp $14A4
Function1CE:
	jp Function284
Function1D1:
	jp $0903
Function1D4:
	jp $3205
Function1D7:
	jp $2DAA
Data1DA:
	db $D8, $38
Function1DC:
	jp $2A4F
Function1DF:
	jp $2A61
Function1E2:
	jp $2A8E
Function1E5:
	jp $2A9C
Function1E8:
	jp $2AAC
Function1EB:
	jp $2B62
Function1EE:
	jp $2B66
Function1F1:
	jp $18F9
Function1F4:
	jp $2B6B
Function1F7:
	jp $2B7C
Function1FA:
	jp $2B99
Function1FD:
	jp $2BA2
Function200:
	jp $2B2D
Function203:
	jp $2B14
Function206:
	jp $2B1E
Function209:
	jp $1B03
Function20C:
	jp $1B03
Function20F:
	jp $1ABF
Function212:
	jp $0D46
Function215:
	jp $1907
Function218:
	jp $0D2F
Function21B:
	jp $2477
Function21E:
	jp $2C19
Function221:
	jp $0E2E
Function224:
	jp $0829
Function227:
	jp $07EF
Function22A:
	jp $1C55
Function22D: ; load cutscene sprite tiles
	jp Function1C93
Function230:
	jp $1CEE
Function233:
	jp $1D49
Function236:
	jp $1D87
Function239:
	jp $1D74
Function23C:
	jp $1EA9
Function23F:
	jp $1EAA
Function242:
	jp $1F02
Function245:
	jp $2135
Function248:
	jp $152E
Function24B:
	jp $2BE8
Function24E:
	jp $2BFE
Function251:
	jp $37D5
Function254:
	jp $37A8
Function257:
	jp $1603
Function25A:
	jp $1942
Function25D:
	jp $2C8A
Function260:
	jp $2CAD
Function263:
	jp $19EE
Function266:
	jp $1A04
Function269:
	jp $030F
Function26C:
	jp $2D1E
Function26F:
	jp $1A18
Function272:
	jp $0D59
Function275:
	jp $0DC3
Function278:
	jp $0DDF
Function27B:
	jp $29CB
Function27E:
	jp $1517
Function281:
	jp $0DF4

Function284: ; $284
	cp 6
	ret nc
	ld [$FF91],a
	ld a,[$DE93]
	push af
	push hl
	push de
	ld a,[$FF91]
	ld e,a
	ld d,0
	ld hl,Data2BB
	add hl,de
	add hl,de
	ld a,[hli]
	ld [$C0D1],a
	ld a,[hli]
	ld [$C0D2],a
	ld a,$C3
	ld [$C0D0],a
	pop de
	pop hl
	ld a,1
	bankswitch
	call $C0D0
	pop af
	bankswitch
	ret

Data2BB:
	dw Function2C7
	dw $60E5
	dw $5F9A
	dw Function2C7
	dw $5F90
	dw $59BB

Function2C7: ; $2C7
	ret

INCBIN "base3.gb",$2C8,$529-$2C8

Function529: ; $529
	ld hl,$C000
	ld bc,$2000
	xor a
	call Function15F8
	call $14A4
	ld a,[$FF8A]
	ld [$DF06],a
	xor a
	ld [$CCFC],a
	ld [$DE8B],a
	xor a
	ld [$FF24],a
	ld [$FF25],a
	ld [$FF26],a
	di
	xor a
	ld [$FF0F],a
	ld [$FFFF],a
	ld hl,$FFFE
	ld sp,hl
	call $1517
	ld hl,$8000
	ld bc,$2000
	xor a
	call Function15F8
	ld hl,$C000
	ld bc,$1F00
	xor a
	call Function15F8
	ld hl,$FF8A
	ld bc,$0072
	xor a
	call Function15F8
	di
	xor a
	ld [$FF0F],a
	ld [$FFFF],a
	ld hl,$FFFE
	ld sp,hl
	ld a,1
	bankswitch
	call $14A4
	call $05A0
	call $14FF
	ld a,0
	ld [$FF47],a
	ld [$FF48],a
	ld [$FF49],a
	ld [$DE98],a
	call $1592
	jp $86A

Function5A0: ; $5A0
	ld hl,$C0A4
	ld bc,$005C
	ld a,$C9
	jp Function15F8

INCBIN "base3.gb",$5AB,$8c0-$5AB
Function8C0:
	rlca
	rst $18
	or a
	jr nz,.next
	call $1BAD
	ld a,[$DF08]
	cp 9
	call z,$1C09
	jr .next2
.next

	ld a,[$DF0A]
	bit 1,a
	jr nz,.next3
	call $1BD3
	jr .next2
.next3
	ld a,$B
	ld [$DF08],a
.next2
	ld a,0
	ld [$DE8C],a
	ld sp,$FFFE
	call FunctionB59
	call $B26
	xor a
	ld [$DE99],a
	ld [$DE92],a
	rst 8
	nop
	call $1517
	call $15AC
	call $31A7
	xor a
	ld [$DD00],a
	ld [$DEAC],a
	ld [$DEAB],a
	ld a,1
	bankswitch
	call $7AFF
	call FunctionB59
	xor a
	ld [$FF0F],a
	ld a,3
	ld [$FFFF],a
	call $1592
	ei
	call $850
	call $B45
	call $155D
	ld a,$1B
	ld [$DE95],a
	ld a,$1C
	ld [$FF48],a
	ld a,$D0
	ld [$FF49],a
	ld a,7
	ld [$FF4B],a
	ld a,$80
	ld [$FF4A],a
	ld a,$E3
	ld [$DE8A],a
	ld a,$5A
	ld [$DF11],a
	jr Function97D

Function950:
	ld sp,$FFFE
	call $1539
	ld hl,$DE86
	inc [hl]
	inc hl
	dec [hl]
	call $68B2
	ld a,[$D7D8]
	or a
	jr nz,Function980
	call $42CE
	call $F67
	call $26E5
	call $216E
	call $3CC2
	call $5FBB
	call $5C00
	call $65D0
Function97D:
	call $3893
Function980:
	ld a,[$DE94]
	bankswitch
	call $DE80
	ld a,1
	bankswitch
	call $32EE
	ld a,[$DE4C]
	or a
	jr nz,Function9F2

Function99D:
	ld a,[$CCFD]
	dec a
	jp z,FunctionA0C
	ld hl,$DF0A
	bit 2,[hl]
	jr z,.next
	ld a,[$D761]
	cp $13
	jp c,FunctionB65
.next
	ld a,[$CC56]
	or a
Function9B7:
	jp z,Function950
	ld hl,$DECF
	ld a,[hl]
	cp $FF
	jr z,.next2
	dec [hl]
	jr nz,.next2
	dec [hl]
	xor a
	ld [$DE4B],a
	ld a,[$DE47]
	cp 2
	jr z,.next2
	dec a
	jr z,.next5
	rst 8
	ld b,l
	jr .next2
.next5
	call $B45
	xor a
	ld [$DD00],a
.next2
	ld a,[$DE48]
	or a
	jp z,Function950
	ld a,[$D761]
	cp $10
	jr c,Function9F2
	cp $14
	jp c,Function950
Function9F2:
	ld a,[$DEC4]
	ld l,a
	ld a,[$DEC5]
	ld h,a
	ld a,h
	and $1F
	or l
	jr z,FunctionA19
	dec hl
	ld a,l
	ld [$DEC4],a
	ld a,h
	ld [$DEC5],a
	jp Function950

FunctionA0C:
	ld a,[$DF12]
	call $829
	xor a
	ld [$CCFD],a
	jp Function950

FunctionA19:
	ld a,$F
	bankswitch
	call $4012
	ld a,1
	bankswitch
	xor a
	ld [$DECC],a
	ld [$DE44],a
	ld a,[$DF08]
	cp $B
	jp z,FunctionB90
	rst 8
	ld d,b
	ld a,[$DF08]
	cp 9
	jr nz,.next2
	rst 8
	nop
	jr .next
.next2
	ld a,[$DE49]
	or a
	call z,$1BF1
.next
	xor a
	ld [$D791],a
	ld [$D792],a
	call $211D
	rst 8
	nop
	ld a,[$DE5A]
	cp $3B
	call z,$1C23
	ld a,1
	bankswitch
	call FunctionB59
	call FunctionA8E
	xor a
	ld [$DE99],a
	jp $8B2

FunctionA78:
	di
	ld bc,$34
	ld hl,$DD00
	xor a
	call Function15F8
	ei
	call FunctionA8E
	xor a
	ld [$DE8C],a
	jp $0B16

FunctionA8E:
	ld a,$98
	ld [$DE9C],a
	ld a,$98
	ld hl,$DE9D
	ld bc,$B
	call Function15F8
	ret

FunctionA9F:
	rst 8
	nop
	xor a
	ld [$FF47],a
	ld [$DE95],a
	ld [$FF48],a
	ld [$FF49],a
	ld [$DE44],a
	ld hl,$DD08 ; number of lives
	dec [hl]
	jr z,GameOver

FunctionAB4:
	ld a,$98
	ld [$DE9C],a
	jp $08E8

GameOver:
	rst $8
	ld b,e
	xor a
	ld [$D791],a
	ld [$D792],a
	call $211D
	ld a,$A
	bankswitch
	call $4000
	ld a,1
	bankswitch
	call $0B16
	ld a,[$DECB]
	or a
	jr nz,.next
	ld a,[$DF0A]
	res 1,a
	ld [$DF0A],a
	jp z,$0A63
.next
	xor a
	ld [$DF0F],a
	ld [$DE8C],a
	call $0A93
	jp FunctionAB4

FunctionAFC:
	ld a,[$CC00]
	and 1
	ret z
	rst 8
	ld d,d
	call $2105
	xor a
	ld [$DEC9],a
	rst 8
	nop
	ld a,1
	bankswitch
	ret

InitializeLives: ; $B16
	ld a,3 ; number of lives on a new game
	ld [$DD08],a
	xor a
	ld [$DE99],a
	ld [$DECC],a
	call $5A0E
	ret

INCBIN "base3.gb",$b26,$b59-$b26

FunctionB59: ; $B59
	xor a
	ld [$FF47],a
	xor a
	ld [$DE95],a
	ld [$FF48],a
	ld [$FF49],a
	ret

FunctionB65: ; $B65
	ld hl,$DF11
	dec [hl]
	jr nz,.done
	ld a,$13
	ld [$D761],a
	ld [$CC56],a
	ld [$DE48],a
	ld a,$FF
	ld a,$B4
	ld [$DEC4],a
	ld a,0
	ld [$DEC5],a
	rst 8
	inc e
	ld a,2
	ld [$DEC6],a
	xor a
	ld [$DEC7],a
.done
	jp Function950

FunctionB90: ; $B90
	xor a
	ld [$D792],a
	ld [$DE95],a
	call $155D
	call $1C3D
	jp $214A

FunctionBA0: ; $BA0
	ld a,[$D724]
	sub $20
	jr nc,.next
	xor a
.next
	ld [$DE43],a
	ld a,$F8
	ld [$D724],a
	ld a,1
	ld [$DEC6],a
	xor a
	ld [$DEC7],a
	ret

FunctionBBA: ; $BBA
	ld a,[$D746]
	or a
	ret z
	pop hl
	rst 8
	inc e
	ld a,2
	ld [$DEC6],a
	xor a
	ld [$DEC7],a
	ret

FunctionBCC: ; $BCC
	ld a,[$D721]
	ld e,a
	ld a,[$D724]
	jr FunctionBDF

FunctionBD5: ; $BD5
	ld a,[$D721]
	add [hl]
	inc hl
	ld e,a
	ld a,[$D724]
	add [hl]
FunctionBDF: ; $BDF
	ld d,a
FunctionBE0: ; $BE0
	ld [$D749],a
	ld a,e
	ld [$D748],a
	ld a,[$CC74]
	or a
	jr z,.next
	ld a,[$CC75]
	ld b,a
	ld a,d
	cp b
	jr nc,.next
	ld a,[$CC74]
	ld b,a
	ld a,d
	sub b
	ld d,a
.next
	ld a,d
	ld [$DED0],a
	ld a,d
	cp $80
	jr c,.next2
	xor a
jr .next3
.next2
	ld a,[$FFB1]
	or a
	jr z,.next4
	ld a,e
	cp $A0
	jr c,.next4
	ld a,4
	jr .next3
.next4
	call $CB4
.next3
	ld b,a
	ld [$D747],a
	ld a,$54
	add b
	ld l,a
	ld a,$D8
	adc 0
	ld h,a
	ld a,[hl]
	and 3
	jr z,.next5
	cp 3
	jr z,.next6
	cp 2
	ld a,[$DED0]
	jr nz,.next7
	xor 8
.next7
	and $8
	jr z,.next5
.next6
	ld a,[$D747]
	cp 8
	jr nz,.next8
	ld a,[$FFB1]
	or a
	jr z,.next8
	ld a,$14
	ld [$D738],a
.next8
	scf
	ret
.next5
	ld a,[$D748]
	ld e,a
	ld a,[$FFB1]
	or a
	jr z,.next9
	ld a,e
	cp $A0
	jr c,.next10
	scf
	ret
.next10
	ld a,[$D749]
	cp $F0
	jr nc,.next9
	cp $90
	jr c,.next9
	scf
	ret
.next9
	ld hl,$DE00
	ld a,[hli]
	ld d,a
.loop
	ld a,l
	cp d
	ret nc
	ld a,e
	cp [hl]
	inc l
	jr c,.next11
	cp [hl]
	inc l
	jr nc,.next12
	ld a,[$D749]
	cp [hl]
	inc l
	jr c,.next13
	cp [hl]
	inc l
	jr nc,.loop
	ret
.next11
	inc l
.next12
	inc l
.next13
	inc l
	jr .loop

INCBIN "base3.gb",$C8E,$15BC-$C8E

Function15BC: ; $15BC
	ld a,[de]
	inc de
	ld [hli],a
	ld a,[de]
	inc de
	ld [hli],a
	ld a,[de]
	inc de
	ld [hli],a
	ld a,[de]
	inc de
	ld [hli],a
Function15C8: ; $15C8
	ld a,[de]
	inc de
	ld [hli],a
	ld a,[de]
	inc de
	ld [hli],a
Function15CE: ; $15CE
	ld a,[de]
	inc de
	ld [hli],a
	ld a,[de]
	inc de
	ld [hli],a
	ret

Function15D5: ; $15D5
	ld a,[hli]
	ld [de],a
	inc de
	ld a,[hli]
	ld [de],a
	inc de
	ld a,[hli]
	ld [de],a
	inc de
	ld a,[hli]
	ld [de],a
	inc de
	ret

CopyData: ; $15E2
	; copy bc bytes of data from hl to de.
	push af
.loop
	ld a,[hli]
	ld [de],a
	inc de
	dec bc
	ld a,b
	or c
	jr nz,.loop
	pop af
	ret

Function15ED: ; $15ED
	push af
.loop
	ld a,[hld]
	ld [de],a
	dec de
	dec bc
	ld a,b
	or c
	jr nz,.loop
	pop af
	ret

Function15F8: ; $15F8
	ld [hl],a
	ld e,l
	ld d,h
	inc de
	dec bc
	ld a,b
	or c
	ret z
	jp CopyData

INCBIN "base3.gb",$1603,$178B-$1603

Function178B: ; $178B
	; draws a row of tiles, like on the stage select screen
	ld a,[$FF40] ; LCD control
	and a,$80
	jr nz,.next
	jp CopyData
.next
	ld a,b
	or a
jr nz,.next2
	ld a,c
	cp a,3
	jr c,.next3
.next2
	call Function17B0
	jr z,.next4
.next3
	ld a,c
	cp a,2
	jr nz,.next5
	call Function17E3
	jr .next4
.next5
	call $1810
.next4
	ret

Function17B0:
	ld a,b
	or a
	jr nz,.next
	ld a,c
	cp a,3
	ret c
.next
	push bc
	ld c,[hl]
	inc hl
	ld b,[hl]
	inc hl
	ld a,[hl]
	inc hl
	push hl
	ld l,e
	ld h,d
	ld d,a
	di

.loop1
	ld a,[$FF41]
	and a,%11
	jr z,.loop1

.loop2
	ld a,[$FF41]
	and a,%11
	jr nz,.loop2

	ld [hl],c
	inc hl
	ld [hl],b
	inc hl
	ld [hl],d
	ei
	inc hl
	ld e,l
	ld d,h
	pop hl
	pop bc
	dec bc
	dec bc
	dec bc
	ld a,b
	or c
	jr nz,Function17B0
	ret

Function17E3: ; $17E3
	ld a,b
	or a
	jr nz,.next
	ld a,c
	cp a,2
	ret c
.next
	push bc
	ld c,[hl]
	inc hl
	ld b,[hl]
	inc hl
	push hl
	ld l,e
	ld h,d
	di
.next2
	ld a,[$FF41]
	and a,3
	jr z,.next2
.next3
	ld a,[$FF41]
	and a,3
	jr nz,.next3
	ld [hl],c
	inc hl
	ld [hl],b
	ei
	inc hl
	ld e,l
	ld d,h
	pop hl
	pop bc
	dec bc
	dec bc
	ld a,b
	or c
	jr nz,Function17E3
	ret

INCBIN "base3.gb",$1810,$1C93-$1810

Function1C93: ; $1C93
	sla a
	ld l,a
	ld h,0
	ld de,$1F23
	add hl,de
	ldi a,[hl]
	ld h,[hl]
	ld l,a
.loop
	ld a,[hli]
	ld e,a
	ld a,[hli]
	ld d,a
	or e
	jr z,.next
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld a,[hli]
	ld [$CC95],a
	ld a,[hli]
	push hl
	call Function1CD1
	ld a,[$CC95]
	bankswitch
	call $178B
	pop hl
	ld a,1
	ld [$2100],a
	jr .loop
.next
	ld a,[$CC96]
	bankswitch
	ret

Function1CD1: ; $1CD1
	or a,$80
	ld l,c
	ld h,0
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	or h
	ld h,a
	push hl
	ld l,b
	ld h,0
	add hl,hl
	add hl,hl
	add hl,hl
	add hl,hl
	ld b,h
	ld c,l
	pop hl
	ld a,e
	ld e,l
	ld l,a
	ld a,d
	ld d,h
	ld h,a
	ret

INCBIN "base3.gb",$1CEE,$1F23-$1CEE

Data1F23:
	dw $1F49
	dw $1F51
	dw $1F6B
	dw $1F85
	dw $1F99
	dw $1FAD
	dw $1FBB
	dw $1FC9
	dw $1FD7
	dw $1FE5
	dw $1FF3
	dw $2001
	dw $200F
	dw $201D
	dw $2031
	dw $203F
	dw $204D
	dw $205B
	dw $2063

INCBIN "base3.gb",$1F49,$4000-$1F49

SECTION "bank1",ROMX,BANK[$1]
INCBIN "base3.gb",$4000,$1CEF

Function5CEF:
	ld a,[$DEAC]
	bit 1,a
	jr nz,.next
	ld hl,$D741
	ld a,[$FF9B]
	cp [hl]
	jr c,.next
	inc hl
	ld a,[$FF9A]
	cp [hl]
	jr nc,.next
	inc hl
	ld a,[$FF9D]
	cp [hl]
	jr c,.next
	inc hl
	ld a,[$FF9C]
	cp [hl]
	jr nc,.next
	ld h,$D4 ; $D40D >> 8 ???
	ld a,$0D ; $D40D & $FF???
	add c
	ld l,a
	ld a,[hl]
	cp $FF
	jr nz,.next2
	ld a,1
	ld [$DF0F],a
.next2
	call $5DB4
	jr .next3
.next
	ld h,$D4 ; $D404 >> 8 ???
	ld a,$04 ; $D404 & $FF???
	add c
	ld l,a
	ld e,[hl]
	ld a,8
	add c
	ld l,a
	ld d,[hl]
	ld l,e
	ld h,d
	call $7C4F
	ld h,$D4 ; $D400 >> 8 ???
	ld a,$00 ; $D400 & $FF???
	add c
	ld l,a
	ld a,[hl]
	cp $50
	jr nc,.next4
	and 4
	jr nz,.next5
.next4
	ld a,$10
	ld [$D3EA],a
	ld h,$D4 ; $D40F >> 8 ???
	ld a,$0F ; $D40F & $FF???
	add c
	ld l,a
	ld a,[hl]
	ld [$CE55],a
	ld a,$A
	add c
	ld l,a
	ld a,[hl]
	push af
	ld a,9
	add c
	ld l,a
	ld a,[hl]
	add a
	ld e,a
	ld a,[$D769]
	rrca
	rrca
	rrca
	and 1
	add e
	add a
	ld e,a
	ld d,0
	ld hl,$5F28
	add hl,de
	ld e,[hl]
	inc hl
	ld d,[hl]
	ld l,e
	ld h,d
	pop af
	call $2E80
.next5
	ld h,$D4 ; $D401 >> 8 ???
.next6
	ld b,1   ; $D401 & $FF???
	ret
	jr .next6
	nop
	ld b,0
	jr .next7
.next3
	ld b,1
.next7
	ld h,$D4 ; $D400 >> 8 ???
	ld a,0   ; $D400 & $FF???
	add c
	ld l,a
	ld a,[hl]
	cp $FF
	jr nz,.next8
	ld a,$D
	add c
	ld l,a
	ld e,[hl]
	inc l
	ld d,[hl]
	push bc
	call $5ACE
	pop bc
.next8
	ld h,$D4 ; $D400 >> 8 ???
	ld b,0   ; $D400 & $FF???
	ret


; -----

Function5DA5:
	ld hl,$DF05
	inc [hl]
	ld a,[hl]
	cp 5
	jr c,.next
	ld [hl],4 ; max of 4 energy tanks
	ret
.next
	rst 8
	ld [de],a
	ret

Function5DB4:
	ld a,9
	add c
	ld l,a
	ld a,[hl]
	dec a
	jr z,.life
	dec a
	jr z,.bighealth
	dec a
	jr z,.littlehealth
	dec a
	jr z,.bigweap
	dec a
	jr z,.littleweap
	jr Function5DA5 ; not a valid item? or perhaps an energy tank?
.life
	ld hl,$DD08
	inc [hl]
	ld a,[hl]
	cp 11
	jr c,.nextlife
	ld [hl],10 ; maximum of 9 extra lives
	ret
.nextlife
	rst 8
	ld [de],a
	ret

.bighealth
	ld d,10
	jr .healaddress
.littlehealth
	ld d,2
.healaddress
	ld hl,$DE9C
	jr .heal

.bigweap
	ld d,10
	jr .weapaddress
.littleweap
	ld d,2
.weapaddress
	ld a,[$DE99] ; current weapon
	or a
	ret z ; can't heal the buster
	add $9C ; $DE9C & $FF???
	ld l,a
	ld h,$DE ; $DE9C >> 8???
.heal
	ld a,d
	ld [$D4C1],a
	ld a,l
	ld [$D4BF],a
	ld a,h
	ld [$D4C0],a
	ld hl,$DEAC
	set 1,[hl]
	xor a
	ld [$D4BE],a
	jr Function5E15

Function5E0B:
	ld hl,$D4BE
	inc [hl]
	ld a,[hl]
	cp 4
	ret c
	xor a
	ld [hl],a
Function5E15:
	; at this point:
	; - $D4C1 contains how many points to heal
	; - $D4BF,C0 contains a pointer to which meter to heal
	; - $D4BE contains a value from 0 to 3(???)
	ld hl,$D4C1
	ld a,[hl]
	or a
	jr z,.nomoreheal
	dec [hl]
	ld a,[$D4BF]
	ld l,a
	ld a,[$D4C0]
	ld h,a
	ld a,[hl]
	cp $98
	jr nc,.nomoreheal
	rst 8
	rla
	ld a,8
	add [hl]
	ld [hl],a
	cp $98
	ret c
	ld [hl],$98
	ret
.nomoreheal
	ld hl,$DEAC
	res 1,[hl]
	ret

; -----
INCBIN "base3.gb",$5E3C,$8000-$5E3C

SECTION "bank2",ROMX,BANK[$2]
INCBIN "base3.gb",$8000,$4000

SECTION "bank3",ROMX,BANK[$3]
INCBIN "base3.gb",$C000,$F300-$C000

DataF300:
	dw .label1
	dw .label2
	dw .label3
	dw .label4
	dw .label5
	dw .label6
	dw .label7
	dw .label8
	dw .label9
	dw .label10
	dw .label11
	dw .label12
	dw .label13
	dw .label14
	dw .label15
	dw .label16
	dw .label17
	dw .label18
	dw .label19
	dw .label19
	dw .label20
	dw .label20
	dw .label21
	dw .label21
	dw .label22
	dw .label22
	dw .label23
	dw .label23
	dw .label24
	dw .label24

.label1
incbin "base3.gb",$F33C,$F358-$F33C
.label2
incbin "base3.gb",$F358,$F374-$F358
.label3
incbin "base3.gb",$F374,$F393-$F374
.label4
incbin "base3.gb",$F393,$F3B2-$F393
.label5
incbin "base3.gb",$F3B2,$F3CF-$F3B2
.label6
incbin "base3.gb",$F3CF,$F3EC-$F3CF
.label7
incbin "base3.gb",$F3EC,$F409-$F3EC
.label8
incbin "base3.gb",$F409,$F426-$F409
.label9
incbin "base3.gb",$F426,$F44E-$F426
.label10
incbin "base3.gb",$F44E,$F476-$F44E
.label11
incbin "base3.gb",$F476,$F494-$F476
.label12
incbin "base3.gb",$F494,$F4B2-$F494
.label13
incbin "base3.gb",$F4B2,$F4D2-$F4B2
.label14
incbin "base3.gb",$F4D2,$F4F2-$F4D2
.label15
incbin "base3.gb",$F4F2,$F512-$F4F2
.label16
incbin "base3.gb",$F512,$F532-$F512
.label17
incbin "base3.gb",$F532,$F552-$F532
.label18
incbin "base3.gb",$F552,$F572-$F552
.label19
incbin "base3.gb",$F572,$F57C-$F572
.label20
incbin "base3.gb",$F57C,$F586-$F57C
.label21
incbin "base3.gb",$F586,$F590-$F586
.label22
incbin "base3.gb",$F590,$F59A-$F590
.label23
incbin "base3.gb",$F59A,$F5A6-$F59A
.label24
incbin "base3.gb",$F5A6,$10000-$F5A6

SECTION "bank4",ROMX,BANK[$4]
INCBIN "base3.gb",$10000,$10073-$10000

LoadMegamanSprite: ; $4:4073
	ld de,$8000
	ld hl,$40C0
	ld bc,$720
	call Function183
	ld de,$8800
	ld hl,$47E0
	ld bc,$00B0
	jp Function183

INCBIN "base3.gb",$1008B,$100C0-$1008B

; Megaman sprite in levels
incbin "base3.gb",$100C0,$720

; powerup sprites
INCBIN "base3.gb",$107E0,$B0

INCBIN "base3.gb",$10890,$13BD1-$10890

TitleScreenTilemap: ; $4:7BD1
INCBIN "base3.gb",$13BD1,20*18

INCBIN "base3.gb",$13D39,$14000-$13D39

SECTION "bank5",ROMX,BANK[$5]
INCBIN "base3.gb",$14000,$4000

SECTION "bank6",ROMX,BANK[$6]

	jp Function18009
	jp Function18ABC
	jp $779E

Function18009: ; $6:4009
	ld hl,TitleScreenLogoTiles
	ld bc,EndTitleScreenLogoTiles-TitleScreenLogoTiles
	ld de,$9000
	call Function183
	ld hl,TitleScreenTextTiles
	ld bc,EndTitleScreenTextTiles-TitleScreenTextTiles
	ld de,$8800
	call Function183
	ld hl,$9800
	ld bc,$9C00-$9800
	ld a,$6C ; blank tile
	call Function186 ; clear background map
	ld a,$e4
	ld [$ff48],a
	ld hl,TitleScreenArrowTile
	ld de,$8000
	ld bc,EndTitleScreenArrowTile-TitleScreenArrowTile
	jp Function180

TitleScreenArrowTile: ; $6:403C
	db $00,$00,$40,$40,$60,$60,$70,$50,$78,$48,$70,$50,$60,$60,$40,$40
EndTitleScreenArrowTile:

TitleScreenLogoTiles: ; $6:404C
incbin "base3.gb",$1804C,$670
EndTitleScreenLogoTiles:

TitleScreenTextTiles: ; $6:46BC
incbin "base3.gb",$186BC,$400
EndTitleScreenTextTiles:

Function18ABC: ; $6:4ABC
INCBIN "base3.gb",$18ABC,$1B79E-$18ABC

Function1B79E: ; $6:779E
	call Function1C8
	call Function1CB
	call Function1BF2F
	ld a,[$CCB2]
	ld e,a
	ld d,0
	ld hl,Pointers1B7B5
	add hl,de
	ld a,[hli]
	ld h,[hl]
	ld l,a
	jp hl

Pointers1B7B5: ; $6:77B5
	dw Function1B7F8
	dw Function1B8C5
	dw Function1B903
	dw Function1BAE1
	dw Function1B90B
	dw Function1BAE1
	dw Function1B913
	dw Function1BAE1
	dw Function1B932
	dw Function1BAE1
	dw Function1B93A
	dw Function1BAE1
	dw Function1B963
	dw Function1BAE1
	dw Function1B96B
	dw Function1BAE1
	dw Function1B973
	dw Function1BAE1
	dw Function1BB31
	dw Function1BB7A
	dw Function1B97B
	dw Function1BAE1
	dw Function1B9B3
	dw Function1BAE1
	dw Function1BBA3
	dw Function1BBD1
	dw Function1BBEE
	dw Function1BC0D
	dw Function1BC78
	dw Function1BCA1
	dw Function1BCB4
	dw Function1BCBB
	dw Function1B7F7

Function1B7F7: ; $6:77F7
	ret

Function1B7F8: ; $6:77F8
	xor a
	ld [$d9ff],a
	ld a,$06
	ld [$cc96],a
	ld hl,$8000
	ld bc,$2000
	xor a
	call Function186
	ld hl,$6772
	ld de,$8000
	ld bc,$0420
	call Function183
	call Function1BEE8
	ld hl,$6e13
	ld de,$9100
	ld bc,$00b0
	call Function183
	ld a,$07
	ld [$ff4b],a
	ld a,$90
	ld [$ff4a],a
	ld c,$04
	ld hl,$cc84
.loop1
	xor a
	ldi [hl],a
	inc c
	ld a,c
	cp $14
	jr c,.loop1
	call Function19B
	ld a,[$ce50]
	ld l,a
	ld h,$ce
	ld a,$0a
.loop2
	dec l
	dec a
	ld [hl],a
	jr nz,.loop2
	ld a,l
	ld [$ce50],a
	ld a,$ff
	ld [$ce58],a
	ld hl,$c600
	ld bc,$0040
	xor a
	call Function174
	ld a,$00
	ld [$cc40],a
	ld a,$c6
	ld [$cc41],a
	ld a,$40
	ld [$cc42],a
	ld a,$c6
	ld [$cc43],a
	ld a,$90
	ld [$ff48],a
	ld a,[$6744]
	ld [$ff49],a
	ld a,$13
	ld [$c61c],a
	call Function1A4
	ld [$c650],a
	ld a,$04
	ld [$c613],a
	ld a,$9f
	ld [$c615],a
	ld a,$6b
	ld [$c616],a
	ld a,$06
	ld [$c61b],a
	ld a,$b8
	ld [$c60d],a
	ld a,$78
	ld [$c60f],a
	ld a,[$cc40]
	ld c,a
	ld a,[$cc41]
	ld h,a
	call Function15C
	ld a,$01
	ld [$ffff],a
	ld [$cc94],a
	ld a,$e3
	ld [$de8a],a
	ld [$ff40],a
	ld hl,$ccb2
	inc [hl]
	inc [hl]
	jp Function1B79E

Function1B8C5: ; $6:78C5
	ld a,[$C60D]
	cp $81
	jr c,.next
	ld a,[$C60C]
	add $A0
	ld [$C60C],a
	ld a,[$C60D]
	adc $FF
	ld [$C60D],a
	jp Function1BDE8
.next
	ld hl,$D9FF
	ld a,[hl]
	cp $90
	jr nc,.next2
	inc [hl]
	jp Function1BDE8
.next2
	ld [hl],0
	ld hl,$CCB2
	inc [hl]
	inc [hl]
	xor a
	ld [$CC84],a
	ld a,$56
	ld [$CC88],a
	ld a,$65
	ld [$CC89],a
	jp Function1BDE8

Function1B903: ; $6:7903
	ld a,$C
	ld [$D841],a
	jp Function1B9BB

Function1B90B: ; $6:790B
	ld a,4
	ld [$D842],a
	jp Function1BAA4

Function1B913: ; $6:7913
	ld a,$14
	ld [$D841],a
	ld a,$80
	ld [$C3B4],a
	ld a,$20
	ld [$C653],a
	ld a,6
	ld [$C65B],a
	ld a,$14
	call Function20C
	ld hl,$6C56
	jp Function1BA42

Function1B932: ; $6:7932
	ld a,$14
	ld [$D842],a
	jp Function1BAA4

Function1B93A: ; $6:793A
	ld a,$1C
	ld [$D841],a
	ld a,$80
	ld [$C3B4],a
	ld a,$20
	ld [$C653],a
	ld a,6
	ld [$C65B],a
	ld a,$2F
	call Function20C
	ld a,$30
	call Function20C
	ld a,$37
	call Function20C
	ld hl,$6C65
	jp Function1BA42

Function1B963: ; $6:7963
	ld a,$1C
	ld [$D842],a
	jp Function1BAA4

Function1B96B: ; $6:796B
	ld a,$24
	ld [$D841],a
	jp Function1B9BB

Function1B973: ; $6:7973
	ld a,$1C
	ld [$D842],a
	jp Function1BAA4

Function1B97B: ; $6:797B
	ld a,$30
	ld [$D841],a
	ld de,$9800
	ld hl,$9C00
	ld bc,$400
	ld a,6
	bankswitch
	call Function183
	ld a,$80
	ld [$C3B4],a
	ld a,$20
	ld [$C653],a
	ld a,6
	ld [$C65B],a
	ld a,$19
	call Function20C
	ld a,$43
	call Function20C
	ld hl,$6C88
	jp Function1BA42

Function1B9B3: ; $6:79B3
	ld a,$30
	ld [$D842],a
	jp Function1BAA4

Function1B9BB: ; $6:79BB
	xor a
	ld hl,$C3C5
	ld [hli],a
	ld [hl],a
	ld hl,$C640
	ld bc,$0040
	xor a
	call Function174
	ld a,[$CC84]
	ld e,a
	ld d,0
	add 4
	ld [$CC84],a
	ld hl,$64B4
	add hl,de
	ld a,[hl]
	ld [$CC86],a
	cp 0
	jr nz,.next
	inc e
	ld a,e
	ld [$CC84],a
	ld a,[$D841]
	ld [$CCB2],a
	jp Function1BDE8
.next
	ld a,$80
	ld [$C3B4],a
	push hl
	ld a,[$CC82]
	ld e,a
	ld a,[$CC83]
	ld d,a
	ld a,[$CC86]
	call Function1BEDA
	ld a,5
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[hl]
	ld [$C653],a
	ld a,2
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[hl]
	ld [$C645],a
	ld a,3
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[hl]
	ld [$C65B],a
	ld a,[$C645]
	call Function20C
	ld c,$15
	ld de,$7F02
	call Function1BEF4
	pop hl
	inc hl
	ld a,[hli]
	ld [$C660],a
	ld a,[hli]
	ld h,[hl]
	ld l,a
	call $C0B0
Function1BA42: ; $6:7A42
	ld a,4
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,l
	ld [$C655],a
	ld a,h
	ld [$C656],a
	ld a,$15
	ld [$C65C],a
	call Function1A4
	ld [$C650],a
	ld a,$F0
	ld [$CC85],a
	ld c,$18
	ld de,$7F17
	call Function1BEF4
	ld a,$C2
	ld [$CC8A],a
	ld a,$99
	ld [$CC8B],a
	ld a,4
	ld [$CC87],a
	ld a,$A
	ld [$CC8E],a
	xor a
	ld [$CC8F],a
	ld a,[$6745]
	ld [$DE95],a
	ld de,$99C0
	ld hl,$9800
	ld bc,$0040
	ld a,6
	bankswitch
	call Function183
	ld hl,$CCB2
	inc [hl]
	inc [hl]
	jp Function1BDE8

Function1BAA4: ; $6:7AA4
	ld hl,$CC85
	dec [hl]
	jr nz,.next
	ld hl,$CCB2
	inc [hl]
	inc [hl]
.next
	call Function1BD51
Function1BAB2: ; $6:7AB2
	ld a,$3C
	ld [$FFA2],a
	ld a,[$C660]
	add $30
	ld [$FFA3],a
	ld a,[$C653]
	and $20
	swap a
	srl a
	ld [$CE57],a
	ld a,$10
	ld [$D3EA],a
	ld a,$80
	ld [$CE55],a
	ld a,[$C655]
	ld l,a
	ld a,[$C656]
	ld h,a
	call $C0B0
	jp Function1BDE8

Function1BAE1: ; $6:7AE1
	ld a,[$CC8E]
	or a
	jr z,.next
	dec a
	ld [$CC8E],a
	jp Function1BAB2
.next
	ld hl,$6744
	ld a,$A
	ld [$CC8E],a
	ld a,[$CC8F]
	ld b,a
	sla a
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[hli]
	ld [$FF49],a
	ld a,[hl]
	ld [$DE95],a
	ld a,b
	cp 6
	jr nz,.next2
	ld hl,$CCB2
	inc [hl]
	inc [hl]
.next2
	ld a,b
	inc a
	ld [$CC8F],a
	cp $B
	jp c,$7AB2
	ld a,[$D842]
	ld [$CCB2],a
	ld a,[$C650]
	call Function1A7
	ld a,$40
	ld [$C650],a
	jp Function1BDE8

Function1BB31: ; $6:7B31
	ld a,0
	ld [$DE95],a
	ld a,$11 ; wily machine?
	call Function22D
	ld hl,$00C0
	ld de,$8800
	ld bc,$0040
	call Function183
	ld hl,$6CAB
	ld de,$9800
	call Function1BDBF
	ld a,$28
	ld [$CC88],a
	ld a,$67
	ld [$CC89],a
	ld a,$C2
	ld [$CC8A],a
	ld a,$99
	ld [$CC8B],a
	ld a,4
	ld [$CC87],a
	ld a,$A
	ld [$CC8E],a
	xor a
	ld [$CC8F],a
	ld hl,$CCB2
	inc [hl]
	inc [hl]
	jp Function1BDE8

Function1BB7A: ; $6:7B7A
	ld hl,$675A
	ld a,7
	ld [$D841],a
	ld a,3
	ld [$D842],a
	call Function1BCF6
	jr nc,.next
	ld a,$2C
	ld [$CC8C],a
	ld a,1
	ld [$CC8D],a
.next
	ld a,[$CC8F]
	cp 4
	jr nz,.next2
	call Function1BD51
.next2
	jp Function1BDE8

Function1BBA3: ; $6:7BA3
	ld hl,$D9FF
	ld a,[hl]
	cp $B4
	jr nc,.next
	inc [hl]
	cp $78
	jp c,$7DE8
	jr .next2
.next
	ld hl,$6762
	ld a,3
	ld [$D841],a
	ld a,$FF
	ld [$D842],a
	call Function1BD0C
.next2
	ld a,[$CC40]
	ld c,a
	ld a,[$CC41]
	ld h,a
	call Function15C
	jp Function1BDED

Function1BBD1: ; $6:7BD1
	ld hl,$6EC3
	ld bc,$0740
	ld de,$9000
	call Function183
	ld hl,$7603
	ld de,$9800
	call Function1BDBF
	ld hl,$CCB2
	inc [hl]
	inc [hl]
	jp Function1BDED

Function1BBEE: ; $6:7BEE
	ld hl,$6766
	ld a,7
	ld [$D841],a
	ld a,3
	ld [$D842],a
	call Function1BCF6
	jr nc,.next
	ld a,$48
	ld [$CC8C],a
	ld a,3
	ld [$CC8D],a
.next
	jp Function1BDED

Function1BC0D: ; $6:7C0D
	call Function1BEE8
	ld hl,$00C0
	ld de,$9000
	ld bc,$0040
	call Function183
	ld a,$12
	call Function22D
	ld a,$D0
	ld [$FF49],a
	ld hl,$CC84
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hli],a
	ld [hl],a
	ld de,$9800
	ld hl,$9C00
	ld bc,$0400
	ld a,6
	bankswitch
	call Function183
	ld a,[$776B]
	ld [$D841],a
	ld hl,$776C
.loop
	ld a,[hli]
	ld [$D842],a
	ld a,[hli]
	ld e,a
	ld a,[hli]
	ld d,a
	push hl
	ld a,[$D842]
	ld c,a
	ld b,0
	call Function183
	pop hl
	ld a,[$D842]
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[$D841]
	dec a
	ld [$D841],a
	jr nz,.loop
	ld hl,$CCB2
	inc [hl]
	inc [hl]
	jp Function1BDED

Function1BC78: ; $6:7C78
	ld hl,$D9FF
	ld a,[hl]
	cp $B4
	jr nc,.next
	inc [hl]
	jp Function1BDED
.next
	ld hl,$676E
	ld a,3
	ld [$D841],a
	ld a,$FF
	ld [$D842],a
	call Function1BD0C
	ld a,$2C
	ld [$CC8C],a
	ld a,1
	ld [$CC8D],a
	jp Function1BDED

Function1BCA1: ; $6:7CA1
	ld a,$40
	ld [$CC9D],a
	ld a,$C0
	ld [$CC9E],a
	call Function1BE32
	call Function1BF3E
	jp Function1BDED

Function1BCB4: ; $6:7CB4
	rst 8
	ld a,[bc]
	ld hl,$CCB2
	inc [hl]
	inc [hl]
Function1BCBB: ; $6:7CBB
	ld hl,$676A
	ld a,3
	ld [$D841],a
	ld a,$FF
	ld [$D842],a
	call Function1BD0C
	ld a,[$CC8E]
	cp $A
	jr nz,.next
	ld a,[$CC8F]	
	dec a
	add a
	ld hl,$6753
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[hl]
	ld [$FF48],a
.next
	ld a,$40
	ld [$CC9D],a
	ld a,$C0
	ld [$CC9E],a
	call Function1BE32
	call Function1BF3E
	jp Function1BDED

Function1BCF6: ; $6:7CF6
	ld a,[$CC8C]
	ld e,a
	ld a,[$CC8D]
	ld d,a
	ld a,e
	or d
	jr z,Function1BD0C
	dec de
	ld a,e
	ld [$CC8C],a
	ld a,d
	ld [$CC8D],a
	ret

Function1BD0C: ; $6:7D0C
	ld a,[$CC8E]
	or a
	jr z,.next2
	dec a
	ld [$CC8E],a
	xor a
	ret
.next2
	ld a,[$D841]
	ld e,a
	ld a,[$D842]
	ld d,a
	ld a,$A
	ld [$CC8E],a
	ld a,[$CC8F]
	ld b,a
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[hl]
	ld [$DE95],a
	ld a,b
	inc a
	ld [$CC8F],a
	ld a,b
	cp d
	jr nz,.next3
	scf
	ret
.next3
	cp e
	jr c,.next4
	ld hl,$CCB2
	inc [hl]
	inc [hl]
	ld a,$A
	ld [$CC8E],a
	xor a
	ld [$CC8F],a
.next4
	xor a
	ret

Function1BD51: ; $6:7D51
	ld a,[$cc87]
	cp $ff
	ret z
	or a
	jr z,.next
	dec a
	ld [$cc87],a
	ret
.next
	ld a,$04
	ld [$cc87],a
	ld a,[$cc8a]
	ld e,a
	ld a,[$cc8b]
	ld d,a
	ld a,[$cc88]
	ld l,a
	ld a,[$cc89]
	ld h,a
.loop
	ld a,[hl]
	cp $00
	ret z
	cp $0d
	jr nz,.next2
	ld de,$99e2
	inc hl
	jr .loop
.next2
	cp $0e
	jr nz,.next3
	ld a,$ff
	ld [$cc87],a
	jr .next4
.next3
	cp $0a
	jr nc,.next5
	add e
	ld e,a
	ld a,$00
	adc d
	ld d,a
	inc hl
	jr .loop
.next5
	push hl
	push de
	ld a,$06
	ld [$de93],a
	ld [$2100],a
	ld bc,$0001
	call Function183
	pop de
	pop hl
.next4
	inc de
	inc hl
	ld a,e
	ld [$cc8a],a
	ld a,d
	ld [$cc8b],a
	ld a,l
	ld [$cc88],a
	ld a,h
	ld [$cc89],a
	ret

Function1BDBF: ; $6:7DBF
	ld a,$12
	ld [$D841],a
.loop
	ld bc,$0014
	push hl
	push de
	call Function183
	pop de
	pop hl
	ld a,$14
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,$20
	add e
	ld e,a
	ld a,0
	adc d
	ld d,a
	ld a,[$D841]
	dec a
	ld [$D841],a
	jr nz,.loop
	ret

Function1BDE8: ; $6:7DE8
	ld de,$6B92
	jr Function1BDF0
Function1BDED: ; $6:7DED
	ld de,$6B9A
Function1BDF0: ; $6:7DF0
	ld a,[$CC40]
	ld c,a
	ld a,[$CC41]
	ld h,a
	call Function15F
	ld hl,$6B9F
	ld a,b
	add a
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[hl]
	inc hl
	ld h,[hl]
	ld l,a
	ld a,4
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[$C60D]
	ld [$FFA2],a
	ld a,[$C60F]
	ld [$FFA3],a
	ld a,1
	ld [$CE57],a
	xor a
	ld [$D3EA],a
	xor a
	ld [$CE55],a
	ld a,[$C610]
	call Function1AA
	jp Function1B79E

Function1BE32: ; $6:7E32
	xor a
	ld [$cc97],a
	call Function1BE86
	ld hl,$7ebc
	ld a,[$cc9d]
	ld e,a
	ld a,[$cc9e]
	ld d,a
	ld b,$0f
.loop
	ld a,b
	cp $06
	jr c,.next1
	cp $0b
	jr c,.next2
	push bc
	ld a,[$cc81]
	ld b,a
	ld a,[$cc84]
	ld c,a
	call Function1BEAD
	pop bc
	jr .next3
.next1
	push bc
	ld a,[$cc83]
	ld b,a
	ld a,[$cc86]
	ld c,a
	call Function1BEAD
	pop bc
	jr .next3
.next2
	push bc
	ld a,[$cc82]
	ld b,a
	ld a,[$cc85]
	ld c,a
	call Function1BEAD
	pop bc
.next3
	dec b
	jr nz,.loop
	ld a,e
	ld [$cc9d],a
	ld a,d
	ld [$cc9e],a
	ret

Function1BE86: ; $6:7E86
	ld a,[$CC81]
	add 2
	ld c,a
	ld [$CC81],a
	sla a
	ld [$CC83],a
	add c
	rra
	ld [$CC82],a
	ld a,[$CC84]
	sub 2
	ld c,a
	ld [$CC84],a
	sla a
	ld [$CC86],a
	add c
	rra
	ld [$CC85],a
	ret

Function1BEAD: ; $6:7EAD
	ld a,[hl]
	add b
	ld [de],a
	inc de
	ld a,[hli]
	add c
	ld [de],a
	inc de
	ld a,[hli]
	ld [de],a
	inc de
	xor a
	ld [de],a
	inc de
	ret

Data1BEBC: ; $6:7EBC
INCBIN "base3.gb",$1BEBC,$1BEDA-$1BEBC

Function1BEDA: ; $6:7EDA
	push de
	dec a
	ld l,a
	ld h,0
	add hl,hl
	add hl,hl
	ld e,l
	ld d,h
	add hl,hl
	add hl,de
	pop de
	add hl,de
	ret

Function1BEE8: ; $6:7EE8
	ld hl,$46BC
	ld bc,$400
	ld de,$9200
	jp Function183

Function1BEF4: ; $6:7EF4
	ld hl,$C0B0
	jr .next
.loop
	ld a,[de]
	ld [hli],a
	inc de
	dec c
.next
	ld a,c
	or a
	jr nz,.loop
	ret

Function1BF02: ; $6:7F02
	ld a,[$C65B]
	bankswitch
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,6
	bankswitch
	ret

Function1BF17: ; $6:7F17
	ld a,[$C65B]
	bankswitch
	ld a,[$C650]
	call Function1AA
	ld a,6
	bankswitch
	ret

Function1BF2F: ; $6:7F2F
	ld hl,$C000
	ld de,4
	ld bc,$28A0
.loop
	ld [hl],c
	add hl,de
	dec b
	jr nz,.loop
	ret

Function1BF3E: ; $6:7F3E
	ld a,[$CC9D]
	ld l,a
	ld a,[$CC9E]
	ld h,a
	ld a,l
.loop
	cp $A0
	jr z,.done
	ld a,$A0
	ld [hl],a
	ld a,4
	add l
	ld l,a
	jr .loop
.done
	ret

INCBIN "base3.gb",$1BF55,$1C000-$1BF55

SECTION "bank7",ROMX,BANK[$7]
INCBIN "base3.gb",$1C000,$4000

SECTION "bank8",ROMX,BANK[$8]
INCBIN "base3.gb",$20000,$4000

SECTION "bank9",ROMX,BANK[$9]
INCBIN "base3.gb",$24000,$4000

SECTION "bankA",ROMX,BANK[$A]
INCBIN "base3.gb",$28000,$4000

SECTION "bankB",ROMX,BANK[$B]
INCBIN "base3.gb",$2C000,$4000

SECTION "bankC",ROMX,BANK[$C]
INCBIN "base3.gb",$30000,$4000

SECTION "bankD",ROMX,BANK[$D]
INCBIN "base3.gb",$34000,$4000

SECTION "bankE",ROMX,BANK[$E]
INCBIN "base3.gb",$38000,$4000

SECTION "bankF",ROMX,BANK[$F]
INCBIN "base3.gb",$3C000,$3C65B-$3C000

DrawShutters:
	ld [$CC81],a ; bug?
	bit 0,a
	jr z,.next1
	ld a,3
	call Function230
.next1
	ld a,[$CC81]
	bit 1,a
	jr z,.next2
	ld a,4
	call Function230
.next2
	ld a,[$CC81]
	bit 2,a
	jr z,.next3
	ld a,5
	call Function230
.next3
	ld a,[$CC81]
	bit 3,a
	jr z,.next4
	ld a,6
	call Function230
.next4
	ret

INCBIN "base3.gb",$3C68C,$3F59C-$3C68C

; $3F59C
StageSelectTilemap:
INCBIN "base3.gb",$3F59C,20

INCBIN "base3.gb",$3F5B0,$40000-$3F5B0
