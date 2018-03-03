;freespace: MACRO
;	rept (\1 / $4000 + 1) * $4000 - \1
;	db -1
;	endr
;ENDM
freespace: MACRO
	incbin "base1.gb",\1,(\1 / $4000 + 1) * $4000 - \1
ENDM

bankswitch: MACRO
	ld [$DF99],a
	ld [$2100],a
ENDM

SECTION "func0",ROM0[0]
	ld hl,$FFFE
	ld sp,hl
	jp Function150
	db 1

SECTION "func8",ROM0[8]
	jp $2AD

SECTION "vblank",ROM0[$40]
	jp $675

SECTION "lcdc",ROM0[$48]
	jp $C0A4

SECTION "timer",ROM0[$50]
	reti

SECTION "serial",ROM0[$58]
	reti

SECTION "joypad",ROM0[$60]
	reti

SECTION "header",ROM0[$100]
	nop
	jp Function150

SECTION "start",ROM0[$150]

Function150:
	jp Function5FE
Function153:
	jp $38A9
Function156:
	jp $0F96
Function159:
	jp $1758
Function15C:
	jp $163C
Function15F:
	jp $1968
Function162:
	jp Function167E
Function165:
	jp $18B3
Function168:
	jp Function3C3
Function16B:
	jp $1694
Function16E:
	jp Function3CD
Function171:
	jp $5A87
Function174:
	jp $273B
Function177:
	jp $274B
Function17A:
	jp $2EDC
Function17D:
	jp $2F0A
Function180:
	jp $2CF0
Function183:
	jp $1004
Function186:
	jp $2CD6
Function189:
	jp $1973
Function18C:
	jp $19B5
Function18F:
	jp $2245
Function192:
	jp $227A
Function195:
	jp $22A3
Function198:
	jp $22CC
Function19B:
	jp $1AFC
Function19E:
	jp $1618
Function1A1:
	jp $157D
Function1A4:
	jp Function1F4
Function1A7:
	jp $096F
Function1AA:
	jp $3057
Function1AD:
	jp $1093
Function1B0:
	jp Function2C37
Function1B3:
	jp Function1BD
Function1B6:
	jp Function1F4

Data1B9: ; $1B9
	dw $34D3
	dw $3693

Function1BD: ; $1BD
	ld a,6
	bankswitch
	ld de,$9000
	ld hl,$363
	call Function2516
	call $18B3
	ld de,$9800
	ld hl,$365
	call Function2521
	call Function1E6
	ld a,1
	bankswitch
	ret

Function1E6: ; $1E6
	ld c,$12
.loop
	push bc
	ld bc,$0014
	call $18B3
	pop bc
	dec c
	jr nz,.loop
	ret

Function1F4: ; $1F4
	ld [$FF91],a
	ld a,[$DF99]
	push af
	push hl
	push de
	ld a,[$FF91]
	ld e,a
	ld d,0
	ld hl,.pointers
	add hl,de
	add hl,de
	ld a,[hli]
	ld [$C0D1],a
	ld a,[hli]
	ld [$C0D2],a
	ld a,$C3 ; jump
	ld [$C0D0],a
	pop de
	pop hl
	ld a,1
	bankswitch
	call $C0D0
	pop af
	bankswitch
	ret

.pointers
	dw $0248
	dw $5A87
	dw $5943
	dw $1AFC
	dw $5939
	dw $1A28
	dw $1A3D

	db $CF; $236
	dw $4000
	db $CF
	dw $4003
	db $CF
	dw $4006
	db $CF
	dw $4009
	db $CF
	dw $400C
	db $CF
	dw $400F
	db $CF
	dw $4012
	dw $4015
	dw $4017
	dw $4019
	dw $401B
	dw $401D
	dw $401F
	dw $4021
	dw $4023
	dw $4025
	dw $4027
	dw $4029
	dw $402B
	dw $402D
	dw $402F
	dw $4031
	dw $4033
	dw $4035
	dw $4037
	dw $4039
	dw $403B
	dw $403D
	dw $403F
	dw $4041
	dw $4043
	dw $4045
	dw $4047
	dw $4049
	dw $404B	
	dw $404D
	dw $404F
	dw $4051
	dw $4053
	dw $4055
	dw $4057
	dw $4059
	dw $405B
	dw $405D
	dw $405F
	dw $4061
	dw $4063
	dw $4065
	dw $4067
	dw $4069
	dw $406B
	dw $406D
	dw $406F
	dw $4071
	dw $4073
	dw $4075

Function2AD: ; $2AD
	ld [$FF8C],a
	ld a,l
	ld [$FF8D],a
	ld a,h
	ld [$FF8E],a
	ld a,e
	ld [$FF8F],a
	ld a,d
	ld [$FF90],a
	ld a,[$DF9A]
	bankswitch
	pop hl
	ld de,.Function2DC
	push de
	ld e,[hl]
	inc hl
	ld d,[hl]
	push de
	ld a,[$FF8D]
	ld l,a
	ld a,[$FF8E]
	ld h,a
	ld a,[$FF8F]
	ld e,a
	ld a,[$FF90]
	ld d,a
	ld a,[$FF8C]
	ret

.Function2DC ; $2DC
	push af
	ld a,1
	bankswitch
	pop af
	ret

__MegaManSpriteGFX:
	dw _MegaManSpriteGFX
__ItemPickupSpriteGFX:
	dw _ItemPickupSpriteGFX

__UnknownBulletGFX:
	dw _UnknownBulletGFX
__RollingCutterGFX:
	dw _RollingCutterGFX
__ThunderBeamGFX:
	dw _ThunderBeamGFX
__IceSlasherGFX:
	dw _IceSlasherGFX
__FireStormGFX:
	dw _FireStormGFX
__CarryGFX:
	dw _CarryGFX
__AtomicFireGFX:
	dw _AtomicFireGFX
__TimeStopperGFX:
	dw _TimeStopperGFX
__QuickBoomerangGFX:
	dw _QuickBoomerangGFX
__BubbleLeadGFX:
	dw _BubbleLeadGFX
__MirrorBusterGFX:
	dw _MirrorBusterGFX

__HealthBarGFX:
	dw _HealthBarGFX
__SevenSegmentGFX:
	dw _SevenSegmentGFX
Pointer305:
	dw Pointer1001E
Pointer307:
	dw Pointer10020
Pointer309:
	dw Pointer10022
Pointer30B:
	dw Pointer10024
Pointer30D:
	dw Pointer10026
Pointer30F:
	dw Pointer10028
Pointer301:
	dw Pointer1002A
Pointer313:
	dw Pointer1002C
Pointer315:
	dw Pointer1002E
Pointer317:
	dw Pointer10030
Pointer319:
	dw Pointer10032
Pointer31B:
	dw Pointer10034
