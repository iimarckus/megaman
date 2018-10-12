include "text.charmap"

bankswitch: MACRO
	rst $20
ENDM

freespace: MACRO
	incbin "base5.gb",\1,(\1 / $4000 + 1) * $4000 - \1
ENDM

bankword: MACRO
	dw \1
	db BANK(\1)
ENDM

; $DF3D is the number of P chips

SECTION "func0",ROM0[0]
Func0:
	di
	ld sp,$FFFE
	jp $150

SECTION "func8",ROM0[8]
Func8:
	ld a,l
	ld [$CF78],a
	ld a,h
	jp $876

SECTION "func10",ROM0[$10]
Func10:
	ld [$CF7A],a
	ld a,l
	jp Function334

SECTION "func18",ROM0[$18]
Func18:
	ld a,[$DF03]
	cp $2B
	ret

SECTION "func20",ROM0[$20]
Bankswitch: ; $20
	ld [$DF00],a
	ld [$2100],a
	ret

Function27: ; $27
	ld bc,$2AE1
	push hl
	jp $4A0

SECTION "vblank",ROM0[$40]
	jp $50E

SECTION "lcdc",ROM0[$48]
	jp $73D
	db $01,$1F,$FF

SECTION "timer",ROM0[$50]
	reti

SECTION "serial",ROM0[$58]
	reti

SECTION "joypad",ROM0[$60]
	reti

	db $01,$02,$04,$08,$10,$20,$40,$80
	db 0,0,0,0,0,0
	db $11,$FF,$80,$00
	db $7E,$FF,$C9,$C9,$C9,$C9,$C9,$C9

SECTION "unknownhome",ROM0[$D0]
INCBIN "base5.gb",$D0,$30

SECTION "header",ROM0[$100]
	nop
	jp Function150

SECTION "start",ROM0[$150]

Function150:
	jp Function4FA
Function153:
	jp $20B2
Function156:
	jp $3D65
Function159:
	jp $3D71
Function15C:
	jp $2C05
Function15F:
	jp $2C0D
Function162:
	jp $0406
Function165:
	jp $0D96
Function168:
	jp $1A96
Function16B:
	jp $19D7
Function16E:
	jp $1CFF
Function171:
	jp $1D0A
Function174:
	jp Function1A5E
Copy8: ; $177
	jp Function19FC
Copy4: ; $17A
	jp Function1A08
Copy2: ; $17D
	jp Function1A0E
Function180:
	jp Function1A22
Function183:
	jp $1C39
Function186:
	jp $1BAD
Function189:
	jp $1C15
Function18C:
	jp $11AB
Function18F:
	jp $243D
Function192:
	jp $2458
Function195:
	jp $2405
Function198:
	jp $2D2D
Function19B:
	jp $2D2A
Function19E:
	jp $317F
Function1A1:
	jp $3192
Function1A4:
	jp $30C1
Function1A7:
	jp $30F7
Function1AA:
	jp $2DE8
Function1AD:
	jp $2B45
Function1B0:
	jp $2B51
Function1B3:
	jp $2B60
Function1B6:
	jp $2A5F
Function1B9:
	jp $3170
Function1BC:
	jp $0EDA
Function1BF:
	jp $3B4C
Function1C2:
	jp $1E37
Function1C5:
	jp $19AE
Function1C8:
	jp $186B
Function1CB:
	jp Function35E
Function1CE:
	jp $1E48
Function1D1:
	jp $3289
Function1D4:
	jp $1E5F
Function1D7:
	jp $2A45
Function1DA:
	jp $2A57
Function1DD:
	jp $2A7A
Function1E0:
	jp $2A88
Function1E3:
	jp $2A98
Function1E6:
	jp $2B6E
Function1E9:
	jp $2B72
Function1EC:
	jp $1D18
Function1EF:
	jp $2B78
Function1F2:
	jp $2B89
Function1F5:
	jp $048C
Function1F8:
	jp $2B9C
Function1FB:
	jp $2BA4
Function1FE:
	jp $2B39
Function201:
	jp $2B20
Function204:
	jp $2B2A
Function207:
	jp $202A
Function20A:
	jp $202A
Function20D:
	jp $1FE8
Function210:
	jp $31F8
Function213:
	jp $1D26
Function216:
	jp $0FD5
Function219:
	jp $2400
Function21C:
	jp $2BF8
Function21F:
	jp $10E0
Function222:
	jp $0884
Function225:
	jp $0851
Function228:
	jp $0AFC
Function22B:
	jp $1F51
Function22E:
	jp $0429
Function231:
	jp $0421
Function234:
	jp $03F6
Function237:
	jp $03FA
Function23A:
	jp $1973
Function23D:
	jp $04E9
Function240:
	jp $10C6
Function243:
	jp $3A30
Function246:
	jp $3A0D
Function249:
	jp $3ABC
Function24C:
	jp $1D61
Function24F:
	jp $2C74
Function252:
	jp $2C97
Function255:
	jp $1E0D
Function258:
	jp $1E23
Function25B:
	jp $04B4
Function25E:
	jp $2D0E
Function261:
	jp $1E3D
Function264:
	jp $100F
Function267:
	jp $1079
Function26A:
	jp $108B
Function26D:
	jp $2A0E
Function270:
	jp $18F8
Function273:
	jp $1096
Function276:
	jp $129B
Function279:
	jp $1326
Function27C:
	jp $043A
Function27F:
	jp $0F32
Function282:
	jp $2DB4
Function285:
	jp Function1A69
Function288:
	jp $192B
Function28B:
	jp $195D
Function28E:
	jp $190f
Function291:
	jp $0480
Function294:
	jp $0EC4
Function297:
	jp $0BC5
Function29A:
	jp $0BCC
Function29D:
	jp $244E
Function2A0:
	jp Function504
Function2A3:
	jp $03E3
Function2A6:
	jp $03DA
Function2A9:
	jp $03EE
Function2AC:
	jp $23DD
Function2AF:
	jp $05BC
Function2B2:
	jp $05DF
Function2B5:
	jp $04E6
Function2B8:
	jp $191D
Function2BB:
	jp $0927
Function2BE:
	jp $31FB
Function2C1:
	jp $04C5
Function2C4:
	jp $042D
Function2C7:
	jp $04C1
Function2CA:
	jp $0466
Function2CD:
	jp Function326
Function2D0:
	jp $04BC
Function2D3:
	jp $04DC
Function2D6:
	jp $0490
Function2D9:
	jp $03F2
Function2DC:
	jp $03FE
