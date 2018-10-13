bankswitch: MACRO
	ld [$C0D3],a
	ld [$2100],a
ENDM

bankswitch1: MACRO
	ld a,[$C0D3]
	push af
	rst $20
ENDM

freespace: MACRO
	incbin "basebc.gb",\1,(\1 / $4000 + 1) * $4000 - \1
ENDM

SECTION "func0",ROM0[0]
Func0:
	ld sp,$FFFE
	di
	jp $0150
	db 1

SECTION "func8",ROM0[8]
Func8:
	ld a,l
	ld [$C0DD],a
	ld a,h
	jp $3E81

SECTION "func10",ROM0[$10]
	ret
	nop
	nop
	nop
	nop
	nop
	nop
	db 1

SECTION "func18",ROM0[$18]
	ld a,[$DFA5]
	cp $2B
	ret

SECTION "func20",ROM0[$20]
	ld a,1
	bankswitch
	ret

SECTION "func30",ROM0[$30]
	jp $B6E

SECTION "func38",ROM0[$38]
	ret

SECTION "vblank",ROM0[$40]
	push af
	push hl
	push de
	push bc
	jp $769

SECTION "lcdc",ROM0[$48]
	jp $99F

SECTION "timer",ROM0[$50]
	reti

SECTION "serial",ROM0[$58]
	reti

SECTION "joypad",ROM0[$60]
	reti

SECTION "unknownhome",ROM0[$61]
INCBIN "basebc.gb",$61,$100-$61

SECTION "header",ROM0[$100]
	nop
	jp $0150

SECTION "start",ROM0[$150]

Function150:
	jp $06F4
Function153:
	jp $0713
Function156:
	jp $06AD
Function159:
	jp $0B31
Function15C:
	jp $0CB5
Function15F:
	jp $0CD3
Function162:
	jp $0C8F
Function165:
	jp $0F66
Function168:
	jp $0F70
Function16B:
	jp $21F1
Function16E:
	jp $21FD
Function171:
	jp $1D07
Function174:
	jp $2E76
Function177:
	jp $2E14
Function17A:
	jp $2E45
Function17D:
	jp $0C12
Function180:
	jp $0BDA
Function183:
	jp $0C05
Function186:
	jp $0BF0
Function189:
	jp $0BE7
Function18C:
	jp $0C1D
Function18F:
	jp $0D88
Function192:
	jp $0D93
Function195:
	jp $3938
Function198:
	jp $3CD7
Function19B:
	jp $3A4F
Function19E:
	jp $3D0D
Function1A1:
	jp $3D96
Function1A4:
	jp $133A
Function1A7:
	jp $1DD4
Function1AA:
	jp $1DC9
Function1AD:
	jp $3E91
Function1B0:
	jp $0F44
Function1B3:
	jp $3D86
Function1B6:
	jp $0B50
Function1B9:
	jp $0B6E
Function1BC:
	jp $0AB7
Function1BF:
	jp $0E76
Function1C2:
	jp $0E67
Function1C5:
	jp $0E82
Function1C8:
	jp $22CD
Function1CB:
	jp $22AC
Function1CE:
	jp $22DE
Function1D1:
	jp $228D
Function1D4:
	jp $23BE
Function1D7:
	jp $29DA
Function1DA:
	jp $27BB
Function1DD:
	jp $2633
Function1E0:
	jp $2636
Function1E3:
	jp $2405
Function1E6:
	jp $2738
Function1E9:
	jp $223A
Function1EC:
	jp $27C4
Function1EF:
	jp $26BA
Function1F2:
	jp $266B
Function1F5:
	jp $2670
Function1F8:
	jp $2693
Function1FB:
	jp $2B30
Function1FE:
	jp $2FE2
Function201:
	jp $26FE
Function204:
	jp $270B
Function207:
	jp $2437
Function20A:
	jp $243B
Function20D:
	jp $0F06
Function210:
	jp $2B71
Function213:
	jp $2620
Function216:
	jp $22EF
Function219:
	jp $2728
Function21C:
	jp $2718
Function21F:
	jp $2877
Function222:
	jp $2882
Function225:
	jp $2984
Function228:
	jp $27A1
Function22B:
	jp $0C72
Function22E:
	jp $25CC