Pointer31D:
	dw Pointer10036
Pointer31F:
	dw Pointer10038
Pointer321:
	dw Pointer1003A
Pointer323:
	dw Pointer1003C
Pointer325:
	dw Pointer1003E
Pointer327:
	dw Pointer10040
Pointer329:
	dw Pointer10042
Pointer32B:
	dw Pointer10044
Pointer32D:
	dw Pointer10046
Pointer32F:
	dw Pointer10048
Pointer331:
	dw Pointer1004A
Pointer333:
	dw Pointer1004C
Pointer335:
	dw Pointer1004E
Pointer337:
	dw Pointer10050
Pointer339:
	dw Pointer10052
Pointer33B:
	dw CutManLevelDataPointer
Pointer33D:
	dw IceManLevelDataPointer
Pointer33F:
	dw FireManLevelDataPointer
Pointer341:
	dw ElecManLevelDataPointer
Pointer343:
	dw Pointer18000
Pointer345:
	dw Pointer18002
Pointer347:
	dw Pointer18004
Pointer349:
	dw Pointer18006
Pointer34B:
	dw Pointer18008
Pointer34D:
	dw Pointer1800A
Pointer34F:
	dw Pointer1800C
Pointer351:
	dw Pointer1800E
Pointer353:
	dw Pointer18010
Pointer355:
	dw Pointer18012
Pointer357:
	dw Pointer18014
Pointer359:
	dw Pointer18016
Pointer35B:
	dw Pointer18018
Pointer35D:
	dw Pointer1801A
Pointer35F:
	dw Pointer1801C
Pointer361:
	dw Pointer1801E
Pointer363:
	dw Pointer18020
Pointer365:
	dw Pointer18022
Pointer367:
	dw Pointer18024
Pointer369:
	dw Pointer18026
Pointer36B:
	dw Pointer18028
Pointer36D:
	dw Pointer1C000
Pointer36F:
	dw Pointer1C002
Pointer371:
	dw Pointer1C004
Pointer373:
	dw Pointer1C006
Pointer375:
	dw Pointer1C008
Pointer377:
	dw Pointer1C00A
Pointer379:
	dw Pointer1C00C
Pointer37B:
	dw Pointer1C00E
Pointer37D:
	dw Pointer1C010
Pointer37F:
	dw Pointer1C012
Pointer381:
	dw Pointer1C014
Pointer383:
	dw Pointer1C016
Pointer385:
	dw Pointer1C018
Pointer387:
	dw Pointer1C01A
Pointer389:
	dw Pointer1C01C
Pointer38B:
	dw Pointer1C01E
Pointer38D:
	dw Pointer1C020
Pointer38F:
	dw Pointer1C022
Pointer391:
	dw Pointer1C024
Pointer393:
	dw Pointer1C026
Pointer395:
	dw Pointer1C028
Pointer397:
	dw Pointer1C02A
Pointer399:
	dw Pointer1C02C
Pointer39B:
	dw Pointer1C02E
Pointer39D:
	dw Pointer1C030
Pointer39F:
	dw Pointer1C032
Pointer3A1:
	dw Pointer1C034
Pointer3A3:
	dw Pointer1C036
Pointer3A5:
	dw Pointer1C038
Pointer3A7:
	dw Pointer1C03A
Pointer3A9:
	dw Pointer1C03C
Pointer3AB:
	dw Pointer20000
Pointer3AD:
	dw Pointer20002
Pointer3AF:
	dw Pointer20004
Pointer3B1:
	dw Pointer20006
Pointer3B3:
	dw Pointer30000
Pointer3B5:
	dw Pointer30002
Pointer3B7:
	dw Pointer30004
Pointer3B9:
	dw Pointer30006
Pointer3BB:
	dw Pointer30008
Pointer3BD:
	dw Pointer3000A
Pointer3BF:
	dw Pointer3000C
Pointer3C1:
	dw Pointer3000E

Function3C3: ; $3C3
	ld hl,$41E
	ld bc,$1E0
	call $18B3
	ret

Function3CD: ; $3CD
; play a song or sound effect
; a=02: enemy destroyed
; a=03: electric trap
; a=04: megaman fires buster
; a=05: sniper joe fires bullet
; a=06: megaman takes damage
; a=08: megaman lands on ground
; a=09: enemy takes damage
; a=0A: sniper joe deflects buster
; a=0B: move cursor
; a=0F: megaman dies
; a=10: megaman picks up extra life
; a=11: cutting wheel appears
; a=12: health refill
; a=1E: disappearing platform appears
; a=21: open menu
; a=24: chose a robot master
; a=26: robot master select screen
; a=2A: title screen
; a=2B: icicle falls
; a=2E: password screen
	push hl
	push de
	ld d,a
	ld hl,$D920
	ld a,[hl]
	cp $14
	jr z,.next
	inc [hl]
	inc hl
	add l
	ld l,a
	ld a,h
	adc 0
	ld h,a
	ld [hl],d
.next
	pop de
	pop hl
	ret

Function3E4: ; $3E4
	push hl
	push de
	push bc
	ld hl,$D920
	ld a,[hl]
	ld [hl],0
	inc hl
	add l
	ld d,a
.loop
	ld a,l
	cp d
	jr z,.next
	ld a,[hli]
	push hl
	push de
	call $7DD
	pop de
	pop hl
	jr .loop
.next
	call $826
	pop bc
	pop de
	pop hl
	ret

Function405: ; $405
	ld a,[$DF99]
	push af
	ei
	ld a,[$DF9A]
	bankswitch
	call $400F
	pop af
	bankswitch
	ret

INCBIN "base1.gb",$41E,$5FE-$41E

Function5FE: ; $5FE
	xor a
	ld [$DFCF],a
	ld [$DFD0],a
	xor a
	ld [$CCFC],a
	ld [$DF8C],a
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
	call $15EA
	ld hl,$8000
	ld bc,$2000
	xor a
	call $1694
	ld hl,$C000
	ld bc,$2000
	xor a
	call $1694
	ld hl,$FF8A
	ld bc,$0072
	xor a
	call $1694
	di
	xor a
	ld [$FF0F],a
	ld [$FFFF],a
	ld hl,$FFFE
	ld sp,hl
	ld a,1
	bankswitch
	call $157D
	call $066A
	call $15D2
	ld a,0
	ld [$FF47],a
	ld [$FF48],a
	ld [$FF49],a
	ld [$DF9F],a
	call $1654
	jp $855

Function66A:
	ld hl,$C0A4
	ld bc,$5C
	ld a,$C9
	jp $1694