Function2DF:
	jp $03D4
Function2E2:
	jp $047C
Function2E5:
	jp $0462
Function2E8:
	jp $0322
Function2EB:
	jp $0AC4
Function2EE:
	jp $0EDF
Function2F1:
	jp $049C
Function2F4:
	jp Func0
Function2F7:
	jp Function306
Function2FA:
	jp $030A
Function2FD:
	jp $030E
Function300:
	jp $0316
Function303:
	jp $0312

Function306:
INCBIN "base5.gb",$306,$326-$306

Function326: ; $326
	ld a,[$DF00]
	push af
	ld a,b
	bankswitch
	call Function332
	pop af
	bankswitch
	ret

Function332:
	push de
	ret

Function334: ; $334
	ld [$cf78],a
	ld a,h
	ld [$cf79],a
	pop hl
	ld a,$c3
	ld [$c0e0],a
	ldi a,[hl]
	ld [$c0e1],a
	ldi a,[hl]
	ld [$c0e2],a
	ld a,[$df00]
	push af
	ld a,[hl]
	bankswitch
	ld hl,$cf78
	ldi a,[hl]
	ld h,[hl]
	ld l,a
	ld a,[$cf7a]
	call $c0e0
	pop af
	bankswitch
	ret

Function35E: ; $35E
	cp $24
	ret nC
	ld [$ff8a], a
	ld a, [$df00]
	push af
	push hl
	push de
	ld a, [$ff8a]
	ld e, a
	ld d, $00
	ld hl, Pointers38B
	add hl, de
	add hl, de
	add hl, de
	ldi a, [hl]
	ld [$c0d1], a
	ldi a, [hl]
	ld [$c0d2], a
	ld a, $c3 ; jp
	ld [$c0d0], a
	ld a, [hl]
	pop de
	pop hl
	bankswitch
	call $c0d0
	pop af
	bankswitch
	ret

Pointers38B:
	dw Function3D3
	db 1
	bankword Function4F9D
	bankword Function4E2B
	bankword Function3400C
	bankword Function4E21
	bankword Function44F4
	bankword Function70C2
	bankword Function44AB
	bankword Function68010
	bankword Function4002B
	bankword Function34048
	bankword Function1000F
	bankword Function40028
	bankword Function10006
	dw Function2268
	db 1
	bankword Function5FDF
	bankword Function70010
	bankword Function64013
	dw Function3D3
	db 1
	bankword Function4F8E
	bankword FunctionC003
	bankword Function24003
	bankword Function78020
	bankword Function14006

Function3D3:
	ret

INCBIN "base5.gb",$3D4,$4FA-$3D4

Function4FA: ; $4FA
	di
	ld sp,$FFFE
	ld a,1
	bankswitch
	jp $4000

Function504: ; $504
	di
	ld sp,$FFFE
	ld a,1
	bankswitch
	jp $4030

INCBIN "base5.gb",$50E,$BE9-$50E

InitializeLives: ; $BE9
	ld a,3
	ld [$DF34],a
	call $B5D
	xor a
	ld [$DE9B],a
	ld [$DED4],a
	jp $454D

INCBIN "base5.gb",$BFB,$19FC-$BFB

Function19FC: ; $19FC
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
Function1A08: ; $1A08
	ld a,[de]
	inc de
	ld [hli],a
	ld a,[de]
	inc de
	ld [hli],a
Function1A0E: ; $1A0E
	ld a,[de]
	inc de
	ld [hli],a
	ld a,[de]
	inc de
	ld [hli],a
	ret

Function1A15: ; $1A15
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

Function1A22: ; $1A22
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

Function1A2D: ; $1A2D
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

Function1A5E: ; $1A5E
	ld [hl],a
	ld e,l
	ld d,h
	inc de
	dec bc
	ld a,b
	or c
	ret z
	jp Function1A22

Function1A69: ; $1A69
	ld hl,0
	ld a,$10
.loop
	add hl,hl
	rl c
	rl b
	jr nc,.next
	add hl,de
	jr nc,.next
	inc bc
.next
	dec a
	jr nz,.loop
	ret

INCBIN "base5.gb",$1A7D,$2268-$1A7D

Function2268:
INCBIN "base5.gb",$2268,$3ec9-$2268

Function3EC9:
INCBIN "base5.gb",$3ec9,$3ee1-$3ec9

	freespace $3ee1

SECTION "bank1",ROMX,BANK[$1]
INCBIN "base5.gb",$4000,$44AB-$4000

Function44AB:
INCBIN "base5.gb",$44ab,$44f4-$44ab
Function44F4:
INCBIN "base5.gb",$44f4,$4AE1-$44f4

Function4AE1:
	ld hl,$DF34
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
	ld hl,$DE9E
	jr .heal

.bigweap
	ld d,10
	jr .weapaddress
.littleweap
	ld d,2
.weapaddress
	ld a,[$DE9B] ; current weapon
	or a
	jr z,.nomoreheal ; can't heal the buster
	add $9E ; $DE9E & $FF???
	ld l,a
	ld h,$DE ; $DE9E >> 8???
	ld a,[hl]
	cp $98
	jr nc,.nomoreheal
.heal
	ld a,d
	ld [$D4BB],a
	ld a,l
	ld [$D4B9],a
	ld a,h
	ld [$D4BA],a
	ld hl,$DEAF
	set 1,[hl]
	xor a
	ld [$D4B8],a
	jr .next
	ld hl,$D4B8
	inc [hl]
	ld a,[hl]
	cp 4
	ret c
	xor a
	ld [hl],a
.next
	ld hl,$D4BB
	ld a,[hl]
	or a
	jr z,.next2
	dec [hl]
	ld hl,$D4B9
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[hl]
	cp $98
	jr nc,.next2
	rst 8
	rla
	ld a,8
	add [hl]
	ld [hl],a
	cp $98
	ret c
	ld [hl],$98
	ret
.next2
	ld hl,$DEAF
	res 1,[hl]
	ret
.nomoreheal
	ld a,[$DF3C]
	or a
	ret z
	push bc
	push de
	ld a,0
	ld [$FF8A],a
	ld a,0
	ld [$FF8B],a
	ld c,$99
	ld b,$C
	ld hl,$DE9F
	ld a,[$DE9C]
	ld e,a
	ld a,[$DE9D]
	ld d,a
.next5
	srl d
	rr e
.next3
	srl d
	rr e
	jr nc,.next4
	ld a,[hl]
	cp c
	jr nc,.next4
	ld c,a
	ld a,l
	ld [$FF8A],a
	ld a,h
	ld [$FF8B],a