Function231:
	jp $2345
Function234:
	jp $2267
Function237:
	jp $29C4
Function23A:
	jp $2973
Function23D:
	jp $2B0B
Function240:
	jp $296A
Function243:
	jp $2AD8
Function246:
	jp $246D
Function249:
	jp $2328
Function24C:
	jp $2306
Function24F:
	jp $2309
Function252:
	jp $2453
Function255:
	jp $2356
Function258:
	jp $2AA5
Function25B:
	jp $2AB1
Function25E:
	jp $2AB6
Function261:
	jp $2607
Function264:
	jp $25D1
Function267:
	jp $2356
Function26A:
	jp $2486
Function26D:
	jp $24FC
Function270:
	jp $250C
Function273:
	jp $2A5D
Function276:
	jp $2A51
Function279:
	jp $25F8
Function27C:
	jp $25FD
Function27F:
	jp $25ED
Function282:
	jp $28B2
Function285:
	jp $2A92
Function288:
	jp $288A
Function28B:
	jp $25DB
Function28E:
	jp $0C72
Function291:
	jp $29AF
Function294:
	jp $2A24
Function297:
	jp $2A32
Function29A:
	jp $2A6C
Function29D:
	jp $2A6A
Function2A0:
	jp $27CD
Function2A3:
	jp $27E3
Function2A6:
	jp $2366
Function2A9:
	jp $23AF
Function2AC:
	jp $2389
Function2AF:
	jp $239C
Function2B2:
	jp $1457
Function2B5:
	jp $146A
Function2B8:
	jp $249E
Function2BB:
	jp $1C36
Function2BE:
	jp $1C77
Function2C1:
	jp $0FB1
Function2C4:
	jp $0F9D
Function2C7:
	jp Function42C
Function2CA:
	jp Function43E
Function2CD:
	jp $05B2
Function2D0:
	jp $3EB5
Function2D3:
	jp Function5C7
Function2D6:
	jp $1275
Function2D9:
	jp $1285
Function2DC:
	jp $1293
Function2DF:
	jp $21BC
Function2E2:
	jp $0EB1
Function2E5:
	jp $0EAF
Function2E8:
	jp $0FCC
Function2EB:
	jp $0FF8
Function2EE:
	jp $1CEC
Function2F1:
	jp $1643
Function2F4:
	jp $1CD5
Function2F7:
	jp $0F14
Function2FA:
	jp $100D
Function2FD:
	jp Function548
Function300:
	jp Function552
Function303:
	jp Function53E
Function306:
	jp $134F
Function309:
	jp $0561
Function30C:
	jp $1CBE
Function30F:
	jp $0EEB
Function312:
	jp $049A
Function315:
	jp $2440
Function318:
	jp $2B78
Function31B:
	jp $246F
Function31E:
	jp $2B8C
Function321:
	jp $2BAE
Function324:
	jp $2BBC
Function327:
	jp $2BCB
Function32A:
	jp Function467
Function32D:
	jp $04B3
Function330:
	jp Function4FD
Function333:
	jp Function513
Function336:
	jp Function4C4
Function339:
	jp Function4DB
Function33C:
	jp Function472
Function33F:
	jp Function483
Function342:
	jp $1170
Function345:
	jp $0B68
Function348:
	jp $0DBD
Function34B:
	jp $0DFF
Function34E:
	jp $06E0
Function351:
	jp $06EA
Function354:
	jp Function5E5
Function357:
	jp $0411
Function35A:
	jp Function41B
Function35D:
	jp $065A
Function360:
	jp $0664
Function363:
	jp $066E
Function366:
	jp $0678
Function369:
	jp $0682
Function36C:
	jp $068C
Function36F:
	jp $260C
Function372:
	jp $0696
Function375:
	jp Function4EC
Function378:
	jp $105C
Function37B:
	jp $0640
Function37E:
	jp $1415
Function381:
	jp Function410
Function384:
	jp $1425
Function387:
	jp Function56B
Function38A:
	jp Function575
Function38D:
	jp Function400
Function390:
	jp Function3F6
Function393:
	jp $06BE
Function396:
	jp $2BDC
Function399:
	jp Function531
Function39C:
	jp $2C42
Function39F:
	jp $3ECF
