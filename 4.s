include "text.charmap"

bankswitch: MACRO
	rst $20
ENDM

; $DF3D is the number of P chips

SECTION "func0",ROM0[0]
Func0:
	di
	ld sp,$FFFE
	jp Function150

SECTION "func8",ROM0[8]
Func8:
	ld a,l
	ld [$CF78],a
	ld a,h
	jp $915

SECTION "func10",ROM0[$10]
Func10:
	ld [$CF7A],a
	ld a,l
	jp $31E

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

SECTION "vblank",ROM0[$40]
	jp $486

SECTION "lcdc",ROM0[$48]
	jp $74B
	db $01,$1D,$FF

SECTION "timer",ROM0[$50]
	reti

SECTION "serial",ROM0[$58]
	reti

SECTION "joypad",ROM0[$60]
	reti

	db $01,$02,$04,$08,$10,$20,$40,$80
	db 0,0,0,0,0,0
	db $11,$FF,$80,$00

SECTION "unknownhome",ROM0[$D0]
INCBIN "base4.gb",$D0,$30

SECTION "header",ROM0[$100]
	nop
	jp $3F4D

SECTION "start",ROM0[$150]

Function150:
	jp Function472
Function153:
	jp $2233
Function156:
	jp $3D2C
Function159:
	jp $3D38
Function15C:
	jp $2D8E
Function15F:
	jp $2D96
Function162:
	jp $03CD
Function165:
	jp $0E1A
Function168:
	jp $196A
Function16B:
	jp $18AB
Function16E:
	jp $1BD3
Function171:
	jp $1BDE
Function174:
	jp $1932
Copy8: ; $177
	jp Function18D0
Copy4: ; $17A
	jp Function18DC
Copy2: ; $17D
	jp Function18E2
Function180:
	jp Function18F6
Function183:
	jp $1B0D
Function186:
	jp $1A81
Function189:
	jp $1AE9
Function18C:
	jp $0000
Function18F:
	jp $2598
Function192:
	jp $25B3
Function195:
	jp $2568
Function198:
	jp $25A9
Function19B:
	jp $2E96
Function19E:
	jp $32EB
Function1A1:
	jp $32FE
Function1A4:
	jp $322D
Function1A7:
	jp $3263
Function1AA:
	jp $2F54
Function1AD:
	jp $2CCE
Function1B0:
	jp $2CDA
Function1B3:
	jp $2CE9
Function1B6:
	jp $2BE8
Function1B9:
	jp $32DC
Function1BC:
	jp $0ED3
Function1BF:
	jp $3BCF
Function1C2:
	jp $1D0B
Function1C5:
	jp $1879
Function1C8:
	jp $175F
Function1CB:
	jp $0348
Function1CE:
	jp $1D1C
Function1D1:
	jp $3370
Function1D4:
	jp $1D33
Function1D7:
	jp $2BCE
Function1DA:
	jp $2BE0
Function1DD:
	jp $2C03
Function1E0:
	jp $2C11
Function1E3:
	jp $2C21
Function1E6:
	jp $2CF7
Function1E9:
	jp $2CFB
Function1EC:
	jp $1BEC
Function1EF:
	jp $2D01
Function1F2:
	jp $2D12
Function1F5:
	jp $041D
Function1F8:
	jp $2D25
Function1FB:
	jp $2D2D
Function1FE:
	jp $2CC2
Function201:
	jp $2CA9
Function204:
	jp $2CB3
Function207:
	jp $21A4
Function20A:
	jp $21A4
Function20D:
	jp $2162
Function210:
	jp $3325
Function213:
	jp $1BFA
Function216:
	jp $0F9C
Function219:
	jp $2563
Function21C:
	jp $2D81
Function21F:
	jp $109B
Function222:
	jp $0923
Function225:
	jp $08F0
Function228:
	jp $1E49
Function22B:
	jp $1E49
Function22E:
	jp $1EA4
Function231:
	jp $1FC5
Function234:
	jp $1ED0
Function237:
	jp $1ED0
Function23A:
	jp $0BBB
Function23D:
	jp $1FF4
Function240:
	jp $204B
Function243:
	jp $183E