.next4
	inc hl
	dec b
	jr nz,.next3
.next7
	pop de
	pop bc
	ld hl,$FF8A
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,h
	or l
	ret z
	jp $4B11
	ld hl,$D40A
	ld a,[hl]
	or a
	ret z
	ld [hl],0
	ld b,a
	ld l,0
.next6
	ld a,[hli]
	ld c,l
	push bc
	add $a
	ld l,a
	ld a,[hl]
	ld [hl],$40
	call $30F7
	ld h,$D4
	pop bc
	ld l,c
	dec b
	jr nz,.next6

	ret

INCBIN "base5.gb",$4BBB,$4e21-$4BBB
Function4E21:
	ld a, $FF
	ld hl, $4e40
	ld b, 0
	jp Function4FEF

Function4E2B:
INCBIN "base5.gb",$4e2b,$4f8e-$4e2b
Function4F8E:
INCBIN "base5.gb",$4f8e,$4f9d-$4f8e
Function4F9D:
INCBIN "base5.gb",$4f9d,$4fef-$4f9d
Function4FEF:
INCBIN "base5.gb",$4fef,$5fdf-$4fef
Function5FDF:
INCBIN "base5.gb",$5fdf,$70c2-$5fdf
Function70C2:
INCBIN "base5.gb",$70c2,$7d08-$70c2

	freespace $7D08

SECTION "bank2",ROMX,BANK[$2]
INCBIN "base5.gb",$8000,$4000

SECTION "bank3",ROMX,BANK[$3]
FunctionC000:
	jp FunctionF9FC

FunctionC003:
	jp FunctionFAA3

FunctionC006:
	jp FunctionC778

FunctionC009:
	jp FunctionE8AC

FunctionC00C:
	jp FunctionD1A1

FunctionC00F:
	jp FunctionDB36

FunctionC012:
	jp FunctionF12E

FunctionC015:
	jp FunctionF9C9

FunctionC018:
	jp FunctionF9C9

FunctionC01B:
INCBIN "base5.gb",$C01B,$C778-$C01B
FunctionC778:
INCBIN "base5.gb",$C778,$D1A1-$C778
FunctionD1A1:
INCBIN "base5.gb",$D1A1,$DB36-$D1A1
FunctionDB36:
INCBIN "base5.gb",$DB36,$E8AC-$DB36
FunctionE8AC:
INCBIN "base5.gb",$E8AC,$F12E-$E8AC
FunctionF12E:
INCBIN "base5.gb",$F12E,$F9C9-$F12E
FunctionF9C9:
INCBIN "base5.gb",$F9C9,$F9FC-$F9C9
FunctionF9FC:
INCBIN "base5.gb",$f9fc,$fa99-$f9fc
DataFA99:
	dw $4EA3
	dw $59B3
	dw $62CE
	dw $6F7A
	dw $7743

FunctionFAA3:
	ld a, b
	dec a
	ld de, DataFA99
	jp Function171

	freespace $FAAB

SECTION "bank4",ROMX,BANK[$4]
Function10000:
	jp $405D

Function10003:
	jp $53d7

Function10006:
	jp $6b9e

Function10009:
	jp $50ef

Function1000C:
	jp $51db

Function1000F:
	jp $4069

Function10012:
	jp $63d6

Function10015:
	jp $63d0

Function10018:
	jp $7437

Function1001B:
	jp $743b

Function1001E:
	jp $743f

Function10021:
	jp $7443

Function10024:
	jp $5090

INCBIN "base5.gb",$10027,$14000-$10027

SECTION "bank5",ROMX,BANK[$5]
INCBIN "base5.gb",$14000,$6
Function14006:
INCBIN "base5.gb",$14006,$18000-$14006

SECTION "bank6",ROMX,BANK[$6]
INCBIN "base5.gb",$18000,$4000

SECTION "bank7",ROMX,BANK[$7]
INCBIN "base5.gb",$1C000,$4000

SECTION "bank8",ROMX,BANK[$8]
INCBIN "base5.gb",$20000,$4000

SECTION "bank9",ROMX,BANK[$9]
Function24000:
	jp $7c9a

Function24003:
	jp $7ee4

Function24006:
	jp $42c3

Function24009:
	jp $464e

Function2400c:
	jp $4ca0

Function2400f:
	jp $5574

Function24012:
	jp $5d28

Function24015:
	jp $6650

Function24018:
	jp $7802

Function2401B:
INCBIN "base5.gb",$2401b,$28000-$2401b

SECTION "bankA",ROMX,BANK[$A]
INCBIN "base5.gb",$28000,$4000

SECTION "bankB",ROMX,BANK[$B]
Function2C000:
	jp $4b3c

Function2C003:
	jp $4DCA

Function2C006:
	jp $5EB2

Function2C009:
INCBIN "base5.gb",$2C009,$30000-$2C009

SECTION "bankC",ROMX,BANK[$C]
Function30000:
	jp $417b

INCBIN "base5.gb",$30003,$34000-$30003

SECTION "bankD",ROMX,BANK[$D]
Function34000:
	jp $7879

Function34003:
	jp $5470

Function34006:
	jp $573B

Function34009:
	jp $515A

Function3400C:
	jp $5215

Function3400F:
	jp $52B3

Function34012:
	jp $4fe2

Function34015:
	jp $4c59

Function34018:
	jp $4bdf

Function3401B:
	jp $7f45

Function3401E:
	jp $581b

Function34021:
	jp $58ba

Function34024:
	jp $5c7e

Function34027:
	jp $60ff

Function3402A:
	jp $66d0

Function3402D:
	jp $690d

Function34030:
	jp $6b50

Function34033:
	jp $6e37

Function34036:
	jp $6ec7

Function34039:
	jp $6f44

Function3403C:
	jp $72a2

Function3403F:
	jp $75c1

Function34042:
	jp $79de

Function34045:
	jp $7b56

Function34048:
	jp $7db4

Function3404B:
	jp $4e8e

INCBIN "base5.gb",$3404e,$38000-$3404e

SECTION "bankE",ROMX,BANK[$E]
Function38000:
	jp $4e19

Function38003:
	jp $4ed0

Function38006:
	jp $51ae

Function38009:
	jp $52bf

Function3800c:
	jp $5c67

Function3800f:
	jp $6332

Function38012:
	jp $6dcf

Function38015:
	jp $7cd9

INCBIN "base5.gb",$38018,$3c000-$38018

SECTION "bankF",ROMX,BANK[$F]

Function3C000:
	jp $4c86