Function675:
	push af
	push hl
	push de
	push bc
	ld a,[$df85]
	inc a
	ld [$df85],a
	ld a,[$d85f]
	ld [$ff43],a
	ld a,[$d860]
	ld [$ff42],a
	ld a,[$df8a]
	ld [$ff40],a
	ld a,[$df9c]
	ld [$ff47],a
	ld a,[$df89]
	or a
	jr nZ,.next1
	ld a,$01
	ld [$df89],a
	call $ff80
	call $071c
	call $076e
	call $06e4
	ld hl,$df83
	inc [hl]
	jr nZ,.next1
	inc hl
	inc [hl]
.next1
	ld a,[$c131]
	or a
	jr nZ,.next2
	dec a
	ld [$c131],a
	ld a,[$df99]
	push af
	ei
	ld a,[$df9a]
	bankswitch
	call $400f
	pop af
	bankswitch
	ei
	xor a
	ld [$c131],a
.next2
	pop bc
	pop de
	pop hl
	ld a,$01
	ld [$df88],a
	pop af
	reti

Function6E4:
	ld hl,$c102
	ld a,[hl]
	or a
	ret Z
	ld [hl],$00
	inc l
	ld e,[hl]
	inc l
	ld d,[hl]
	inc l
	ldi a,[hl]
	ld h,[hl]
	ld l,a
	ld b,$02
.loop
	push bc
	push hl
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	ld hl,$001a
	add hl,de
	ld e,l
	ld d,h
	pop hl
	ld bc,$0014
	add hl,bc
	pop bc
	dec b
	jr nZ,.loop
	ret

Function71C:
	ld hl,$d865
	ld a,[hl]
	or a
	ret Z
	ld [hl],$00
	inc hl
	ldi a,[hl]
	ld h,[hl]
	ld l,a
	ld de,$ddd0
	ld bc,$0020
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	add hl,bc
	ld a,[de]
	inc e
	ld [hl],a
	ret

Function76E:
	ld hl,$d86b
	ld a,[hl]
	or a
	ret Z
	ld [hl],$00
	ld hl,$dde0
	ld a,[$d86c]
	ld e,a
	ld a,[$d86d]
	ld d,a
	ld a,e
	and $e0
	ld c,a
	ld b,$1f
	ld a,$03
.loop
	push af
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	ld a,e
	inc a
	and b
	or c
	ld e,a
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	ld a,e
	inc a
	and b
	or c
	ld e,a
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	ld a,e
	inc a
	and b
	or c
	ld e,a
	ldi a,[hl]
	ld [de],a
	inc e
	ldi a,[hl]
	ld [de],a
	ld a,e
	inc a
	and b
	or c
	ld e,a
	pop af
	dec a
	jr nZ,.loop
	ret

Function7B7:
	reti

Function7B8:
	reti

Function7B9:
	jp $157D

Function7BC:
	push af
.loop1
	ld a,[$ff41]
	and $03
	jr Z,.loop1
.loop2
	ld a,[$ff41]
	and $03
	jr nZ,.loop2
	xor a
	ld [$ff43],a
	ld a,[$df9e]
	ld [$ff42],a
	ld a,[$df9d]
	ld [$ff40],a
	ld a,[$df9f]
	ld [$ff47],a
	pop af
	reti

Function7DD:
	or a
	ret Z
	ld [$cc47],a
	push de
	push hl
	ld a,[$cc47]
	ld e,a
	ld d,$00
	ld hl,$4013
	add hl,de
	add hl,de
	ld a,[$df9a]
	bankswitch
	ldi a,[hl]
	ld h,[hl]
	ld l,a
	ld a,$01
	bankswitch
	push hl
	inc hl
	ld a,[hl]
	ld e,a
	ld a,[$d936]
	ld l,a
	ld a,[$d937]
	ld h,a
	or l
	jr Z,.next1
	inc hl
	ld a,e
	cp [hl]
	jr nC,.next1
	pop hl
	jr .next2
.next1
	pop hl
	ld a,h
	ld [$d937],a
	ld a,l
	ld [$d936],a
.next2
	pop hl
	pop de
	ret

Function826:
	ld a,[$D936]
	ld l,a
	ld a,[$D937]
	ld h,a
	or l
	call nz,$23C
	xor a
	ld [$D936],a
	ld [$D937],a
	ret

Function83A:
	ld a,[$DCBC]
	ld b,a
	ld c,1
.loop
	ld a,c
	cp b
	push bc
	ld [$CC4A],a
	call nz,$239
	pop bc
	inc c
	ld a,c
	cp $A
	jr c,.loop
	xor a
	ld [$D920],a
	ret

INCBIN "base1.gb",$855,$CC9-$855

InitializeLives: ; $CC9
	ld bc,$204
	ld a,3
	ld [$C108],a
	xor a
	ld [$DFA0],a
	ld [$DFD4],a
	call $542C
	ret

INCBIN "base1.gb",$CDC,$167E-$CDC

Function167E: ; $167E
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

Function1689: ; $1689
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

INCBIN "base1.gb",$1694,$1AE3-$1694

Function1AE3: ; $1AE3
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
.loop
	push bc
	ld b,0
	push de
	call $18B3
	pop de
	push hl
	ld hl,$0020
	add hl,de
	ld e,l
	ld d,h
	pop hl
	pop bc
	dec b
	jr nz,.loop
	ret

INCBIN "base1.gb",$1AFC,$1B6B-$1AFC

Function1B6B: ; $1B6B
	ld a,4
	bankswitch
	ld de,$8000
	ld hl,Pointer305
	call Function2516
	call Function167E
	ld a,1
	bankswitch
	ret

Function1B88: ; $1B88
	ld a,$07
	bankswitch
	ld hl,$0397
	call $2521
	ld d,h
	ld e,l
	ld hl,$0379
	call $250b
	ld bc,$8080
	call $1e81
	ld hl,$0399
	call $2521
	ld d,h
	ld e,l
	ld hl,$036d
	call $250b
	ld bc,$8360
	call $1e81
	ld hl,$039b
	call $2521
	ld d,h
	ld e,l
	ld hl,$0371
	call $250b
	ld bc,$8580
	call $1e81
	ld hl,$039d
	call $2521
	ld d,h
	ld e,l
	ld hl,$0375
	call $250b
	ld bc,$8820
	call $1e81
	ld hl,$039f
	call $2521
	ld a,$74
	ld [$cc57],a
	ld b,a
	ld a,$78
	ld [$cc58],a
	ld c,a
	ld a,[$df95]
	bit 3,a
	jr nZ,Function1BFF
Function1BF9:
	ld de,$c010
	call $1c6d
Function1BFF:
	ld hl,$03a1
	call $2521
	ld a,$24
	ld [$cc51],a
	ld b,a
	ld a,$28
	ld [$cc52],a
	ld c,a
	ld a,[$df95]
	bit 0,a
	jr nZ,Function1C1E
Function1C18:
	ld de,$c034
	call $1c6d