Function246:
	jp $03B8
Function249:
	jp $1081
Function24C:
	jp $3AB3
Function24F:
	jp $3A90
Function252:
	jp $3B3F
Function255:
	jp $1C35
Function258:
	jp $2DE6
Function25B:
	jp $2E09
Function25E:
	jp $1CE1
Function261:
	jp $1CF7
Function264:
	jp $0435
Function267:
	jp $2E7A
Function26A:
	jp $1D11
Function26D:
	jp $0FCA
Function270:
	jp $1034
Function273:
	jp $1046
Function276:
	jp $2B65
Function279:
	jp $17DB
Function27C:
	jp $1051
Function27F:
	jp $1275
Function282:
	jp $1306
Function285:
	jp $03E5
Function288:
	jp $0F2B
Function28B:
	jp $2F20
Function28E:
	jp $193D
Function291:
	jp $1800
Function294:
	jp $1828
Function297:
	jp $17F2
Function29A:
	jp $0411
Function29D:
	jp $040D
Function2A0:
	jp $0C89
Function2A3:
	jp $0C90
Function2A6:
	jp $25A9
Function2A9:
	jp Function47C
Function2AC:
	jp $03A9
Function2AF:
	jp $03A0
Function2B2:
	jp $03B4
Function2B5:
	jp $045D
Function2B8:
	jp $0555
Function2BB:
	jp $0578
Function2BE:
	jp $0467
Function2C1:
	jp $3DD8
Function2C4:
	jp $09D1
Function2C7:
	jp $0421
Function2CA:
	jp $0449
Function2CD:
	jp $0409
Function2D0:
	jp $042D
Function2D3:
	jp $0441
Function2D6:
	jp $046E
Function2D9:
	jp $0445
Function2DC:
	jp $0459
Function2DF:
	jp $02EE
Function2E2:
	jp $02F2
Function2E5:
	jp $02FA
Function2E8:
	jp $0302
Function2EB:
	jp $030A

INCBIN "base4.gb",$2EE,$472-$2EE

Function472: ; $472
	di
	ld sp,$FFFE
	ld a,1
	bankswitch
	jp $4000

Function47C: ; $47C
	di
	ld sp,$FFFE
	ld a,1
	bankswitch
	jp $401C

INCBIN "base4.gb",$486,$CAD-$486

InitializeLives: ; $CAD
	ld a,3
	ld [$DF34],a
	call $C2D
	xor a
	ld [$DEAB],a
	ld [$DEE4],a
	jp $4496

INCBIN "base4.gb",$CBF,$18D0-$CBF

Function18D0: ; $18D0
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
Function18DC: ; $18DC
	ld a,[de]
	inc de
	ld [hli],a
	ld a,[de]
	inc de
	ld [hli],a
Function18E2: ; $18E2
	ld a,[de]
	inc de
	ld [hli],a
	ld a,[de]
	inc de
	ld [hli],a
	ret

Function18E9: ; $18E9
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

Function18F6: ; $18F6
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

Function1901: ; $1901
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

INCBIN "base4.gb",$1932,$4000-$1932

SECTION "bank1",ROMX,BANK[$1]
INCBIN "base4.gb",$4000,$4A1F-$4000

Function4A1F:
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
	ld hl,$DEAE
	jr .heal

.bigweap
	ld d,10
	jr .weapaddress
.littleweap
	ld d,2
.weapaddress
	ld a,[$DEAB] ; current weapon
	or a
	jr z,.nomoreheal ; can't heal the buster
	add $AE ; $DEAE & $FF???
	ld l,a
	ld h,$DE ; $DEAE >> 8???
	ld a,[hl]
	cp $98
	jr nc,.nomoreheal
.heal
	ld a,d
	ld [$D4C4],a
	ld a,l
	ld [$D4C2],a
	ld a,h
	ld [$D4C3],a
	ld hl,$DEBF
	set 1,[hl]
	xor a
	ld [$D4C1],a
	jr .next
	ld hl,$D4C1
	inc [hl]
	ld a,[hl]
	cp 4
	ret c
	xor a
	ld [hl],a