Function3C003:
	jp $4aa1

INCBIN "base5.gb",$3c006,4

Function3C00A:
	jp $5074

Function3C00D:
	jp $6053

Function3C010:
	jp $6050

Function3C013:
	jp $4fb7

INCBIN "base5.gb",$3C016,$40000-$3C016

SECTION "bank10",ROMX,BANK[$10]
INCBIN "base5.gb",$40000,16 ; "Program bank 10"

Function40010:
	jp $4231

Function40013:
	jp $423f

Function40016:
	jp $4192

Function40019:
	jp $4964

Function4001C:
	jp $5d8c

Function4001F:
	jp $6cb5

Function40022:
	jp $6bd7

Function40025:
	jp $6e5e

Function40028:
	jp Function4003B

Function4002B:
	jp Function4003A

Function4002E:
	jp $7357

Function40031:
	jp $77a5

Function40034:
	jp $796d

Function40037:
	jp $544d

Function4003A:
	ret

Function4003B:
	ld hl,$60FE
	ld a,b
	and $F
	cp $a
	jr c,.next
	sub $a
	ld hl, $620e
.next
	swap a
	add a,l
	ld l,a
	ld a,0
	adc a,h
	ld h,a
	ld bc,$10
	jp Function183

INCBIN "base5.gb",$40058,$41FFE-$40058

TitleScreenTextTiles: ; $10:5FFE
incbin "base5.gb",$41FFE,$400
EndTitleScreenTextTiles:

TitleScreenTilemap: ; $10:63FE

INCBIN "base5.gb",$423FE,$42568-$423FE

Function42568: ; $10:6568
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
	ld a,$62 ; blank tile
	call Function186 ; clear background map
	ld hl,TitleScreenArrowTile
	ld de,$8000
	ld bc,EndTitleScreenArrowTile-TitleScreenArrowTile
	jp Function183

TitleScreenArrowTile: ; $10:6597
	db $00,$00,$40,$40,$60,$60,$70,$50,$78,$48,$70,$50,$60,$60,$40,$40
EndTitleScreenArrowTile:

TitleScreenLogoTiles: ; $10:65A7
incbin "base5.gb",$425A7,$630
EndTitleScreenLogoTiles:

Function42BD7: ; $10:6BD7
	ld hl,$620E
	ld bc,$1A0
	jp Function183

Function42BE0: ; $10:6BE0
	ld b,0
	ld e,b
	ld d,b
	ld c,1
	call $6E04
	call $6E1C
	call Function1C5
	call Function1D1
	call $6568
	ld de,$9800
	ld hl,TitleScreenTilemap
	call $6E3D
	jp $6C0E

INCBIN "base5.gb",$42C01,$44000-$42C01

SECTION "bank11",ROMX,BANK[$11]
INCBIN "base5.gb",$44000,$4000

SECTION "bank12",ROMX,BANK[$12]
INCBIN "base5.gb",$48000,$10 ; "Program bank 12"

Function48010:
	jp $4b58

Function48013:
	jp $518a

Function48016:
	jp $56f3

Function48019:
	jp $597b

Function4801C:
	jp $5bea

Function5801F:
	jp $5f66

Function58022:
	jp $64b9

Function58025:
	jp $6761

Function58028:
	jp $6912

Function5802B:
	jp $6d25

Function5802E:
	jp $7011

INCBIN "base5.gb",$48031,$4c000-$48031

SECTION "bank13",ROMX,BANK[$13]
INCBIN "base5.gb",$4C000,$10 ; "Program bank 13"
INCBIN "base5.gb",$4C010,$50000-$4C010

SECTION "bank14",ROMX,BANK[$14]
INCBIN "base5.gb",$50000,$10 ; "Program bank 14"

Function50010:
	jp $61f1

Function50013:
	jp $6512

Function50016:
	ld [$CF7B],a
	ld a,$D4
	ld [$CF86],a
	ld a,$3C
	ld [$DE88],a
	ld a,2
	ld [$CF7C],a
	xor a
	ld [$CF7D],a
	ld [$CF7E],a
	ld de,Function50063
	ld hl,$CF7F
	ld [hl],e
	inc hl
	ld [hl],d
	inc hl
	ld [hl],BANK(Function50063)
	call Function2D3
	xor a
	ld [$DE88],a
	ret

Function50043:
	ld a,$80
	jp Function50016

Function50048:
	ld a,1
	ld [$CCA6],a
	ld b,0
	ld e,b
	ld d,b
	ld c,4
	call $41e0
	call $41fa
	ld a,$c9 ; ret?
	ld [$c0f0],a
	xor a
	ld [$DE2C],a
	ret

Function50063:
INCBIN "base5.gb",$50063,$54000-$50063

SECTION "bank15",ROMX,BANK[$15]
INCBIN "base5.gb",$54000,$10 ; "Program bank 15"

Function54010:
	jp $4cd8

Function54013:
	jp $53be

Function54016:
	jp $58ac

Function54019:
	jp $5d58

Function5401C:
INCBIN "base5.gb",$5401C,$58000-$5401C

SECTION "bank16",ROMX,BANK[$16]
INCBIN "base5.gb",$58000,$10 ; "Program bank 16"

INCBIN "base5.gb",$58010,$584B7-$58010

TextPointers: ; $16:44B7
	dw Text1
	dw Text2
	dw Text3
	dw Text4
	dw Text5
	dw Text6
	dw Text7
	dw Text8
	dw Text9
	dw Text10
	dw Text11
	dw Text12
	dw Text13
	dw Text14
	dw Text15
	dw Text16
	dw Text17
	dw Text18
	dw Text19
	dw Text20
	dw Text21
	dw Text22
	dw Text23
	dw Text24
	dw Text25
	dw Text26
	dw Text27
	dw Text28
	dw Text29
	dw Text30
	dw Text31
	dw Text32
	dw Text33
	dw Text34
	dw Text35
	dw Text36
	dw Text37
	dw Text38
	dw Text39
	dw Text40
	dw Text42
	dw Text43
	dw Text44
	dw Text45
	dw Text47
	dw Text48
	dw Text49
	dw Text50
	dw Text51
	dw Text53
	dw Text54
	dw Text41
	dw Text46
	dw Text55
	dw Text56
	dw Text57
	dw Text58
	dw Text59
	dw Text60
	dw Text52