Function1C1E:
	ld hl,$03a3
	call $2521
	ld a,$74
	ld [$cc53],a
	ld b,a
	ld a,$28
	ld [$cc54],a
	ld c,a
	ld a,[$df95]
	bit 1,a
	jr nZ,Function1C3D
Function1C37:
	ld de,$c054
	call $1c6d
Function1C3D:
	ld hl,$03a5
	call $2521
	ld a,$24
	ld [$cc55],a
	ld b,a
	ld a,$78
	ld [$cc56],a
	ld c,a
	ld a,[$df95]
	bit 2,a
	jr nZ,Function1C5C
Function1C56:
	ld de,$c070
	call $1c6d
Function1C5C:
	ld hl,$8fe0
.loop
	xor a
	ldi [hl],a
	or l
	jr nZ,.loop
Function1C64:
	ld a,1
	bankswitch
	ret

Function1C6D: ; $1C6D
	ld a,b
	ld [$cc4b],a
	ld [$cc4d],a
	ld a,c
	ld [$cc4c],a
	ld [$cc4e],a
	ldi a,[hl]
	ld c,a
	and $0f
	ld [$cc50],a
	ld a,c
	swap a
	and $0f
	ld [$cc4f],a
	ld a,[$cc50]
	ld c,a
.loop1
	ld a,[$cc4f]
	ld b,a
.loop2
	ld a,[$cc4e]
	ld [de],a
	inc de
	ld a,[$cc4d]
	ld [de],a
	inc de
	add $08
	ld [$cc4d],a
	ldi a,[hl]
	ld [de],a
	inc de
	ldi a,[hl]
	ld [de],a
	inc de
	dec b
	ld a,b
	or a
	jr nZ,.loop2
	ld a,[$cc4e]
	add $10
	ld [$cc4e],a
	ld a,[$cc4b]
	ld [$cc4d],a
	dec c
	ld a,c
	or c
	jp nz,.loop1
.loop3
	ld a,[hl]
	cp $80
	ret Z
	ldi a,[hl]
	ld b,a
	ld a,[$cc4b]
	add b
	ld c,a
	ldi a,[hl]
	ld b,a
	ld a,[$cc4c]
	add b
	ld [de],a
	inc de
	ld a,c
	ld [de],a
	inc de
	ldi a,[hl]
	ld [de],a
	inc de
	ldi a,[hl]
	ld [de],a
	inc de
	jr .loop3

Function1CDE:
	ld a,[$ccfe]
	inc a
	ld [$ccfe],a
	cp $78
	jr c,Function1CF1
	ld a,$2c
	ld [$ccf9],a
	jp $1EBF
Function1CF1: ; $1CF1
	ld a,[$df8c]
	or a
	jr z,Function1D72
	dec a
	jp z,Function1DC2
	dec a
	jp z,$1E0E
	ld a,[$ccfe]
	and $07
	ret nZ
	ld a,$07
	bankswitch
	ld a,[$ccf6]
	or a
	jr nz,Function1D31
	inc a
	ld [$ccf6],a
	ld a,$02
	ld [$ccff],a
	ld hl,$039f
	call $1e6d
	call $2022
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1D31: ; $1D31
	dec a
	jr nz,Function1D53
	ld a,$02
	ld [$ccf6],a
	ld a,$03
	ld [$ccff],a
	ld hl,$039f
	call $1e6d
	call $2022
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1D53: ; $1D53
	ld a,$01
	ld [$ccf6],a
	ld a,$04
	ld [$ccff],a
	ld hl,$039f
	call $1e6d
	call $2022
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1D72: ; $1D72
	ld a,[$ccfe]
	and $07
	ret nZ
	ld a,$07
	bankswitch
	ld a,[$ccf6]
	or a
	jr nz,Function1DA4
	inc a
	ld [$ccf6],a
	ld a,$02
	ld [$ccff],a
	ld hl,$03a1
	call $1e6d
	call $202e
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1DA4: ; $1DA4
	xor a
	ld [$ccf6],a
	ld a,$01
	ld [$ccff],a
	ld hl,$03a1
	call $1e6d
	call $202e
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1DC2: ; $1DC2
	ld a,[$ccfe]
	and $07
	ret nZ
	ld a,$07
	bankswitch
	ld a,[$ccf6]
	or a
	jr nz,Function1DF4
	inc a
	ld [$ccf6],a
	ld a,$01
	ld [$ccff],a
	ld hl,$03a3
	call $1e6d
	call $203a
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1DF4: ; $1DF4
	ld a,$02
	ld [$ccff],a
	ld hl,$03a3
	call $1e6d
	call $203a
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1E0E: ; $1E0E
	ld a,[$ccfe]
	and $07
	ret nZ
	ld a,$07
	bankswitch
	ld a,[$ccf6]
	or a
	jr nz,Function1E40
	inc a
	ld [$ccf6],a
	ld a,$02
	ld [$ccff],a
	ld hl,$03a5
	call $1e6d
	call $2046
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1E40: ; $1E40
	ld a,$03
	ld [$ccff],a
	ld hl,$03a5
	call $1e6d
	call $2046
	call $1c6d
	ld a,$01
	bankswitch
	ret

Function1E5A: ; $1E5A
	ld hl,$C000
.loop1
	ld a,[de]
	ld [hli],a
	inc de
	dec b
	ld a,b
	or a
	jr nz,.loop1
.loop2
	xor a
	ld [hli],a
	ld a,l
	cp $A0
	jr c,.loop2
	ret

Function1E6D: ; $1E6D
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[$CCFF]
	add a
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ret

Function1E81: ; $1E81
	ld a,[de]
	ld [$ccf9],a
	inc de
Function1E86:
	ld a,[de]
	cp $ff
	jr Z,Function1EB1
	push hl
	push de
	ld e,a
	swap a
	and $0f
	ld d,a
	ld a,e
	and $0f
	swap a
	ld e,a
	add hl,de
	ld d,$10
Function1E9C:
	ld a,[hli]
	ld [bc],a
	inc bc
	dec d
	ld a,d
	or a
	jr nZ,Function1E9C
	pop de
	pop hl
	inc de
Function1EA7:
	ld a,[$ccf9]
	dec a
	ret Z
	ld [$ccf9],a
	jr Function1E86
Function1EB1:
	push de
	ld d,$10
Function1EB4:
	xor a
	ld [bc],a
	inc bc
	dec d
	or d
	jr nZ,Function1EB4
	pop de
	inc de
	jr Function1EA7