.next
	ld hl,$D4C4
	ld a,[hl]
	or a
	jr z,.next2
	dec [hl]
	ld hl,$D4C2
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
	ld hl,$DEBF
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
	ld hl,$DEAF
	ld a,[$DEAC]
	ld e,a
	ld a,[$DEAD]
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
	jp $4A4F

	ld hl,$D40B
	ld a,[hl]
	or a
	ret z
	ld [hl],0
	ld b,a
	ld l,0
.next6
	ld a,[hli]
	ld c, l
	push bc
	add $a
	ld l,a
	ld a,[hl]
	ld [hl],$40
	call $3263
	ld h,$D4
	pop bc
	ld l,c
	dec b
	jr nz,.next6

	ret

INCBIN "base4.gb",$4AF9,$8000-$4AF9

SECTION "bank2",ROMX,BANK[$2]
Function8000:
	jp $4491
Function8003:
	jp $43b8
Function8006:
	jp $4d43
Function8009:
	jp Function800C
Function800C:
INCBIN "base4.gb",$800c,$c000-$800c

SECTION "bank3",ROMX,BANK[$3]
FunctionC000:
	jp $474f
FunctionC003:
	jp $47ed
FunctionC006:
	jp $4b95
FunctionC009:
	jp $4f99
FunctionC00C:
	jp $5986
FunctionC00F:
	jp $5487
FunctionC012:
	jp $5ead
FunctionC015:
	jp $630f
FunctionC018:
	jp $6981
FunctionC01B:
	jp $70a5
INCBIN "base4.gb",$C01E,$10000-$C01E

SECTION "bank4",ROMX,BANK[$4]
Function10000:
	jp $4080
Function10003:
	jp $4098
Function10006:
	jp $55ef
Function10009:
	jp $56db
Function1000C:
	jp $408c
Function1000F:
	jp $58d8
Function10012:
	jp $58dc
Function10015:
	jp $5b04

INCBIN "base4.gb",$10018,$14000-$10018

SECTION "bank5",ROMX,BANK[$5]
Function14000:
	jp $4547
INCBIN "base4.gb",$14003,$18000-$14003

SECTION "bank6",ROMX,BANK[$6]
INCBIN "base4.gb",$18000,$4000

SECTION "bank7",ROMX,BANK[$7]
INCBIN "base4.gb",$1C000,$4000

SECTION "bank8",ROMX,BANK[$8]
INCBIN "base4.gb",$20000,$4000

SECTION "bank9",ROMX,BANK[$9]
Function24000:
	jp $768d
Function24003:
	jp $4597
Function24006:
	jp $486d
Function24009:
	jp $4beb
Function2400C:
	jp $4ebb
Function2400F:
	jp $52a0
Function24012:
	jp $56d6
Function24015:
	jp $5791
Function24018:
	jp $5a7b
Function2401B:
	jp $5be5
Function2401E:
	jp $5ee1
Function24021:
	jp $6d23
Function24024:
	jp $6e5f
Function24027:
	jp $6f29
Function2402A:
	jp $7001
Function2402D:
	jp $7275
Function24030:
	jp $749d
Function24033:
	jp $644f
Function24036:
	jp $665e
INCBIN "base4.gb",$24039,$28000-$24039

SECTION "bankA",ROMX,BANK[$A]
INCBIN "base4.gb",$28000,$4000

SECTION "bankB",ROMX,BANK[$B]
Function2C000:
	jp Function2C00C
Function2C003:
	jp $4604
Function2C006:
	jp $4b63
Function2C009:
	jp $547e
Function2C00C:
	call $4149
	ld a,$1C
	jp Function2A0

INCBIN "base4.gb",$2C014,$30000-$2C014

SECTION "bankC",ROMX,BANK[$C]
INCBIN "base4.gb",$30000,$4000

SECTION "bankD",ROMX,BANK[$D]
Function34000:
	jp $4F14
Function34003:
	jp $4FCF
Function34006:
	jp $6007
Function34009:
	jp $4C84
Function3400C:
	jp $4A47
Function3400F:
	jp $49B8
Function34012:
	jp $7EE5
Function34015:
	jp $4E69
Function34018:
	jp $5066
Function3401B:
	jp $52F3
Function3401E:
	jp $5606