Text1:
	db "MEGAMAN,",$FB,$3C," OUR",$FE
	db "WORLD IS ONCE",$F7,$FD
	db "AGAIN IN CHAOS.",$FE,$FB,$3C
	db "THE ALIEN ROBOTS",$F7,$FD
	db "CALL THEMSELVES",$FE
	db "\"STARDROIDS\" AND",$F7,$FD
	db "HAVE CONQUERED",$FE
	db "MOST OUR MAJOR",$F7,$FD
	db "CITIES.",$FE
	db $FB,$3C,"THEY ARE",$F7,$FD
	db "CONSTRUCTED OF",$FE
	db "ALIEN MATERIAL",$F7,$FD
	db "WHICH RENDER OUR",$FE
	db "WEAPONS USELESS.",$F7
	db 0

Text2:
	db "BUT, I HAVE DONE",$FE
	db "SOME ANALYSIS",$F7,$FD
	db "AND CONSTRUCTED",$FE
	db "A NEW WEAPON FOR",$F7,$FD
	db "YOU.  ",$FB,$3C,"IT WILL",$FE
	db "REPLACE YOUR",$F7,$FD
	db "SUPER MEGA",$FE
	db "BUSTER.",$F7
	db 0

Text3:
	db "OH, MEGAMAN!",$FE
	db $FB,$3C,"DID YOU BRING",$F7,$FD
	db "BACK THE",$FE
	db "P CHIPS?",$F7
	db 0

Text4:
	db "SELECT THE ITEM",$FE
	db "YOU WANT.",$F4

Text5:
	db "COLLECT 4 OF",$FE
	db "THESE AND YOU",$F7,$FD
	db "WILL EARN A",$FE
	db "E TANK.",$F7
	db 0

Text6:
	db "YOU CAN TOTALLY",$FE
	db "RECHARGE ONE OF",$F7,$FD
	db "YOUR WEAPONS",$FE
	db "WITH THIS ITEM.",$F7
	db 0

Text7:
	db "YOU CAN TOTALLY",$FE
	db "RECHARGE YOUR",$F7,$FD
	db "ENERGY LEVEL",$FE
	db "WITH THIS ITEM.",$F7
	db 0

Text8:
	db "YOU CAN TOTALLY",$FE
	db "RECHARGE YOUR",$F7,$FD
	db "ENERGY LEVEL AND",$FE
	db "ALL OF YOUR",$F7,$FD
	db "WEAPONS WITH",$FE
	db "THIS ITEM.",$F7
	db 0

Text9:
	db "EXTRA LIFE.",$F7
	db 0

Text10:
	db "WITH THIS ITEM,",$FE
	db "THE WEAPON WITH",$F7,$FD
	db "THE LEAST AMOUNT",$FE
	db "OF ENERGY WILL",$F7,$FD
	db "BE REFILLED",$FE
	db "AUTOMATICALLY",$F7,$FD
	db "WHEN YOU PICK UP",$FE
	db "AN WEAPON",$F7,$FD
	db "CAPSULE.",$F7
	db 0

Text11:
	db "ALL OF YOUR",$FE
	db "WEAPONS WILL BE",$F7,$FD
	db "IMMEDIATELY",$FE
	db "REFILLED.",$F7
	db 0

Text12:
	db "YOU CAN'T CARRY",$FE
	db "ANY MORE OF THAT",$F7,$FD
	db "ITEM.",$F7
	db 0

Text13:
	db "ALL OF YOUR",$FE
	db "WEAPONS ARE",$F7,$FD
	db "ALREADY FULL.",$F7
	db 0

Text14:
	db "YOU NEED ",$F5,$FE
	db "P CHIPS FOR THIS",$F7,$FD
	db "ITEM.",$F7
	db 0

Text15:
	db "DO YOU WANT",$FE
	db "THIS ITEM?",$F7,$FD
	db "THIS ITEM?",$FE
	db "   B=NO  A=YES",$F6
	db 0

Text16:
	db "YOU DON'T HAVE",$FE
	db "ENOUGH P CHIPS.",$F7
	db 0

Text17:
	db "SELECT THE ITEM",$FE
	db "YOU WANT.",$F4

Text18:
	db "ARE YOU",$FE
	db "FINISHED?",$F7,$FD
	db "FINISHED?",$FE
	db "   B=NO  A=YES",$F6
	db 0

Text19:
	db "GOOD LUCK,",$FE
	db "MEGAMAN!",$F7
	db 0

Text20:
	db "IT IS CALLED THE",$FE
	db "\"MEGA ARM\" AND",$F7,$FD
	db "IT ALLOWS YOU TO",$FE
	db "CHARGE ENERGY IN",$F7,$FD
	db "YOUR FIST BEFORE",$FE
	db "YOU FIRE IT.",$F7
	db 0

Text21:
	db "I HAVE ALSO",$FE
	db "CREATED A NEW",$F7,$FD
	db "ASSISTANT FOR",$FE
	db "YOU.  ",$FB,$3C,"HIS NAME",$F7,$FD
	db "IS \"TANGO\".",$F7
	db 0

Text22:
	db "I'LL ENHANCE",$FE
	db "THIS ITEM",$F7,$FD
	db "REPLICATOR TO",$FE
	db "MAKE POWERFUL",$F7,$FD
	db "ITEMS FOR YOU.",$FE
	db $FB,$3C,"COLLECT AS MANY",$F7,$FD
	db "P CHIPS AS",$FE
	db "POSSIBLE AND",$F7,$FD
	db "RETURN TO MY LAB",$FE
	db "TO EXCHANGE THEM",$F7,$FD
	db "FOR POWER-UP",$FE
	db "ITEMS.",$F7,$FD
	db "GOOD LUCK,",$FE
	db "MEGAMAN.",$F7
	db 0

Text23:
	db $F9,$78,"IN THE YEAR 20XX",$FE
	db "AD, THE WORLD IS",$FD
	db "AT PEACE THANKS",$FE
	db "TO MEGAMAN.",$FB,$F0,$F4
	db 0

Text24:
	db $F9,$5A,$FD,"DR. WILY'S",$FE
	db "FOURTH ATTEMPT",$FD
	db "AT WORLD",$FE
	db "DOMINATION HAS",$FD
	db "FAILED AND HIS",$FE
	db "NAME HAS ONCE",$FD
	db "AGAIN FADED FROM",$FE
	db "THE MINDS OF THE",$FD
	db "CITIZENS OF THE",$FE
	db "WORLD.",$FB,$3C,$FD
	db "A FEW MONTHS",$FE
	db "LATER...",$FB,$F,$F4
	db 0