Function1EBF:
	ld a,7
	bankswitch
	ld a,[$df8c]
	or a
	jp Z,$1f29
	dec a
	jp Z,$1f7c
	dec a
	jp Z,$1fcf
	ld a,[$ccf9]
	cp $2c
	jr Z,Function1F0F
	ret nC
	ld hl,$03a9
	call $2521
	call $2052
	ld a,[$cc57]
	dec a
	ld [$cc57],a
	ld a,[$cc58]
	add e
	ld [$cc58],a
	ld a,$05
	ld [$ccff],a
	ld hl,$039f
	call $1e6d
	call $2022
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1F0F:
	ld a,$01
	ld [$ccff],a
	ld hl,$039f
	call $1e6d
	call $2022
	call $1c6d
	ld a,$01
	bankswitch
	ret

Function1F29:
	ld a,[$ccf9]
	cp $2c
	jr Z,Function1F62
	ret nC
	ld hl,$03a7
	call $2521
	call $2052
	ld a,[$cc51]
	inc a
	ld [$cc51],a
	ld a,[$cc52]
	add e
	ld [$cc52],a
	ld a,$03
	ld [$ccff],a
	ld hl,$03a1
	call $1e6d
	call $202e
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1F62:
	ld a,$01
	ld [$ccff],a
	ld hl,$03a1
	call $1e6d
	call $202e
	call $1c6d
	ld a,$01
	bankswitch
	ret

Function1F7C:
	ld a,[$ccf9]
	cp $2c
	jr Z,Function1FB5
	ret nC
	ld hl,$03a7
	call $2521
	call $2052
	ld a,[$cc53]
	dec a
	ld [$cc53],a
	ld a,[$cc54]
	add e
	ld [$cc54],a
	ld a,$03
	ld [$ccff],a
	ld hl,$03a3
	call $1e6d
	call $203a
	call $1c6d
	ld a,$01
	bankswitch
	ret
Function1FB5:
	ld a,$00
	ld [$ccff],a
	ld hl,$03a3
	call $1e6d
	call $203a
	call $1c6d
	ld a,$01
	bankswitch
	ret

Function1FCF:
	ld a,[$ccf9]
	cp $2c
	jr Z,Function2008
	ret nC
	ld hl,$03a9
	call $2521
	call $2052
	ld a,[$cc55]
	inc a
	ld [$cc55],a
	ld a,[$cc56]
	add e
	ld [$cc56],a
	ld a,$04
	ld [$ccff],a
	ld hl,$03a5
	call $1e6d
	call $2046
	call $1c6d
	ld a,$01
	ld [$df99],a
	ld [$2100],a
	ret
Function2008:
	ld a,$01
	ld [$ccff],a
	ld hl,$03a5
	call $1e6d
	call $2046
	call $1c6d
	ld a,$01
	ld [$df99],a
	ld [$2100],a
	ret

Function2022:
	ld a,[$CC57]
	ld b,a
	ld a,[$CC58]
	ld c,a
	ld de,$C000
	ret

Function202E:
	ld a,[$CC51]
	ld b,a
	ld a,[$CC52]
	ld c,a
	ld de,$C000
	ret

Function203A:
	ld a,[$CC53]
	ld b,a
	ld a,[$CC54]
	ld c,a
	ld de,$C000
	ret

Function2046:
	ld a,[$CC55]
	ld b,a
	ld a,[$CC56]
	ld c,a
	ld de,$C000
	ret

Function2052:
	ld a,[$CCF9]
	add l
	ld l,a
	ld a,0
	adc h
	ld h,a
	ld a,[hl]
	or a
	jr z,.next
	ld e,a
	ld a,[$CCF8]
	ld h,a
	ld l,e
	call $2075
	ld a,h
	ld [$CCF8],a
	ld e,l
.next
	ld a,[$CCF9]
	inc a
	ld [$CCF9],a
	ret

Function2075:
	ld a,l
	and $80
	jr Z,.next
	xor a
	sub l
	add h
	ld l,a
	and $0f
	ld h,a
	ld a,l
	swap a
	and $0f
	cpl
	inc a
	ld l,a
	ret
.next
	ld a,l
	add h
	ld l,a
	and $0f
	ld h,a
	ld a,l
	swap a
	and $0f
	ld l,a
	ret

Function2097:
	ld a,[$ccf9]
	cp $09
	ret nC
	ld de,$99c7
	ld b,$00
	ld c,a
	ld a,[$df8c]
	or a
	jr Z,.next1
	dec a
	jr Z,.next2
	dec a
	jr Z,.next3
	ld hl,.fireman
	jr .next4
.next1
	ld hl,.cutman
	jr .next4
.next2
	ld hl,.iceman
	jr .next4
.next3
	ld hl,.elecman
.next4
	ld a,c
	add hl,bc
	add e
	ld e,a
	ld a,[hl]
	or a
	ret Z
	ld [de],a
	ret

.cutman
	db "CUTMAN",0,0,0,0
.iceman
	db "ICEMAN",0,0,0,0
.elecman
	db "ELECMAN",0,0,0
.fireman
	db "FIREMAN",0,0,0

Function20F2:
	ld a,$06
	bankswitch
	ld de,$8a00
	ld hl,$0345
	call $2516
	call $167e
	ld de,$9000
	ld hl,$0357
	call $2516
	call $167e
	ld de,$8800
	ld hl,$0359
	call $2516
	call $167e
	ld de,$9800
	ld hl,$035b
	call $2516
	call $167e
	ld a,$01
	bankswitch
	ret

Function2133:
	ld a,[$ccf7]
	ld de,$988d
	ld b,$00
	ld c,a
	ld hl,$21c7
	add hl,bc
	add e
	ld e,a
	ld a,[hl]
	or a
	jr Z,.next
	ld [de],a
	ld a,[$ccf7]
	inc a
	ld [$ccf7],a
	ret
.next
	xor a
	ld [$ccf7],a
	ld a,[$ccfc]
	inc a
	ld [$ccfc],a
	ret

Function215B:
	ld a,[$DFC8]
	or a
	jr nz,.next
	ld a,[$DF8C]
	ret
.next
	ld a,[$DF97]
	add 4
	ret

Function216B:
	call $215b
	dec a
	sla a
	ld b,$00
	ld c,a
	ld hl,Pointers21A3
	add hl,bc
	ldi a,[hl]
	ld h,[hl]
	ld l,a
	ld a,[$ccf7]
	ld de,$98cd
	ld b,$00
	ld c,a
	jp $213f

Function2187:
	call $215b
	dec a
	sla a
	ld b,$00
	ld c,a
	ld hl,$21b5
	add hl,bc
	ldi a,[hl]
	ld h,[hl]
	ld l,a
	ld a,[$ccf7]
	ld de,$98ed
	ld b,$00
	ld c,a
	jp $213f

Pointers21A3:
	dw $21CF
	dw $21DE
	dw $21EA
	dw $21F7
	dw $2202
	dw $221F
	dw $2212
	dw $222B
	dw $2237
	dw $21D7
	dw $21E2
	dw $21F2
	dw $21FC
	dw $2208
	dw $2226
	dw $2217
	dw $2232
	dw $223E