Function34021:
	jp $5A66
Function34024:
	jp $5793
Function34027:
	jp $5B52
Function3402A:
	jp $5CCF
Function3402D:
	jp $5EB7
Function34030:
	jp $61BD
Function34033:
	jp $638F
Function34036:
	jp $665D
Function34039:
	jp $6989
Function3403C:
	jp $6CE0
Function3403F:
	jp $7032
Function34042:
	jp $7329
Function34045:
	jp $7627
Function34048:
	jp $79A1
Function3404B:
	jp $7BD7
Function3404E:
	jp $7E5B
INCBIN "base4.gb",$34051,$38000-$34051

SECTION "bankE",ROMX,BANK[$E]
Function38000:
	jp $4902
Function38003:
	jp $4a56
Function38006:
	jp $4db2
Function38009:
	jp $4fec
Function3800C:
	jp $51ad
Function3800F:
	jp $53ef
Function38012:
	jp $5515
Function38015:
	jp $5672
Function38018:
	jp $58b8
Function3801B:
	jp $5a56
Function3801E:
	jp $5cc3
Function38021:
	jp $5e83
Function38024:
	jp $62d6
Function38027:
	jp $640d
INCBIN "base4.gb",$3802A,$3C000-$3802A

SECTION "bankF",ROMX,BANK[$F]
Function3C000:
	jp $53eb
Function3C003:
	jp $51c0
Function3C006:
	jp $5182
Function3C009:
	jp $5206
Function3C00C:
	jp $402E
Function3C00F:
	jp $5622
INCBIN "base4.gb",$3C012,$40000-$3C012

SECTION "bank10",ROMX,BANK[$10]
INCBIN "base4.gb",$40000,$10 ; "Program bank 10"

Function40010:
	jp $4c62
Function40013:
	jp $4c59
Function40016:
	jp $4e02
Function40019:
	jp $793c
Function4001C:
	jp $4026
Function4001F:
	jp $4025
Function40022:
	jp $7cce
Function40025:
	ret
Function40026:
	ld hl,$4180
	ld a,b
	and $F
	cp $A
	jr c,.next
	sub $A
	ld hl,$4290
.next
	swap a
	add a,l
	ld l,a
	ld a,0
	adc a,h
	ld h,a
	ld bc,$10
	jp Function183

INCBIN "base4.gb",$40043,$40080-$40043

TitleScreenTextTiles: ; $10:4080
incbin "base4.gb",$40080, $400
EndTitleScreenTextTiles:

TitleScreenTilemap: ; $10:4480
incbin "base4.gb",$40480,$80

INCBIN "base4.gb",$40500,$405EA-$40500

Function405EA: ; $10:45EA
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

TitleScreenArrowTile: ; $10:4619
	db $00,$00,$40,$40,$60,$60,$70,$50,$78,$48,$70,$50,$60,$60,$40,$40
EndTitleScreenArrowTile:

TitleScreenLogoTiles: ; $10:4629
incbin "base4.gb",$40629,$630
EndTitleScreenLogoTiles:

Function40C59: ; $10:4C59
	ld hl,$4290
	ld bc,$1A0
	jp $183

Function40C62: ; $10:4C62
	ld b,0
	ld e,b
	ld d,b
	ld c,1
	call $4DC1
	call $4DD9
	call $1C5
	call $1D1
	call $45EA
	ld de,$9800
	ld hl,TitleScreenTilemap
	call $4DE1
	jp $4C8E

INCBIN "base4.gb",$40C83,$44000-$40C83

SECTION "bank11",ROMX,BANK[$11]
INCBIN "base4.gb",$44000,$10 ; "Program bank 11"
INCBIN "base4.gb",$44010,$48000-$44010

SECTION "bank12",ROMX,BANK[$12]
INCBIN "base4.gb",$48000,$10 ; "Program bank 12"
INCBIN "base4.gb",$48010,$4C000-$48010

SECTION "bank13",ROMX,BANK[$13]
INCBIN "base4.gb",$4C000,$10 ; "Program bank 13"
Function4C010:
	jp $7991
INCBIN "base4.gb",$4C013,$50000-$4C013

