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
	rst $20
	jp $4000

Function47C: ; $47C
	di
	ld sp,$FFFE
	ld a,1
	rst $20
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
INCBIN "base4.gb",$8000,$4000

SECTION "bank3",ROMX,BANK[$3]
INCBIN "base4.gb",$C000,$4000

SECTION "bank4",ROMX,BANK[$4]
INCBIN "base4.gb",$10000,$4000

SECTION "bank5",ROMX,BANK[$5]
INCBIN "base4.gb",$14000,$4000

SECTION "bank6",ROMX,BANK[$6]
INCBIN "base4.gb",$18000,$4000

SECTION "bank7",ROMX,BANK[$7]
INCBIN "base4.gb",$1C000,$4000

SECTION "bank8",ROMX,BANK[$8]
INCBIN "base4.gb",$20000,$4000

SECTION "bank9",ROMX,BANK[$9]
INCBIN "base4.gb",$24000,$4000

SECTION "bankA",ROMX,BANK[$A]
INCBIN "base4.gb",$28000,$4000

SECTION "bankB",ROMX,BANK[$B]
INCBIN "base4.gb",$2C000,$4000

SECTION "bankC",ROMX,BANK[$C]
INCBIN "base4.gb",$30000,$4000

SECTION "bankD",ROMX,BANK[$D]
INCBIN "base4.gb",$34000,$4000

SECTION "bankE",ROMX,BANK[$E]
INCBIN "base4.gb",$38000,$4000

SECTION "bankF",ROMX,BANK[$F]
INCBIN "base4.gb",$3C000,$4000

SECTION "bank10",ROMX,BANK[$10]
INCBIN "base4.gb",$40000,$80

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
INCBIN "base4.gb",$44000,$4000

SECTION "bank12",ROMX,BANK[$12]
INCBIN "base4.gb",$48000,$4000

SECTION "bank13",ROMX,BANK[$13]
INCBIN "base4.gb",$4C000,$4000

SECTION "bank14",ROMX,BANK[$14]
INCBIN "base4.gb",$50000,$4000

SECTION "bank15",ROMX,BANK[$15]
INCBIN "base4.gb",$54000,$4000

SECTION "bank16",ROMX,BANK[$16]
INCBIN "base4.gb",$58000,$58ED2-$58000

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
INCBIN "base4.gb",$5C000,$4000

SECTION "bank18",ROMX,BANK[$18]
INCBIN "base4.gb",$60000,$4000

SECTION "bank19",ROMX,BANK[$19]
INCBIN "base4.gb",$64000,$4000

SECTION "bank1A",ROMX,BANK[$1A]
INCBIN "base4.gb",$68000,$4000

SECTION "bank1B",ROMX,BANK[$1B]
INCBIN "base4.gb",$6C000,$4000

SECTION "bank1C",ROMX,BANK[$1C]
INCBIN "base4.gb",$70000,$4000

SECTION "bank1D",ROMX,BANK[$1D]
INCBIN "base4.gb",$74000,$4000

SECTION "bank1E",ROMX,BANK[$1E]
INCBIN "base4.gb",$78000,$4000

SECTION "bank1F",ROMX,BANK[$1F]
INCBIN "base4.gb",$7C000,$4000