INCBIN "base1.gb",$21C7,$2245-$21C7

Function2245:
	ld a,6
	bankswitch
	ld de,$9000
	ld hl,Pointer35D
	call $2516
	call $167E
	ld de,$8800
	ld hl,$35F
	call $2516
	call $167E
	ld de,$9800
	ld hl,$361
	call $2521
	call $22F5
	ld a,1
	bankswitch
	ret

Function227A:
	ld a,6
	bankswitch
	ld de,$9000
	ld hl,Pointer363
	call $2516
	call $167E
	ld de,$9800
	ld hl,$365
	call $2521
	call $22F5
	ld a,1
	bankswitch
	ret

Function22A3:
	ld a,6
	bankswitch
	ld de,$9000
	ld hl,Pointer367
	call $2516
	call $167E
	ld de,$9800
	ld hl,$369
	call $2521
	call $22F5
	ld a,1
	bankswitch
	ret

Function22CC:
	ld a,6
	bankswitch
	ld de,$9000
	ld hl,Pointer367
	call $2516
	call $167E
	ld de,$9800
	ld hl,$36B
	call $2521
	call $22F5
	ld a,1
	bankswitch
	ret

Function22F5:
	ld c,$12
.loop1
	ld b,$14
.loop2
	ld a,[hli]
	ld [de],a
	inc de
	dec b
	ld a,b
	or a
	jr nz,.loop2
	ld a,$C
	add e
	ld e,a
	ld a,0
	adc d
	ld d,a
	dec c
	ld a,c
	or a
	jr nz,.loop1
	ret

Function230F: ; $230F
	ld a,BANK(_MegaManSpriteGFX)
	bankswitch

	; load Mega Man's sprite into vram
	ld de,$8000
	ld hl,__MegaManSpriteGFX
	call Function2516
	call Function167E

	; load item pickup sprites into vram
	ld de,$8800
	ld hl,__ItemPickupSpriteGFX
	call Function2516
	call Function167E

	ld a,1
	bankswitch
	ret

Function2338: ; $2338
	ld a,BANK(_HealthBarGFX)
	bankswitch

	; load Mega Man's health bar graphics into vram
	ld de,$9650
	ld hl,__HealthBarGFX
	call Function2516
	call Function167E

	; load Mega Man's live counter 7-segment graphics into vram
	ld de,$9500
	ld hl,__SevenSegmentGFX
	call Function2516
	call Function167E

	ld a,1
	bankswitch
	ret

Function2361: ; $2361
	ld a,BANK(_UnknownBulletGFX)
	bankswitch

	; load current weapon bullet into vram
	ld a,[$DFA0] ; current weapon
	ld hl,.bullets
	call $1968
	call Function2524
	ld a,[hli]
	swap a
	ld b,a
	and $F0
	ld c,a
	ld a,b
	and $F
	ld b,a
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld de,$8720
	call $18B3

	ld a,1
	bankswitch
	ret

.bullets
	dw __UnknownBulletGFX
	dw __RollingCutterGFX
	dw __ThunderBeamGFX
	dw __IceSlasherGFX
	dw __FireStormGFX
	dw __CarryGFX
	dw __AtomicFireGFX
	dw __TimeStopperGFX
	dw __QuickBoomerangGFX
	dw __BubbleLeadGFX
	dw __MirrorBusterGFX

INCBIN "base1.gb",$23A8,$2516-$23A8

Function2516: ; $2516
	call Function2524
	ld a,[hli]
	ld c,a
	ld a,[hli]
	ld b,a
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ret

Function2521: ; $2521
; copies the pointer pointed to by hl into hl
	ld a,[hli]
	ld h,[hl]
	ld l,a
; now hl contains that pointer
Function2524: ; $2524
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ret

INCBIN "base1.gb",$252B,$2C37-$252B

Function2C37: ; $2C37
	call $2E6A
	ld a,[$DF86]
	bit 0,a
	ld de,$CF36
	jr nz,.next
	ld de,$CF5E
.next
	ld b,$1A
	ld c,$E
	ld a,[$CE58]
	or a
	jr z,.next2
	ld b,$28
	ld c,0
	ld hl,$FFF2
	add hl,de
	ld e,l
	ld d,h
.next2
	ld h,$CF
	ld l,c
	ld a,[de]
	inc e
	ld [hl],a
	ld h,$C0
	ld l,a
	ld [hl],$A0
	inc c
	dec b
	jr nz,.next2
	ret

INCBIN "base1.gb",$2C6B,$3496-$2C6B

Function3496: ; $3496
	push de
	rr d
	rr e
	ld a,e
	rr d
	rr e
	and $F
	ld d,a
	ld a,e
	and $F0
	or d
	ld e,a
	ld d,$DE
	ld a,[hli]
	ld [de],a
	pop de
	push hl
	ld l,a
	ld h,0
	add hl,hl
	add hl,hl
	ld a,[$D8C4]
	ld c,a
	ld a,[$D8C5]
	ld b,a
	add hl,bc
	ld a,[hli]
	ld [de],a
	push de
	ld a,e
	add $20
	ld e,a
	jr nc,.next
	inc d
.next
	ld c,e
	ld b,d
	ld a,[hli]
	ld [de],a
	pop de
	inc e
	ld a,[hli]
	ld [de],a
	inc c
	ld a,[hli]
	ld [bc],a
	pop hl
	ret

INCBIN "base1.gb",$34D3,$3979-$34D3

	freespace $3979

SECTION "bank1",ROMX,BANK[$1]
INCBIN "base1.gb",$4000,$574E-$4000

; -----

Function574E:
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
	jr .littleweap

.life
	ld a,16
	call Function3CD
	ld hl,$C108
	ld a,[hl]
	inc a
	cp 10
	jr c,.nextlife
	ld a,10 ; maximum of 9 extra lives
.nextlife
	ld [hl],a
	ret

.bighealth
	ld d,10
	jr .healaddress
.littlehealth
	ld d,2
.healaddress
	ld hl,$DFA3
	jr .heal

.bigweap
	ld d,10
	jr .weapaddress
.littleweap
	ld d,2
.weapaddress
	ld a,[$DFA0] ; current weapon
	or a
	ret z ; can't heal the buster
	add $A3 ; $DFA3 & $FF???
	ld l,a
	ld h,$DF ; $DFA3 >> 8???
.heal
	ld a,d
	ld [$D4C1],a
	ld a,l
	ld [$D4BF],a
	ld a,h
	ld [$D4C0],a
	ld hl,$DFB1
	set 1,[hl]
	jr Function57AB

Function57A1:
	ld hl,$D4BE
	inc [hl]
	ld a,[hl]
	cp 4
	ret c
	xor a
	ld [hl],a