Text25:
	db $F9,$78,"SO, YOU ARE THE",$FE
	db "FAMOUS MEGAMAN!",$FB,$78,$FD
	db "I AM TERRA - AND",$FE
	db "YOU WILL SOON BE",$FD
	db "MY SLAVE!",$FB,$78,$F4
	db 0

Text26:
	db $F9,$78,"WHAT?!  ",$FB,$3C,"MY MEGA",$FE
	db "BUSTER HAS NO",$FD
	db "EFFECT ON HIM...",$FB,$78,$F4
	db 0

Text27:
	db $F9,$78,"A FEW HOURS",$FE
	db "LATER, THE WORLD",$FD
	db "WAS ATTACKED BY",$FE
	db "WARRIOR ROBOTS",$FD
	db "FROM SPACE.",$FB,$B4,$F4
	db 0

Text28:
	db $F9,$78,"WHERE AM I?",$FB,$78,$F4
	db 0

Text29:
	db $F9,$78,"DR. LIGHT FOUND",$FE
	db "MEGAMAN AND",$FD
	db "EQUIPPED HIM",$FE
	db "WITH THE NEW",$FD
	db "\"MEGA ARM\".",$FE
	db "THE MOST",$FD
	db "POWERFUL WEAPON",$FE
	db "EVER DEVISED.",$FB,$78,$F4
	db 0

Text30:
	db $F9,$78,"WHY HAVE THE",$FE
	db "STARDROIDS COME",$FD
	db "HERE!?",$FB,$78,$F4
	db 0

Text31:
	db "THIS IS A",$FE
	db "POWER-UP ITEM",$F7,$FD
	db "FOR THE",$FE
	db "\"MEGA ARM\".",$F7,$FD
	db "ONCE INSTALLED,",$FE
	db "YOU CAN GRAB AN",$F7,$FD
	db "ITEM FROM FAR",$FE
	db "AWAY.",$F7
	db 0

Text32:
	db "THIS IS A",$FE
	db "POWER-UP ITEM",$F7,$FD
	db "FOR THE",$FE
	db "\"MEGA ARM\".",$F7,$FD
	db "ONCE INSTALLED,",$FE
	db "YOU CAN GRAB AND",$F7,$FD
	db "ATTACK THE ENEMY",$FE
	db "OVER AND OVER.",$F7
	db 0

Text33:
	db "THIS POWER",$FE
	db "GENERATOR WAS",$F7,$FD
	db "MADE FROM THE 4",$FE
	db "CRYSTALS YOU",$F7,$FD
	db "BROUGHT BACK.",$FE
	db $FB,$3C,"THE POWER",$F7,$FD
	db "GENERATOR WILL",$FE
	db "REDUCE THE",$F7,$FD
	db "AMOUNT OF ENERGY",$FE
	db "YOUR SPECIAL",$F7,$FD
	db "WEAPONS USE BY",$FE
	db "HALF.",$F7,$FD
	db "NO P CHIPS ARE",$FE
	db "REQUIRED FOR",$F7,$FD
	db "THIS ITEM, ONLY",$FE
	db "THE CRYSTALS.",$F7
	db 0

Text34:
	db "YOU CAN'T MAKE",$FE
	db "ANY MORE OF THIS",$F7,$FD
	db "ITEM.",$F7
	db 0

Text35:
	db "DR. LIGHT!!",$FE
	db $FB,$3C,"I FOUND THIS",$F7,$FD
	db "CRYSTAL ON THE",$FE
	db "PLANET!",$F7,$FD
	db "YOU BETTER",$FE
	db "ANALYZE IT.",$F7,$FD
	db "LET ME SEE...",$FB,$78,$F7,$FD
	db "WELL, THIS",$FE
	db "CRYSTAL SEEMS TO",$F7,$FD
	db "BE THE ENERGY",$FE
	db "SOURCE USED BY",$F7,$FD
	db "THAT PLANET'S",$FE
	db "ANCIENT",$F7,$FD
	db "CIVILIZATION.",$FE
	db $FB,$3C,"WITH 4 OF THESE,",$F7,$FD
	db "I CAN MAKE AN",$FE
	db "ITEM THAT WILL",$F7,$FD
	db "REDUCE THE",$FE
	db "ENERGY",$F7,$FD
	db "CONSUMPTION OF",$FE
	db "YOUR SPECIAL",$F7,$FD
	db "WEAPONS BY HALF.",$FE
	db $FB,$3C,"I ASSUME THERE",$F7,$FD
	db "ARE SIMILAR",$FE
	db "CRYSTALS LIKE",$F7,$FD
	db "THIS ON OTHER",$FE
	db "PLANETS TOO.",$F7,$FD
	db "COLLECT ALL FOUR",$FE
	db "CRYSTALS AND",$F7,$FD
	db "BRING THEM BACK",$FE
	db "TO THE LAB.",$F7,$FD
	db "GOOD LUCK!",$F7
	db 0

Text36:
	db $F9,$78,"THAT'S STRANGE..",$FE
	db $FB,$3C,"THERE'S NOTHING",$FD
	db "HERE.",$FB,$78,$F4
	db 0

Text37:
	db "IT'S BEEN A LONG",$FE
	db "TIME, ",$FB,$3C,"MEGAMAN!",$F7,$FD
	db "I DIDN'T EXPECT",$FE
	db "TO SEE YOU IN",$F7,$FD
	db "ONE PIECE AGAIN.",$FE
	db $FB,$3C,"BUT THAT IS OF",$F7,$FD
	db "LITTLE",$FE
	db "CONSEQUENCE NOW.",$F7,$FD
	db "I WILL DESTROY",$FE
	db "YOU AS I DID",$F7,$FD
	db "BEFORE AND",$FE
	db "AVENGE MY FALLEN",$F7,$FD
	db "COMRADES.",$F7,$FD
	db "DARK MOON,",$FE
	db $FB,$3C,"ATTACK!",$F7
	db 0

Text38:
	db "WELCOME BACK,",$FE
	db $FB,$1E,"MEGAMAN! ",$FB,$3C," I'VE",$F7,$FD
	db  "JUST DISCOVERED",$FE
	db "SOME SHOCKING",$F7,$FD
	db "NEWS.",$F7,$FD
	db "THE STARDROIDS",$FE
	db "HAVE BEEN USING",$F7,$FD
	db "THE RESOURCES",$FE
	db "FROM EARTH TO",$F7,$FD
	db "CREATE AN EVEN",$FE
	db "MORE POWERFUL",$F7,$FD
	db "GENERATION OF",$FE
	db "ROBOTS.  ",$FB,$3C,"IF THEY",$F7,$FD
	db "LAUNCH AN",$FE
	db "ALL-OUT ATTACK",$F7,$FD
	db "NOW, WE'LL BE",$FE
	db "EASILY DEFEATED.",$F7,$FD
	db "I'M NOT SURE",$FE
	db "WHAT TO DO.",$F7
	db 0