Function3A2:
	jp $1DF1
Function3A5:
	jp Function5BD
Function3A8:
	jp Function508
Function3AB:
	jp $19E6
Function3AE:
	jp Function51E
Function3B1:
	jp $0C81
Function3B4:
	jp $0C82
Function3B7:
	jp $1E09
Function3BA:
	jp $0F2E
Function3BD:
	jp $12DE
Function3C0:
	jp $175B
Function3C3:
	jp $176D
Function3C6:
	jp $040F
Function3C9:
	jp $06D6
Function3CC:
	jp Function3E4
Function3CF:
	jp $0E8F
Function3D2:
	jp $0E9D
Function3D5:
	jp $177B
Function3D8:
	jp $0650
Function3DB:
	jp $13C2
Function3DE:
	jp Function5D1
Function3E1:
	jp $05DB

Function3E4: ; $3E4
	ld a,[$c0d3]
	push af
	ld a,$01
	bankswitch
	call $5621
	ld e,a
	jr Function408
Function3F6: ; $3F6
	bankswitch1
	call $47ac
	jr Function408
Function400: ; $400
	bankswitch1
	call $5a85
Function408: ; $408
	pop af
	bankswitch
	ret

Function410: ; $410
	ret

Function411: ; $411
	bankswitch1
	call $6a58
	jr Function492
Function41B: ; $41B
	ld a,[$c0d3]
	push af
	ld a,$02
	bankswitch
	call $401c
	jr Function492
Function42C: ; $42C
	ld a,[$c0d3]
	push af
	ld a,[$c0d5]
	bankswitch
	call $3890
	jr Function492
Function43E: ; $43E
	ld hl,$c577
	ld de,$cc00
	ld bc,$0019
	call $0c12
	ld hl,$c577
	ld bc,$0019
	xor a
	call $0c1d
	ld a,$80
	ld [$cd57],a
	ld hl,$cc00
.loop
	ld a,[hli]
	or a
	ret Z
	inc hl
	push hl
	call $1d07
	pop hl
	jr .loop
Function467: ; $467
	ld a,$02
	bankswitch
	jp $4010
Function472: ; $472
	ld a,[$c0d3]
	push af
	ld a,$02
	bankswitch
	call $4010
	jr Function492
Function483: ; $483
	ld a,[$c0d3]
	push af
	ld a,$02
	bankswitch
	call $4019
Function492: ; $492
	pop af
	bankswitch
	ret

Function49A: ; $49A
	call $2b30
	bit 1,a
	ret Z
	ld a,$15
	add c
	ld l,a
	ld a,[hl]
	or a
	ret nZ
	pop de
	ld a,$02
	bankswitch
	jp $4004

Function4B3: ; $4B3
	ld a,[$c0d3]
	push af
	ld a,$02
	bankswitch
	call $4007
	jr Function492

Function4C4: ; $4C4
	ld [$c0dd],a
	ld a,[$c0d3]
	push af
	ld a,$02
	bankswitch
	ld a,[$c0dd]
	call $4013
	jr Function529
Function4DB: ; $4DB
	ld a,[$c0d3]
	push af
	ld a,$02
	bankswitch
	call $4016
	jr Function529
Function4EC: ; $4EC
	ld a,[$c0d3]
	push af
	ld a,$02
	bankswitch
	call $401f
	jr Function529
Function4FD: ; $4FD
	ld a,$02
	bankswitch
	jp $400a
Function508: ; $508
	ld a,$02
	bankswitch
	jp $401f
Function513: ; $513
	ld a,$02
	bankswitch
	jp $400d
Function51E: ; $51E
	ld a,$02
	bankswitch
	jp $4022
Function529: ; $529
	pop af
	bankswitch
	ret

Function531: ; $531
	ld [$df97],a
	ld a,$39
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function53E: ; $53E
	ld a,$2d
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function548: ; $548
	ld a,$24
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function552: ; $552
	push de
	call $0c12
	pop hl
	ld a,$27
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function55F: ; $55F
	ld a,$30
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function56B: ; $56B
	ld a,$33
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function575: ; $575
	ld a,$36
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function57F: ; $57F
	ld a,$03
	ld [$ffb1],a
	ld a,[$c0d3]
	push af
	ld a,[$ffb1]
	bankswitch
	ld a,$c3
	ld [$ffae],a
	call $ffae
	pop af
	bankswitch
	ret