SECTION "bank14",ROMX,BANK[$14]
INCBIN "base4.gb",$50000,$10 ; "Program bank 14"
Function50010:
	jp $41fa
Function50013:
	jp $4208
Function50016:
	jp $7aca
Function50019:
	jp $5e06
Function5001C:
	jp $6146
Function5001F:
	jp $63d9
Function50022:
	jp $659d
Function50025:
	jp $6b1d
INCBIN "base4.gb",$50028,$54000-$50028

SECTION "bank15",ROMX,BANK[$15]
INCBIN "base4.gb",$54000,$10 ; "Program bank 15"
Function54010:
	jp $4034
INCBIN "base4.gb",$54013,$58000-$54013

SECTION "bank16",ROMX,BANK[$16]
INCBIN "base4.gb",$58000,$10 ; "Program bank 16"
INCBIN "base4.gb",$58010,$58ED2-$58010

TextPointers: ; $16:4ED2
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
	dw Text22
	dw Text23
	dw Text21
	dw Text24
	dw Text25
	dw Text26

	db 0

Text1:
	db "MEGA MAN,",$FE,$FB,$3C
	db "DR. WILY HAS",$F7,$FD
	db "SENT HIS MOST",$FE
	db "POWERFUL ROBOTS",$F7,$FD
	db "ACROSS THE",$FE
	db "WORLD.  TO",$F7,$FD
	db "COMBAT THEM, I",$FE
	db "HAVE INVENTED",$F7,$FD
	db "A NEW MACHINE",$FE
	db "TO MAKE POWER",$F7,$FD
	db "ITEMS FOR YOU.",$FE,$F7,$FD
	db "BUT TO MAKE THE",$FE
	db "ITEMS, WE NEED",$F7,$FD
	db "TO USE SPECIAL",$FE
	db "ENERGY ITEMS",$F7,$FD
	db "CALLED P CHIPS.",$FE
	db "COLLECT AS MANY",$F7,$FD
	db "P CHIPS AS YOU",$FE
	db "CAN AND BRING",$F7,$FD
	db "THEM BACK TO",$FE
	db "THE LAB.",$F7
	db 0

Text2:
	db "THE MORE CHIPS",$FE
	db "YOU COLLECT,",$F7,$FD
	db "THE BETTER THE",$FE
	db "ITEM I CAN MAKE",$F7,$FD
	db "FOR YOU.",$FE,$F7
	db 0

Text3:
	db "MEGA MAN!",$FE,$FB,$3C
	db "DID YOU GET THE",$F7,$FD
	db "P CHIPS?",$FE,$F7
	db 0

Text4:
	db "SELECT THE ITEM",$FE
	db "YOU WANT.",$F4

Text5:
	db "COLLECT ",$06," OF",$FE
	db "THESE AND YOU",$F7,$FD
	db "CAN GET AN",$FE
	db "ENERGY TANK.",$F7
	db 0

Text6:
	db "YOU CAN FULLY",$FE
	db "RECHARGE ONE OF",$F7,$FD
	db "YOUR WEAPONS",$FE
	db "WITH THIS ITEM.",$F7
	db 0

Text7:
	db "YOU CAN FULLY",$FE
	db "RECOVER YOUR",$F7,$FD
	db "VITALITY WITH",$FE
	db "THIS ITEM.",$F7
	db 0

Text8:
	db "YOU CAN FULLY",$FE
	db "RECOVER YOUR",$F7,$FD
	db "VITALITY AND",$FE
	db "RECHARGE ALL",$F7,$FD
	db "YOUR WEAPONS",$FE
	db "WITH THIS ITEM.",$F7
	db 0

Text9:
	db "EXTRA LIFE",$FE,$F7
	db 0

Text10:
	db "WITH THIS LAST",$FE
	db "ITEM, THE",$F7,$FD
	db "WEAPON WITH",$FE
	db "THE LOWEST",$F7,$FD
	db "ENERGY LEVEL",$FE
	db "WILL",$F7,$FD
	db "AUTOMATICALLY",$FE
	db "BE REFILLED",$F7,$FD
	db "WHEN YOU PICK",$FE
	db "UP A WEAPON",$F7,$FD
	db "CAPSULE.",$FE,$F7
	db 0

