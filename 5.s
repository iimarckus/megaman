include "text.charmap"

bankswitch: MACRO
	rst $20
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
	ld hl, $038b
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

INCBIN "base5.gb",$38B,$4FA-$38B

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

INCBIN "base5.gb",$1A7D,$4000-$1A7D

SECTION "bank1",ROMX,BANK[$1]
INCBIN "base5.gb",$4000,$4AE1-$4000

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

INCBIN "base5.gb",$4BBB,$8000-$4BBB

SECTION "bank2",ROMX,BANK[$2]
INCBIN "base5.gb",$8000,$4000

SECTION "bank3",ROMX,BANK[$3]
INCBIN "base5.gb",$C000,$4000

SECTION "bank4",ROMX,BANK[$4]
INCBIN "base5.gb",$10000,$4000

SECTION "bank5",ROMX,BANK[$5]
INCBIN "base5.gb",$14000,$4000

SECTION "bank6",ROMX,BANK[$6]
INCBIN "base5.gb",$18000,$4000

SECTION "bank7",ROMX,BANK[$7]
INCBIN "base5.gb",$1C000,$4000

SECTION "bank8",ROMX,BANK[$8]
INCBIN "base5.gb",$20000,$4000

SECTION "bank9",ROMX,BANK[$9]
INCBIN "base5.gb",$24000,$4000

SECTION "bankA",ROMX,BANK[$A]
INCBIN "base5.gb",$28000,$4000

SECTION "bankB",ROMX,BANK[$B]
INCBIN "base5.gb",$2C000,$4000

SECTION "bankC",ROMX,BANK[$C]
INCBIN "base5.gb",$30000,$4000

SECTION "bankD",ROMX,BANK[$D]
INCBIN "base5.gb",$34000,$4000

SECTION "bankE",ROMX,BANK[$E]
INCBIN "base5.gb",$38000,$4000

SECTION "bankF",ROMX,BANK[$F]
INCBIN "base5.gb",$3C000,$4000

SECTION "bank10",ROMX,BANK[$10]
INCBIN "base5.gb",$40000,$1FFE

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
INCBIN "base5.gb",$48000,$4000

SECTION "bank13",ROMX,BANK[$13]
INCBIN "base5.gb",$4C000,$4000

SECTION "bank14",ROMX,BANK[$14]
INCBIN "base5.gb",$50000,$4000

SECTION "bank15",ROMX,BANK[$15]
INCBIN "base5.gb",$54000,$4000

SECTION "bank16",ROMX,BANK[$16]
INCBIN "base5.gb",$58000,$584B7-$58000

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
INCBIN "base5.gb",$5C000,$4000

SECTION "bank18",ROMX,BANK[$18]
INCBIN "base5.gb",$60000,$4000

SECTION "bank19",ROMX,BANK[$19]
INCBIN "base5.gb",$64000,$4000

SECTION "bank1A",ROMX,BANK[$1A]
INCBIN "base5.gb",$68000,$4000

SECTION "bank1B",ROMX,BANK[$1B]
INCBIN "base5.gb",$6C000,$4000

SECTION "bank1C",ROMX,BANK[$1C]
INCBIN "base5.gb",$70000,$4000

SECTION "bank1D",ROMX,BANK[$1D]
INCBIN "base5.gb",$74000,$4000

SECTION "bank1E",ROMX,BANK[$1E]
INCBIN "base5.gb",$78000,$4000

SECTION "bank1F",ROMX,BANK[$1F]
INCBIN "base5.gb",$7C000,$4000