Function59E: ; $59E
	ld a,$18
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function5A8: ; $5A8
	ld a,$1b
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function5B0: ; $5B0
	ld a,$03
	bankswitch
	jp $400f
Function5BD:
	ld a,$3c
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function5C7: ; $5BA
	ld a,$0c
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function5D1:
	ld a,$45
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function5D9:
	ld a,$48
	ld [$ffaf],a
	ld a,$40
	ld [$ffb0],a
	jr Function57F
Function5E5:
	ld a,[$c0d3]
	push af
	ld a,$06
	bankswitch
	call $400b
	jp $0529

Function5F7: ; $5F7
INCBIN "basebc.gb",$5F7,$4000-$5F7

SECTION "bank1",ROMX,BANK[$1]
INCBIN "basebc.gb",$4000,$4000

SECTION "bank2",ROMX,BANK[$2]
INCBIN "basebc.gb",$8000,$4000

SECTION "bank3",ROMX,BANK[$3]
INCBIN "basebc.gb",$C000,$4000

SECTION "bank4",ROMX,BANK[$4]
INCBIN "basebc.gb",$10000,$4000

SECTION "bank5",ROMX,BANK[$5]
INCBIN "basebc.gb",$14000,$4000

SECTION "bank6",ROMX,BANK[$6]
INCBIN "basebc.gb",$18000,$4000

SECTION "bank7",ROMX,BANK[$7]
Function1C000:
	jp $6e62

Function1C003:
	jp $6d92

Function1C006:
	jp $7709

Function1C009:
	jp $4021

Function1C00C:
	jp $77e7

Function1C00F:
	jp $7834

Function1C012:
	jp $77e6

Function1C015:
	jp $77d3

Function1C018:
	jp $7b56

Function1C01B:
	jp $7b56

Function1C01E:
	jp $7b56

INCBIN "basebc.gb",$1C021,$20000-$1C021

SECTION "bank8",ROMX,BANK[$8]
INCBIN "basebc.gb",$20000,$4000

SECTION "bank9",ROMX,BANK[$9]
Pointer24000:
	dw Pointers24008
Pointer24002:
	dw Data2406D
Function24004:
	jp $7819
Byte24007:
	db $32
Pointers24008:
	dw $408B
	dw $409D
	dw $409D
	dw $409D
	dw $40AF
	dw $47A1
	dw $47B3
	dw $40C1
	dw $4DF7
	dw $54A3
	dw $54B5
	dw $54C7
	dw $54D9
	dw $54EB
	dw $54FD
	dw $550F
	dw $5521
	dw $5533
	dw $5C88
	dw $4DF7
	dw $686C
	dw $687E
	dw $6890
	dw $4E6E
	dw $4E80
	dw $5261
	dw $5273
	dw $4DF7
	dw $4E6E
	dw $4E6E
	dw $4E6E
	dw $4E6E
	dw $5FFB
	dw $600D
	dw $601F
	dw $6031
	dw $6043
	dw $64D4
	dw $64E6
	dw $6824
	dw $6836
	dw $6848
	dw $685A
	dw $6DF0
	dw $4DF7
	dw $6DF0
	dw $6E02
	dw $6E14
	dw $6E26
	dw $4DF7
	db $FF

Data2406D:

INCBIN "basebc.gb",$2406d,$28000-$2406d

SECTION "bankA",ROMX,BANK[$A]
Function28000:
	jp $432e

Function28003:
	jp $431b

Function28006:
	jp $424f

Function28009:
	jp $4211

Function2800C:
	jp $4202

Function2800F:
	jp $4135

Function28012:
	jp $5e6e

Function28015:
	jp $7d83

Function28018:
	jp $401b

INCBIN "basebc.gb",$2801b,$2c000-$2801b

SECTION "bankB",ROMX,BANK[$B]

Pointer2C000:
	dw Pointers2C007
Pointer2C002:
	dw $7868
Function2C004:
	jp $78da
Pointers2C007:
	dw Data2C015
	dw Data2C01E
	dw Data2C02B
	dw Data2C038
	dw Data2C04A
	dw Data2C053
	dw Data2C041