Function57AB:
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
	ld a,$12
	call Function3CD
	ld a,8
	add [hl]
	ld [hl],a
	cp $98
	ret c
	ld [hl],$98
	ret
.nomoreheal
	ld hl,$DFB1
	res 1,[hl]
	ret

; -----

INCBIN "base1.gb",$57D5,$60AF-$57D5

Function60AF: ; $1:60AF
	di
	xor a
	ld [$FF41],a
	ld a,[$DF8A]
	and $7B
	ld [$DF8A],a
	call $15EA
	call $166E
	call $1A7D
	call Function610A
	ld a,$E4
	ld [$DF9C],a
	ld a,$A
	ld [$DF9A],a
	ld a,$2A
	call Function3CD
	xor a
	ld [$FF0F],a
	ld a,1
	ld [$FFFF],a
	call $1654
	ei
	xor a
	ld [$CC00],a
	ld b,$78
.loop
	push bc
	call $1618
	call $157D
	pop bc
	dec b
	jr nz,.loop
.loop2
	call $1618
	call $157D
	call $612A
	ld a,[$FF8A]
	bit 3,a
	jr z,.loop2
	call $248
	ld a,2
	ld [$DF9A],a
	ret

Function610A: ; $1:610A
	ld a,$E4
	ld [$FF48],a
	ld hl,$611A
	ld de,$8000
	ld bc,EndTitleScreenArrowTile-TitleScreenArrowTile
	jp Function167E

TitleScreenArrowTile: ; $1:611A
	db $00,$00,$40,$40,$60,$60,$70,$50,$78,$48,$70,$50,$60,$60,$40,$40
EndTitleScreenArrowTile

INCBIN "base1.gb",$612A,$738D-$612A

	freespace $738D

SECTION "bank2",ROMX,BANK[$2]

Function8000: ; $2:4000
	jp $4082
Function8003: ; $2:4003
	jp $4323
Function8006: ; $2:4006
	jp $40DD
Function8009: ; $2:4009
	jp $40DF
Function800C: ; $2:400C
	jp $40D3
Function800F: ; $2:400F
	jp $43F3
Function8012: ; $2:8012
	jp $4317

Pointers8015: ; $2:8015
	dw $5054
	dw $5096
	dw $50E6
	dw $5109
	dw $5126
	dw $5A87
	dw $5143
	dw $5181
	dw $51C7
	dw $51FD
	dw $521A
	dw $5239
	dw $525A
	dw $528C
	dw $531E
	dw $5353
	dw $5411
	dw $5162
	dw $53F4
	dw $5277
	dw $5BEA
	dw $6691
	dw $6228
	dw $6BAB
	dw $5500
	dw $5898
	dw $59EA
	dw $5AAE
	dw $5AD1
	dw $5A5E
	dw $5A24
	dw $5088
	dw $5B0E
	dw $6F41
	dw $744D
	dw $74F8
	dw $74F8
	dw $77DF
	dw $77DF
	dw $78E7
	dw $78E7
	dw $78E7
	dw $5B31
	dw $5B52
	dw $78E7
	dw $78E7
	dw $5B63
	dw $5B90
	dw $5BBD

Function8077: ; $2:4077
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

INCBIN "base1.gb",$8082,$BCA2-$8082

	freespace $BCA2

SECTION "bank3",ROMX,BANK[$3]
INCBIN "base1.gb",$C000,$FBE5-$C000

	freespace $FBE5

SECTION "bank4",ROMX,BANK[$4]

_MegaManSpriteGFX:
	dw MegaManSpriteGFX
_ItemPickupSpriteGFX:
	dw ItemPickupSpriteGFX
_UnknownBulletGFX:
	dw UnknownBulletGFX
_RollingCutterGFX:
	dw RollingCutterGFX
_ThunderBeamGFX:
	dw ThunderBeamGFX
_IceSlasherGFX:
	dw IceSlasherGFX
_FireStormGFX:
	dw FireStormGFX
_CarryGFX:
	dw CarryGFX
_AtomicFireGFX:
	dw AtomicFireGFX
_TimeStopperGFX:
	dw TimeStopperGFX
_QuickBoomerangGFX:
	dw QuickBoomerangGFX
_BubbleLeadGFX:
	dw BubbleLeadGFX
_MirrorBusterGFX:
	dw MirrorBusterGFX
_HealthBarGFX:
	dw HealthBarGFX
_SevenSegmentGFX:
	dw SevenSegmentGFX
Pointer1001E:
	dw Data10DA5
Pointer10020:
	dw $4FDB
Pointer10022:
	dw $4FDE
Pointer10024:
	dw $4FE1
Pointer10026:
	dw $4FE4
Pointer10028:
	dw $4FE7
Pointer1002A:
	dw $4FEA
Pointer1002C:
	dw $4FEF
Pointer1002E:
	dw $4FED
Pointer10030:
	dw $4FF2
Pointer10032:
	dw $4FF5
Pointer10034:
	dw $4FF8
Pointer10036:
	dw $4FFB
Pointer10038:
	dw $4FFE
Pointer1003A:
	dw $5001
Pointer1003C:
	dw $5004
Pointer1003E:
	dw $5007
Pointer10040:
	dw $500A
Pointer10042:
	dw $500D
Pointer10044:
	dw $5010
Pointer10046:
	dw $5013
Pointer10048:
	dw $5016
Pointer1004A:
	dw $5019
Pointer1004C:
	dw $501C
Pointer1004E:
	dw $501F
Pointer10050:
	dw $5022
Pointer10052:
	dw $5025

MegaManSpriteGFX:
	dw 114*16
	dw MegaManSpriteTiles

ItemPickupSpriteGFX:
	dw 11*16
	dw ItemPickupSpriteTiles

MegaManSpriteTiles:
INCBIN "base1.gb",$1005C,114*16

ItemPickupSpriteTiles:
INCBIN "base1.gb",$1077C,11*16

; bullets. format is: number of tiles, pointer to tile.
UnknownBulletGFX: ; ???
	db 1
	dw UnknownBulletTiles
RollingCutterGFX: ; rolling cutter
	db 4
	dw RollingCutterTiles
ThunderBeamGFX: ; thunder beam
	db 14
	dw ThunderBeamTiles
IceSlasherGFX: ; ice slasher
	db 8
	dw IceSlasherTiles
FireStormGFX: ; fire storm
	db 10
	dw FireStormTiles
CarryGFX: ; carry
	db 12
	dw CarryTiles
AtomicFireGFX: ; atomic fire
	db 12
	dw AtomicFireTiles
TimeStopperGFX: ; time stopper
	db 3
	dw TimeStopperTiles
QuickBoomerangGFX: ; quick boomerang
	db 2
	dw QuickBoomerangTiles