Text39:
	db "DR. LIGHT, ",$FB,$3C,"WE",$FE
	db "NEED TO STRIKE",$F7,$FD
	db "NOW!  ",$FB,$3C,"IF YOU CAN",$FE
	db "TRANSFORM RUSH",$F7,$FD
	db "FOR SPACE",$FE
	db "TRAVEL, WE CAN",$F7,$FD
	db "TRY A SURPRISE",$FE
	db "ATTACK AND WIPE",$F7,$FD
	db "THEM OUT.",$F7
	db 0

Text40:
	db $31,$31,$31,$31,$31,$FE
	db 0

Text41:
	db "OK.  ",$FB,$3C,"I'LL START",$FE
	db "MODIFYING RUSH",$F7,$FD
	db "AND GIVE HIM",$FE
	db "SOME EXTRA",$F7,$FD
	db "FIREPOWER.  ",$FB,$3C,"THIS",$FE
	db "MAY TAKE SOME",$F7,$FD
	db "TIME, SO WHY",$FE
	db "DON'T YOU GO",$F7,$FD
	db "EXCHANGE YOUR",$FE
	db "P CHIPS FOR",$F7,$FD
	db "ITEMS.",$F7
	db 0

Text42:
	db $F9,$78,"I SHOULD HAVE",$FE
	db "DEFEATED ALL THE",$FD
	db "STARDROIDS.",$F4
	db 0

Text43:
	db "WHAT?  ",$FB,$3C,"WHAT'S",$FE
	db "THAT STAR?...",$F4
	db 0

Text44:
	db $F9,$78,"WAIT...",$FE
	db $FB,$78,"IT'S MOVING...",$FD
	db "NO!",$FE
	db $FB,$78,"IT CAN'T BE!",$F4
	db 0

Text45:
	db "WILY?!",$FB,$78,$F4
	db 0

Text46:
	db "IS HE BEHIND",$FE
	db "THIS?!",$F4
	db 0

Text47:
	db "OOPS!  ",$FB,$78,"THAT WAS",$FE
	db "CLOSE!",$F4
	db 0

Text48:
	db $F9,$78,"HIT THE JETS,",$FE
	db "RUSH!  ",$FB,$3C,"LET'S GO!",$F4
	db 0

Text49:
	db "ARE YOU OK?",$FE
	db $FB,$78,"HERE, GRAB MY",$F7,$FD
	db "SHOULDER.  ",$FB,$3C,"I'M",$FE
	db "SURE YOU CAN BE",$F7,$FD
	db "FIXED AT",$FE
	db "DR. LIGHT'S LAB.",$F7,$FD
	db "MEGAMAN...  ",$FB,$32,"WHY?",$FB,$5A,$F7,$FD
	db "WHY ARE YOU",$FE
	db "HELPING ME?",$F7,$FD
	db "BECAUSE WE ARE",$FE
	db "BOTH ROBOTS.",$F7,$FD
	db "YES.  ",$FB,$3C,"AND WE",$FE
	db "WERE BOTH",$F7,$FD
	db "CREATED TO",$FE
	db "FIGHT!",$F7
	db 0

Text50:
	db "NO, ",$FB,$3C,"YOU'RE",$FE
	db "WRONG!  ",$FB,$3C,"I ONLY",$F7,$FD
	db "FIGHT WHEN I AM",$FE
	db "FORCED TO",$F7,$FD
	db "PROTECT THE",$FE
	db "WORLD FROM THOSE",$F7,$FD
	db "WHO WOULD PIT",$FE
	db "MACHINES AGAINST",$F7,$FD
	db "MAN.  ",$FB,$3C,"I BELIEVE",$FE
	db "HUMANS AND",$F7,$FD
	db "ROBOTS CAN LIVE",$FE
	db "IN PEACE!",$F7,$FD
	db "MAYBE... ",$FB,$3C,"BUT I",$FE
	db "WILL NEVER KNOW.",$F7,$FD
	db "MY FUSION",$FE
	db "REACTOR IS GOING",$F7,$FD
	db "CRITICAL AND",$FE
	db "WHEN IT DOES, IT",$F7,$FD
	db "WILL DESTROY",$FE
	db "THIS ENTIRE",$F7,$FD
	db "FORTRESS.",$F7,$FD
	db "SUNSTAR...",$FB,$3C,$F7,$FD
	db "LEAVE NOW!",$FB,$3C,$F7
	db 0

Text51:
	db $F9,$78,"WILY!",$FE
	db $FB,$78,"YOU SURVIVED?!",$FB,$78,$F4
	db 0

Text52:
	db $F9,$78,"CURSE YOU,",$FE
	db $FB,$78,"MEGAMAN!",$FD
	db "THIS WAR",$FE
	db "ENDS NOW!",$FB,$78,$F4
	db 0

Text53:
	db "MEGAMAN,",$FE
	db $FB,$3C,"WELCOME HOME!",$F7,$FD
	db "I HAVE JUST",$FE
	db "COMPLETED",$F7,$FD
	db "THE TURBO",$FE
	db "ACCELERATOR FOR",$F7,$FD
	db "YOUR \"MEGA ARM\".",$F7
	db 0

Text54:
	db "OK.",$F7,$FD
	db "IT'S FUNCTIONING",$FE
	db "PERFECTLY.",$F7,$FD
	db "GOOD LUCK,",$FE
	db "MEGAMAN!",$F7
	db 0

Text55:
	db "I FINALLY",$FE
	db "DESTROYED ALL",$F7,$FD
	db "THE SPACE",$FE
	db "STATIONS!",$F7
	db 0

Text56:
	db "YOU FOOL",$FE
	db "MEGAMAN!",$F7,$FD
	db "YOU HAVE METTLED",$FE
	db "WITH MY PLAN FOR",$F7,$FD
	db "THE LAST TIME.",$F7,$FD
	db "WE COULD HAVE",$FE
	db "CREATED A NEW",$F7,$FD
	db "WORLD FOR ALL",$FE
	db "ROBOTS!  ",$FB,$3C,"HOW CAN",$F7,$FD
	db "I FACE MY MASTER",$FE
	db "NOW?  ",$FB,$3C,"I MUST",$F7,$FD
	db "REDEEM MYSELF BY",$FE
	db "BLOWING YOU TO",$F7,$FD
	db "PIECES!",$F7
	db 0