Data2C015:
	db $04,$00,$5C,$40,$76,$04,$9C,$40,$00
Data2C01E:
	db $04,$00,$5C,$40,$12,$04,$FC,$47,$49,$16,$3C,$56,$00
Data2C02B:
	db $04,$00,$5C,$40,$12,$04,$FC,$47,$5C,$16,$1C,$49,$00
Data2C038:
	db $04,$00,$5C,$40,$73,$04,$2C,$62,$00
Data2C041:
	db $04,$00,$5C,$40,$74,$04,$5C,$69,$00
Data2C04A:
	db $04,$00,$5C,$40,$75,$04,$9C,$70,$00
Data2C053:
	db $04,$00,$5C,$40,$76,$04,$CC,$5A,$00

INCBIN "basebc.gb",$2C05C,$30000-$2C05C

SECTION "bankC",ROMX,BANK[$C]
Pointer30000:
	dw $4039

Function30002:
	jp $4038

Function30005:
	jp $737f

Function30008:
	jp Function300D3

Function3000B:
	jp Function300D9

Function3000E:
	jp Function300DA

Function30011:
	jp Function30038

Pointers30014:
	dw $4727
	dw $48b0
	dw $4ffa
	dw $53e0
	dw $560b
	dw $57b0
	dw $58a1
	dw $5d78
	dw $5e99
	dw $5ff6
	dw $607f
	dw $66db
	dw $68a8
	dw $68f1
	dw $7c61
	dw $6bda
	dw $78ca
	dw $7af0

Function30038:
	ret

Pointers30039:
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw $485E
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300DB
	dw Function300D3
	dw Function300DB
	dw Function300DB
	dw $4DF4
	dw Function300DB
	dw $52A0
	dw $5415
	dw $56EE
	dw $5883
	dw $5CB5
	dw Function300DB
	dw Function300DB
	dw $5E62
	dw $605F
	dw $64E1
	dw $678F
	dw $7C61
	dw $6BB6
	dw Function300DB
	dw Function300DB

Function300D3:
	ld [$DF52],a
	jp Function153

Function300D9:
	ret

Function300DA:
	ret

Function300DB:

INCBIN "basebc.gb",$300db,$34000-$300db

SECTION "bankD",ROMX,BANK[$D]
INCBIN "basebc.gb",$34000,$4000

SECTION "bankE",ROMX,BANK[$E]
INCBIN "basebc.gb",$38000,$3c000-$38000

SECTION "bankF",ROMX,BANK[$F]
Pointer3C000:
	dw $51B7

Function3C002:
	jp Function3C097
Function3C005:
	jp $4a3c
Function3C008:
	jp $4a54
Function3C00B:
	jp $4b32
Function3C00E:
	jp $4b67
Function3C011:
	jp $4b79
Function3C014:
	jp $7149
Function3C017:
	jp $6f5a
Function3C01A:
	jp $4023
Function3C01D:
	jp $6f4e
Function3C020:
	jp $402f
Function3C023:
	ld hl,$4ddf
	ld bc,$270
	ld de,$9200
	jp Function15F
Function3C02F:
	ld a,$c9
	ld [$FF80],a
	xor a
	ld [$FF24],a
	ld [$FF25],a
	ld [$FF26],a
	ld [$FF41],a
	ld [$FF0F],a
	ld [$FFFF],a
	call Function159
	ld hl,$8000
	ld bc,$2000
	xor a
	call Function162
	ld a,$a0
	ld [$FF4B],a
	ld [$FF4A],a
	ld a,0
	ld [$FF47],a
	ld [$FF48],a
	ld [$FF49],a
	ld [$C0D9],a
	call $416A
	call Function2D0
	call $41D3
	ld hl,Data3C083
	ld de,$9900
	ld bc,$14
	call Function15F
	ld a,$e4
	ld [$C0D9],a
	ld b,$78
.loop
	push bc
	call Function1B9
	pop bc
	dec b
	jr nz,.loop
	ret

Data3C083:
INCBIN "basebc.gb",$3c083,$3c097-$3c083
Function3C097:
INCBIN "basebc.gb",$3c097,$3fc50-$3c097

	freespace $3fc50