Text11:
	db "ALL OF YOUR",$FE
	db "WEAPONS WILL",$F7,$FD
	db "BE IMMEDIATELY",$FE
	db "RECHARGED.",$F7
	db 0

Text12:
	db "YOU CAN'T CARRY",$FE
	db "ANY MORE OF",$F7,$FD
	db "THIS ITEM.",$FE,$F7
	db 0

Text13:
	db "ALL OF YOUR",$FE
	db "WEAPONS ARE",$F7,$FD
	db "ALREADY FULL.",$FE,$F7
	db 0

Text14:
	db "YOU NEED ",$F5,$FE
	db "P CHIPS FOR",$F7,$FD
	db "THIS ITEM.",$FE,$F7
	db 0

Text15:
	db "DO YOU WANT",$FE
	db "THIS ITEM?",$F7,$FD
	db "THIS ITEM?",$FE
	db "   B=NO A=YES",$F6
	db 0

Text16:
	db "YOU DON'T HAVE",$FE
	db "ENOUGH P CHIPS.",$F7
	db 0

Text17:
	db "DO YOU WANT",$FE
	db "ANOTHER ITEM?",$F4

Text18:
	db "ARE YOU",$FE
	db "FINISHED?",$F7,$FD
	db "FINISHED?",$FE
	db "   B=NO A=YES",$F6
	db 0

Text19:
	db "GOOD LUCK",$FE
	db "MEGA MAN!!",$F7
	db 0

Text20:
	db "HMMM.....",$FE,$FB,$3C
	db "I DIDN'T EXPECT",$F7,$FD
	db "WILY TO BE THIS",$FE
	db "POWERFUL.  I",$F7,$FD
	db "GUESS I HAVE NO",$FE
	db "CHOICE BUT TO",$F7,$FD
	db "TRY TO ENHANCE",$FE
	db "YOUR MEGA",$F7,$FD
	db "BUSTER.",$FE,$F7
	db 0

Text21:
	db "BUT REALIZE THAT",$FE
	db "THIS POWER-UP",$F7,$FD
	db "WILL LOSE ITS",$FE
	db "EFFECT IF YOU",$F7,$FD
	db "TURN OFF THE",$FE
	db "GAME BOY.",$F7
	db 0

Text22:
	db "MEGA MAN,",$FB,$1E," TO",$FE
	db "SNEAK INTO THE",$F7,$FD
	db "CENTER OF",$FE
	db "WILY'S TANK,",$F7,$FD
	db "YOU NEED TO",$FE
	db "COLLECT THE W,",$F7,$FD
	db "I, L AND Y",$FE
	db "PLATES HIDDEN",$F7,$FD
	db "IN THE TANK.",$FE
	db "GO AND GET THEM",$F7,$FD
	db "ALL!!!",$FE,$F7
	db 0

Text23:
	db "LISTEN UP",$FB,$1E," MEGA",$FE
	db "MAN!  WILY",$F7,$FD
	db "ESCAPED TO HIS",$FE
	db "SECRET SPACE",$F7,$FD
	db "SHIP.  WHILE I",$FE
	db "MODIFY RUSH FOR",$F7,$FD
	db "USE IN OUTER",$FE
	db "SPACE, YOU",$F7,$FD
	db "BETTER MAKE AS",$FE
	db "MANY ITEMS AS",$F7,$FD
	db "POSSIBLE.",$FE,$F7
	db 0

Text24:
	db "BALLADE!!",$FE,$F7,$FB,$3C,$FD
	db "WHY ARE YOU",$FE
	db "HERE?",$F7
	db 0

Text25:
	db "STOP BALLADE!!",$FE,$F7,$FD
	db "YOU'RE BADLY",$FE
	db "INJURED!",$F7,$FD
	db "I KNOW MEGA MAN.",$FE,$F7,$FD
	db "AFTER OUR",$FE
	db "BATTLE, I",$F7,$FD
	db "REALIZED THAT I",$FE
	db "WAS WRONG.",$F7,$FD
	db "THIS IS ALL I",$FE
	db "CAN DO FOR YOU",$F7,$FD
	db "NOW.",$FE,$F7,$FD,$FB,$3C
	db "GOOD BYE...",$FE,$F7
	db 0