BubbleLeadGFX: ; bubble lead
	db 10
	dw BubbleLeadTiles
MirrorBusterGFX: ; mirror buster
	db 9
	dw MirrorBusterTiles

UnknownBulletTiles:
INCBIN "base1.gb",$1084D,1*16
RollingCutterTiles:
INCBIN "base1.gb",$1085D,4*16
ThunderBeamTiles:
INCBIN "base1.gb",$1089D,14*16
IceSlasherTiles:
INCBIN "base1.gb",$1097D,8*16
FireStormTiles:
INCBIN "base1.gb",$109FD,10*16
CarryTiles:
INCBIN "base1.gb",$10A9D,12*16
AtomicFireTiles:
INCBIN "base1.gb",$10B5D,12*16
TimeStopperTiles:
INCBIN "base1.gb",$10C1D,3*16
QuickBoomerangTiles:
INCBIN "base1.gb",$10C4D,2*16
BubbleLeadTiles:
INCBIN "base1.gb",$10C6D,10*16
MirrorBusterTiles:
INCBIN "base1.gb",$10D0D,9*16

HealthBarGFX:
	; health bar, and ¾ of Mega Man's face
	dw 11*16
	dw HealthBarTiles
SevenSegmentGFX:
	; ¼ of Mega Man's face, 7-segment lives count, and "WPN"
	dw 16*16
	dw SevenSegmentTiles
Data10DA5:
	dw 8*16
	dw Tiles10F5B

HealthBarTiles:
INCBIN "base1.gb",$10DA9,11*16

SevenSegmentTiles:
INCBIN "base1.gb",$10E59,16*16

Data10F59:
	db 4,8

Tiles10F5B:
INCBIN "base1.gb",$10F5B,8*16

INCBIN "base1.gb",$10FDB,$12FE0-$10FDB

	freespace $12FE0

SECTION "bank5",ROMX,BANK[$5]

CutManLevelDataPointer:
	dw CutManLevelData
IceManLevelDataPointer:
	dw IceManLevelData
FireManLevelDataPointer:
	dw FireManLevelData
ElecManLevelDataPointer:
	dw ElecManLevelData

CutManLevelData:
INCBIN "base1.gb",$14008,$1492F-$14008

IceManLevelData:
INCBIN "base1.gb",$1492F,$1525A-$1492F

FireManLevelData:
INCBIN "base1.gb",$1525A,$15F72-$1525A

ElecManLevelData:
INCBIN "base1.gb",$15F72,$17000-$15F72

	freespace $17000

SECTION "bank6",ROMX,BANK[$6]

Pointer18000:
	dw $402A
Pointer18002:
	dw $402E
Pointer18004:
	dw $4032
Pointer18006:
	dw $4034
Pointer18008:
	dw $4036
Pointer1800A:
	dw $4038
Pointer1800C:
	dw $403A
Pointer1800E:
	dw $4D07
Pointer18010:
	dw $4D0B
Pointer18012:
	dw $4D0D
Pointer18014:
	dw $4D0F
Pointer18016:
	dw $4D13
Pointer18018:
	dw $4D17
Pointer1801A:
	dw $5DCF
Pointer1801C:
	dw $5DD3
Pointer1801E:
	dw $5DD7
Pointer18020:
	dw $5DD9
Pointer18022:
	dw $5DDD
Pointer18024:
	dw $5DDF
Pointer18026:
	dw $5DE3
Pointer18028:
	dw $5DE5

INCBIN "base1.gb",$1802A,$14C-$2A

TitleScreenTilemap: ; $6:414C
INCBIN "base1.gb",$1814C,20*11

INCBIN "base1.gb",$18228,$1BBB7-$18228

	freespace $1BBB7

SECTION "bank7",ROMX,BANK[$7]
Pointer1C000:
	dw $403E
Pointer1C002:
	dw $4041
Pointer1C004:
	dw $4044
Pointer1C006:
	dw $4047
Pointer1C008:
	dw $404A
Pointer1C00A:
	dw $404D
Pointer1C00C:
	dw $4050
Pointer1C00E:
	dw $4053
Pointer1C010:
	dw $4056
Pointer1C012:
	dw $4059
Pointer1C014:
	dw $405C
Pointer1C016:
	dw $405F
Pointer1C018:
	dw $4062
Pointer1C01A:
	dw $4065
Pointer1C01C:
	dw $4068
Pointer1C01E:
	dw $406B
Pointer1C020:
	dw $406E
Pointer1C022:
	dw $4071
Pointer1C024:
	dw $4074
Pointer1C026:
	dw $4077
Pointer1C028:
	dw $407A
Pointer1C02A:
	dw $407D
Pointer1C02C:
	dw $407F
Pointer1C02E:
	dw $4081
Pointer1C030:
	dw $4083
Pointer1C032:
	dw $4085
Pointer1C034:
	dw $4091
Pointer1C036:
	dw $4099
Pointer1C038:
	dw $40A1
Pointer1C03A:
	dw $40AB
Pointer1C03C:
	dw $40AD

INCBIN "base1.gb",$1C03E,$1F813-$1C03E

	freespace $1F813

SECTION "bank8",ROMX,BANK[$8]

Pointer20000:
	dw $4079
Pointer20002:
	dw $4DD9
Pointer20004:
	dw $580A
Pointer20006:
	dw $6F67

INCBIN "base1.gb",$20008,$23829-$20008

	freespace $23829

SECTION "bank9",ROMX,BANK[$9]
INCBIN "base1.gb",$24000,$27D32-$24000

	freespace $27D32

SECTION "bankA",ROMX,BANK[$A]
INCBIN "base1.gb",$28000,$2B20D-$28000

	freespace $2B20D

SECTION "bankB",ROMX,BANK[$B]
INCBIN "base1.gb",$2C000,$2D5D0-$2C000

	freespace $2D5D0

SECTION "bankC",ROMX,BANK[$C]

Pointer30000:
	dw $4046
Pointer30002:
	dw $4053
Pointer30004:
	dw $4060
Pointer30006:
	dw $406D
Pointer30008:
	dw $558A
Pointer3000A:
	dw $55B1
Pointer3000C:
	dw $5597
Pointer3000E:
	dw $55A4

Function30010: ; $C:4010
	jp $69C9

Function30013: ; $C:4013
	jp $698C

INCBIN "base1.gb",$30016,$33395-$30016

	freespace $33395

SECTION "bankD",ROMX,BANK[$D]
INCBIN "base1.gb",$34000,$36311-$34000

	freespace $36311

SECTION "bankE",ROMX,BANK[$E]
INCBIN "base1.gb",$38000,$3BBAF-$38000

	freespace $3BBAF

SECTION "bankF",ROMX,BANK[$F]

	freespace $3C000