Text57:
	db $F9,$78,"BEHOLD MEGAMAN,",$FE
	db $FB,$3C,"I HAVE AWAKENED",$FD
	db "THE ANCIENT",$FE
	db "WEAPON SUNSTAR!",$FD
	db "ITS NOVA WEAPON",$FE
	db "WILL DESTROY",$FD
	db "YOU!",$FB,$78,$F4
	db 0

Text58:
	db "SUNSTAR, ",$FB,$3C,"DESTROY",$FE
	db "MEGAMAN!",$FB,$78,$F4
	db 0

Text59:
	db $F9,$78,"WHAT?!?",$FE
	db $FB,$5A,"YOU FOOL!",$FD
	db "HOW DARE YOU",$FE
	db "ATTACK THE",$FD
	db "MIGHTY DR. WILY!",$FB,$78,$F4
	db 0

Text60:
	db $F9,$78,"YOU ARE...",$FE
	db $FB,$5A,"MEGAMAN...",$FD
	db "I AM SUNSTAR...",$FD
	db "THE DOOMSDAY",$FE
	db "WEAPON...",$FD
	db "I MUST DESTROY",$FE
	db "ALL INFERIOR",$FD
	db "LIFE FORMS!",$FB,$78,$F4
	db 0

INCBIN "base5.gb",$59A73,$5C000-$59A73

SECTION "bank17",ROMX,BANK[$17]
Function5C000:
	jp $4416

Function5C003:
	jp $433d

Function5C006:
	jp $4ccb

Function5C009:
	jp Function5C00C

Function5C00C:
	ret

Pointers5C00D:
	dw $410b
	dw $410f
	dw $4113
	dw $4117
	dw $411b
	dw $4121
	dw $4125
	dw $412b
	dw $4131
	dw $4137
	dw $410b
	dw $41ab
	dw $41b5
	dw $413d
	dw $4141
	dw $4145
	dw $4149
	dw $414d
	dw $4151
	dw $4155
	dw $415b
	dw $415f
	dw $4163
	dw $4167
	dw $416b
	dw $4171
	dw $4175
	dw $4179
	dw $417d
	dw $4181
	dw $4185
	dw $4189
	dw $418d
	dw $4191
	dw $4195
	dw $419b
	dw $41a1
	dw $41a5
	dw $41bf
	dw $41c7
	dw $41cb
	dw $41cf
	dw $41d5
	dw $41d9
	dw $41df
	dw $41e5
	dw $41ef
	dw $41f3
	dw $41f7
	dw $41fb
	dw $41ff
	dw $4209
	dw $4203
	dw $421d
	dw $4221
	dw $4219
	dw $4229
	dw $422d
	dw $41c3
	dw $4245
	dw $4231
	dw $4235
	dw $4239
	dw $423d
	dw $4241
	dw $4265
	dw $426b
	dw $4273
	dw $427b
	dw $4281
	dw $4285
	dw $4277
	dw $4125
	dw $4125
	dw $4125
	dw $4125
	dw $4249
	dw $424d
	dw $4251
	dw $4255
	dw $4259
	dw $425d
	dw $4261
	dw $4125
	dw $4125
	dw $4125
	dw $4125
	dw $4125
	dw $4125
	dw 0
	dw $4125
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw $4125
	dw $4125
	dw $4125
	dw $4125
	dw 0
	dw $4289
	dw $4293
	dw $429d
	dw $42a7
	dw $42b1
	dw $42bb
	dw $42c5
	dw $431f
	dw $4329
	dw $42cf
	dw $42d9
	dw $42e3
	dw $42ed
	dw $42f7
	dw $4301
	dw $430b
	dw $4315
	dw $4333

INCBIN "base5.gb",$5C10B,$60000-$5C10B

SECTION "bank18",ROMX,BANK[$18]
INCBIN "base5.gb",$60000,$10 ; "Program bank 18"

INCBIN "base5.gb",$60010,$64000-$60010

SECTION "bank19",ROMX,BANK[$19]
INCBIN "base5.gb",$64000,$10 ; "Program bank 19"

Function64010:
	jp $41aa

Function64013:
	jp $45c0

Function64016:
	inc hl
	xor a
	ld [hli],a
	ld [hl],a
	ret

INCBIN "base5.gb",$6401b,$68000-$6401b

SECTION "bank1A",ROMX,BANK[$1A]
INCBIN "base5.gb",$68000,$10 ; "Program bank 1A"

Function68010:
	jp $40b4

INCBIN "base5.gb",$68013,$6c000-$68013

SECTION "bank1B",ROMX,BANK[$1B]
INCBIN "base5.gb",$6C000,$10 ; "Program bank 1B"

Function6C010:
	jp $437b

INCBIN "base5.gb",$6C013,$70000-$6C013

SECTION "bank1C",ROMX,BANK[$1C]
INCBIN "base5.gb",$70000,$10 ; "Program bank 1C"

Function70010:
	jp $420e

Function70013:
	jp $4a6c

Function70016:
	jp $4c7d

INCBIN "base5.gb",$70019,$74000-$70019

SECTION "bank1D",ROMX,BANK[$1D]
INCBIN "base5.gb",$74000,$10 ; "Program bank 1D"

Function74010:
	jp $4b15

Function74013:
	jp $4e51

Function74016:
	jp $5236

Function74019:
	jp $5353

Function7401C:
	jp $561e

Function7401F:
	jp $5B28

Function74022:
	jp $5e63

Function74025:
	jp $62b2

Function74028:
	jp $6820

Function7402B:
	jp $6b77

Function7402E:
	jp $6e7c

Function74031:
	jp $7286

Function74034:
	jp $7729

Function74037:
	jp $78ea

Function7403A:
	jp $7ae8

Function7403D:
	jp $7d3e

INCBIN "base5.gb",$74040,$78000-$74040

SECTION "bank1E",ROMX,BANK[$1E]
INCBIN "base5.gb",$78000,$10 ; "Program bank 1E"

Pointers78010:
	dw $4321
	dw $45e4
	dw $4aba
	dw $4e3d
	dw $4967

Function7801A:
	jp $5625

Function7801D:
	jp $729f

Function78020:
	jp $4023

INCBIN "base5.gb",$78023,$7c000-$78023

SECTION "bank1F",ROMX,BANK[$1F]
INCBIN "base5.gb",$7C000,$10 ; "Program bank 1F"

INCBIN "base5.gb",$7C010,$80000-$7C010