Text26:
	db "BALLADE!!!!!",$FE,$F7
	db 0

INCBIN "base4.gb",$59680,$5C000-$59680

SECTION "bank17",ROMX,BANK[$17]
Function5C000:
	jp $43ce
Function5C003:
	jp $42f5
Function5C006:
	jp $4c80
Function5C009:
	jp Function5C00C
Function5C00C:
	ret
Pointers5C00D:
	dw $40ed
	dw $40f1
	dw $40f5
	dw $40f9
	dw $40fd
	dw $4103
	dw $4107
	dw $410d
	dw $4113
	dw $4119
	dw $40ed
	dw $418d
	dw $4197
	dw $411f
	dw $4123
	dw $4127
	dw $412b
	dw $412f
	dw $4133
	dw $4137
	dw $413d
	dw $4141
	dw $4145
	dw $4149
	dw $414d
	dw $4153
	dw $4157
	dw $415b
	dw $415f
	dw $4163
	dw $4167
	dw $416b
	dw $416f
	dw $4173
	dw $4177
	dw $417d
	dw $4183
	dw $4187
	dw $41a1
	dw $41a5
	dw $41a9
	dw $41af
	dw $41b5
	dw $41b9
	dw $41bd
	dw $41c1
	dw $41c5
	dw $41c9
	dw $41cd
	dw $41d3
	dw $41db
	dw $41df
	dw $41e5
	dw $41e9
	dw $41ef
	dw $41f3
	dw $41f9
	dw $41ff
	dw $4205
	dw $4209
	dw $420d
	dw $4211
	dw $4215
	dw $421f
	dw $4219
	dw $4239
	dw $423d
	dw $422f
	dw $4235
	dw $4245
	dw $424b
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
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw 0
	dw $424f
	dw $4259
	dw $4277
	dw $4281
	dw $428b
	dw $4295
	dw $429f
	dw $42a9
	dw $42b3
	dw $42bd
	dw $4263
	dw $426d
	dw $42c7
	dw $42d1
	dw $42d5
	dw $42dd
	dw $42e3
	dw $42e7
	dw $42ed

INCBIN "base4.gb",$5C0ED,$60000-$5C0ED

SECTION "bank18",ROMX,BANK[$18]
INCBIN "base4.gb",$60000,$10 ; "Program bank 18"
Function60010:
	jp $40a2
INCBIN "base4.gb",$60013,$64000-$60013

SECTION "bank19",ROMX,BANK[$19]
INCBIN "base4.gb",$64000,$10 ; "Program bank 19"
Function64010:
	jp $78ce
INCBIN "base4.gb",$64013,$68000-$64013

SECTION "bank1A",ROMX,BANK[$1A]
INCBIN "base4.gb",$68000,$10 ; "Program bank 1A"
INCBIN "base4.gb",$68010,$6c000-$68010

SECTION "bank1B",ROMX,BANK[$1B]
INCBIN "base4.gb",$6C000,$10 ; "Program bank 1B"
INCBIN "base4.gb",$6C010,$70000-$6C010

SECTION "bank1C",ROMX,BANK[$1C]
INCBIN "base4.gb",$70000,$10 ; "Program bank 1C"
Function70010:
	jp $4025
Function70013:
	jp $5d3b
Function70016:
	jp $5f9f
INCBIN "base4.gb",$70019,$74000-$70019

SECTION "bank1D",ROMX,BANK[$1D]
INCBIN "base4.gb",$74000,$10 ; "Program bank 1D"
Function74010:
	jp $6e33
INCBIN "base4.gb",$74013,$78000-$74013

SECTION "bank1E",ROMX,BANK[$1E]
INCBIN "base4.gb",$78000,$10 ; "Program bank 1E"
Function78010:
	jp $59fc
INCBIN "base4.gb",$78013,$7c000-$78013

SECTION "bank1F",ROMX,BANK[$1F]
INCBIN "base4.gb",$7C000,$10 ; "Program bank 1F"
INCBIN "base4.gb",$7C010,$80000-$7C010
