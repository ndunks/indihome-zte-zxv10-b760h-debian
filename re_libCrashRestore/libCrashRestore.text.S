
libCrashRestore.so:     file format elf32-littlearm


Disassembly of section .text:

00001588 <__restore_core_regs-0xdec>:
    1588:	e59f0004 	ldr	r0, [pc, #4]	; 1594 <free@plt+0x1c>
    158c:	e08f0000 	add	r0, pc, r0
    1590:	eaffff82 	b	13a0 <__cxa_finalize@plt>
    1594:	0000fa6c 	andeq	pc, r0, ip, ror #20
    1598:	e3500000 	cmp	r0, #0
    159c:	012fff1e 	bxeq	lr
    15a0:	e12fff10 	bx	r0
    15a4:	e1a01000 	mov	r1, r0
    15a8:	e59f200c 	ldr	r2, [pc, #12]	; 15bc <free@plt+0x44>
    15ac:	e59f000c 	ldr	r0, [pc, #12]	; 15c0 <free@plt+0x48>
    15b0:	e08f2002 	add	r2, pc, r2
    15b4:	e08f0000 	add	r0, pc, r0
    15b8:	eaffffaf 	b	147c <__cxa_atexit@plt>
    15bc:	0000fa48 	andeq	pc, r0, r8, asr #20
    15c0:	ffffffdc 			; <UNDEFINED> instruction: 0xffffffdc
    15c4:	2010b5f0 			; <UNDEFINED> instruction: 0x2010b5f0
    15c8:	2103b093 	swpcs	fp, r3, [r3]	; <UNPREDICTABLE>
    15cc:	f7ff2211 			; <UNDEFINED> instruction: 0xf7ff2211
    15d0:	1e06ff05 	cdpne	15, 0, cr15, cr6, cr5, {0}
    15d4:	4949da05 	stmdbmi	r9, {r0, r2, r9, fp, ip, lr, pc}^
    15d8:	20044a49 	andcs	r4, r4, r9, asr #20
    15dc:	447a4479 	ldrbtmi	r4, [sl], #-1145	; 0xfffffb87
    15e0:	2710e02a 	ldrcs	lr, [r0, -sl, lsr #32]
    15e4:	2100ac05 	tstcs	r0, r5, lsl #24
    15e8:	a80b221c 	stmdage	fp, {r2, r3, r4, r9, sp}
    15ec:	ff6cf7ff 			; <UNDEFINED> instruction: 0xff6cf7ff
    15f0:	220c2100 	andcs	r2, ip, #0, 2
    15f4:	f7ff1c20 			; <UNDEFINED> instruction: 0xf7ff1c20
    15f8:	2500ff67 	strcs	pc, [r0, #-3943]	; 0xfffff099
    15fc:	f7ff8027 			; <UNDEFINED> instruction: 0xf7ff8027
    1600:	1c21feb7 	stcne	14, cr15, [r1], #-732	; 0xfffffd24
    1604:	60a56060 	adcvs	r6, r5, r0, rrx
    1608:	ac08220c 	sfmge	f2, 4, [r8], {12}
    160c:	f7ff1c30 			; <UNDEFINED> instruction: 0xf7ff1c30
    1610:	1c20ff15 	stcne	15, cr15, [r0], #-84	; 0xffffffac
    1614:	220c1c29 	andcs	r1, ip, #10496	; 0x2900
    1618:	ff56f7ff 			; <UNDEFINED> instruction: 0xff56f7ff
    161c:	27828027 	strcs	r8, [r2, r7, lsr #32]
    1620:	1c3800ff 	ldcne	0, cr0, [r8], #-1020	; 0xfffffc04
    1624:	fecaf7ff 	mcr2	7, 6, pc, cr10, cr15, {7}	; <UNPREDICTABLE>
    1628:	42ac1e04 	adcmi	r1, ip, #4, 28	; 0x40
    162c:	2004d109 	andcs	sp, r4, r9, lsl #2
    1630:	4a354934 	bmi	d53b08 <__bss_end__+0xd42b00>
    1634:	447a4479 	ldrbtmi	r4, [sl], #-1145	; 0xfffffb87
    1638:	fee0f7ff 	mcr2	7, 7, pc, cr0, cr15, {7}	; <UNPREDICTABLE>
    163c:	42402001 	submi	r2, r0, #1
    1640:	6007e05a 	andvs	lr, r7, sl, asr r0
    1644:	fe94f7ff 	mrc2	7, 4, pc, cr4, cr15, {7}
    1648:	60e02303 	rscvs	r2, r0, r3, lsl #6
    164c:	930080e5 	movwls	r8, #229	; 0xe5
    1650:	492e1c23 	stmdbmi	lr!, {r0, r1, r5, sl, fp, ip}
    1654:	1c183310 	ldcne	3, cr3, [r8], {16}
    1658:	93014479 	movwls	r4, #5241	; 0x1479
    165c:	fe50f7ff 	mrc2	7, 2, pc, cr0, cr15, {7}
    1660:	ab036822 	blge	db6f0 <__bss_end__+0xca6e8>
    1664:	9204930d 	andls	r9, r4, #872415232	; 0x34000000
    1668:	920baa08 	andls	sl, fp, #8, 20	; 0x8000
    166c:	2301220c 	movwcs	r2, #4620	; 0x120c
    1670:	920cad0b 	andls	sl, ip, #704	; 0x2c0
    1674:	22001c29 	andcs	r1, r0, #10496	; 0x2900
    1678:	4f251c30 	svcmi	0x00251c30
    167c:	9403930e 	strls	r9, [r3], #-782	; 0xfffffcf2
    1680:	fee4f7ff 	mcr2	7, 7, pc, cr4, cr15, {7}	; <UNPREDICTABLE>
    1684:	447f4a23 	ldrbtmi	r4, [pc], #-2595	; 168c <free@plt+0x114>
    1688:	1c399b01 			; <UNDEFINED> instruction: 0x1c399b01
    168c:	2004447a 	andcs	r4, r4, sl, ror r4
    1690:	feb4f7ff 	mrc2	7, 5, pc, cr4, cr15, {7}
    1694:	21002282 	smlabbcs	r0, r2, r2, r2
    1698:	1c2000d2 	stcne	0, cr0, [r0], #-840	; 0xfffffcb8
    169c:	ff14f7ff 			; <UNDEFINED> instruction: 0xff14f7ff
    16a0:	1c394a1d 			; <UNDEFINED> instruction: 0x1c394a1d
    16a4:	2004447a 	andcs	r4, r4, sl, ror r4
    16a8:	fea8f7ff 	mcr2	7, 5, pc, cr8, cr15, {7}	; <UNPREDICTABLE>
    16ac:	f7ff481b 			; <UNDEFINED> instruction: 0xf7ff481b
    16b0:	1c29fe4f 	stcne	14, cr15, [r9], #-316	; 0xfffffec4
    16b4:	22401c30 	subcs	r1, r0, #48, 24	; 0x3000
    16b8:	ff4ef7ff 			; <UNDEFINED> instruction: 0xff4ef7ff
    16bc:	1c031c39 	stcne	12, cr1, [r3], {57}	; 0x39
    16c0:	2b002004 	blcs	96d8 <__exidx_end+0x5fe0>
    16c4:	4a16dc0c 	bmi	5b86fc <__bss_end__+0x5a76f4>
    16c8:	f7ff447a 			; <UNDEFINED> instruction: 0xf7ff447a
    16cc:	4815fe97 	ldmdami	r5, {r0, r1, r2, r4, r7, r9, sl, fp, ip, sp, lr, pc}
    16d0:	fe3ef7ff 	mrc2	7, 1, pc, cr14, cr15, {7}
    16d4:	3b019b00 	blcc	682dc <__bss_end__+0x572d4>
    16d8:	2b009300 	blcs	262e0 <__bss_end__+0x152d8>
    16dc:	e004d1b8 			; <UNDEFINED> instruction: 0xe004d1b8
    16e0:	9b014a11 	blls	53f2c <__bss_end__+0x42f24>
    16e4:	f7ff447a 			; <UNDEFINED> instruction: 0xf7ff447a
    16e8:	1c30fe89 	ldcne	14, cr15, [r0], #-548	; 0xfffffddc
    16ec:	ff3cf7ff 			; <UNDEFINED> instruction: 0xff3cf7ff
    16f0:	f7ff1c20 			; <UNDEFINED> instruction: 0xf7ff1c20
    16f4:	2000ff41 	andcs	pc, r0, r1, asr #30
    16f8:	bdf0b013 	ldcllt	0, cr11, [r0, #76]!	; 0x4c
    16fc:	000019b8 			; <UNDEFINED> instruction: 0x000019b8
    1700:	000019be 			; <UNDEFINED> instruction: 0x000019be
    1704:	00001960 	andeq	r1, r0, r0, ror #18
    1708:	00001987 	andeq	r1, r0, r7, lsl #19
    170c:	00001977 	andeq	r1, r0, r7, ror r9
    1710:	0000190e 	andeq	r1, r0, lr, lsl #18
    1714:	0000194c 	andeq	r1, r0, ip, asr #18
    1718:	00001947 	andeq	r1, r0, r7, asr #18
    171c:	0000c350 	andeq	ip, r0, r0, asr r3
    1720:	0000193f 	andeq	r1, r0, pc, lsr r9
    1724:	00030d40 	andeq	r0, r3, r0, asr #26
    1728:	00001945 	andeq	r1, r0, r5, asr #18
    172c:	b089b530 	addlt	fp, r9, r0, lsr r5
    1730:	21004668 	tstcs	r0, r8, ror #12
    1734:	466d2220 	strbtmi	r2, [sp], -r0, lsr #4
    1738:	fec6f7ff 	mcr2	7, 6, pc, cr6, cr15, {7}	; <UNPREDICTABLE>
    173c:	48162400 	ldmdami	r6, {sl, sp}
    1740:	1c294a16 			; <UNDEFINED> instruction: 0x1c294a16
    1744:	447a4478 	ldrbtmi	r4, [sl], #-1144	; 0xfffffb88
    1748:	fe70f7ff 	mrc2	7, 3, pc, cr0, cr15, {7}
    174c:	f7ff1c28 			; <UNDEFINED> instruction: 0xf7ff1c28
    1750:	2801feeb 	stmdacs	r1, {r0, r1, r3, r5, r6, r7, r9, sl, fp, ip, sp, lr, pc}
    1754:	4912d108 	ldmdbmi	r2, {r3, r8, ip, lr, pc}
    1758:	1c234a12 			; <UNDEFINED> instruction: 0x1c234a12
    175c:	447a4479 	ldrbtmi	r4, [sl], #-1145	; 0xfffffb87
    1760:	f7ff2004 			; <UNDEFINED> instruction: 0xf7ff2004
    1764:	e00dfe4b 	and	pc, sp, fp, asr #28
    1768:	4a10490f 	bmi	413bac <__bss_end__+0x402ba4>
    176c:	20041c23 	andcs	r1, r4, r3, lsr #24
    1770:	447a4479 	ldrbtmi	r4, [sl], #-1145	; 0xfffffb87
    1774:	fe42f7ff 	mcr2	7, 2, pc, cr2, cr15, {7}	; <UNPREDICTABLE>
    1778:	480d3401 	stmdami	sp, {r0, sl, ip, sp}
    177c:	fde8f7ff 	stc2l	7, cr15, [r8, #1020]!	; 0x3fc
    1780:	d1dc2c14 	bicsle	r2, ip, r4, lsl ip
    1784:	4a0c490b 	bmi	313bb8 <__bss_end__+0x302bb0>
    1788:	44792004 	ldrbtmi	r2, [r9], #-4
    178c:	f7ff447a 			; <UNDEFINED> instruction: 0xf7ff447a
    1790:	b009fe35 	andlt	pc, r9, r5, lsr lr	; <UNPREDICTABLE>
    1794:	46c0bd30 			; <UNDEFINED> instruction: 0x46c0bd30
    1798:	000018fb 	strdeq	r1, [r0], -fp
    179c:	00001910 	andeq	r1, r0, r0, lsl r9
    17a0:	00001838 	andeq	r1, r0, r8, lsr r8
    17a4:	000018fa 	strdeq	r1, [r0], -sl
    17a8:	00001824 	andeq	r1, r0, r4, lsr #16
    17ac:	00001916 	andeq	r1, r0, r6, lsl r9
    17b0:	0007a120 	andeq	sl, r7, r0, lsr #2
    17b4:	0000180a 	andeq	r1, r0, sl, lsl #16
    17b8:	00001917 	andeq	r1, r0, r7, lsl r9
    17bc:	b093b5f0 			; <UNDEFINED> instruction: 0xb093b5f0
    17c0:	2100ac02 	tstcs	r0, r2, lsl #24
    17c4:	1c202220 	sfmne	f2, 4, [r0], #-128	; 0xffffff80
    17c8:	f7ffad0a 			; <UNDEFINED> instruction: 0xf7ffad0a
    17cc:	2100fe7d 	tstcs	r0, sp, ror lr	; <UNPREDICTABLE>
    17d0:	1c282220 	sfmne	f2, 4, [r8], #-128	; 0xffffff80
    17d4:	fe78f7ff 	mrc2	7, 3, pc, cr8, cr15, {7}
    17d8:	4a564955 	bmi	1593d34 <__bss_end__+0x1582d2c>
    17dc:	44792004 	ldrbtmi	r2, [r9], #-4
    17e0:	f7ff447a 			; <UNDEFINED> instruction: 0xf7ff447a
    17e4:	f001fe0b 			; <UNDEFINED> instruction: 0xf001fe0b
    17e8:	2100fb5f 	tstcs	r0, pc, asr fp	; <UNPREDICTABLE>
    17ec:	1c0a4e52 	stcne	14, cr4, [sl], {82}	; 0x52
    17f0:	1c30447e 	cfldrsne	mvf4, [r0], #-504	; 0xfffffe08
    17f4:	fda4f7ff 	stc2	7, cr15, [r4, #1020]!	; 0x3fc
    17f8:	d0092800 	andle	r2, r9, r0, lsl #16
    17fc:	f7ff484f 			; <UNDEFINED> instruction: 0xf7ff484f
    1800:	4a4ffda7 	bmi	1400ea4 <__bss_end__+0x13efe9c>
    1804:	447a1c31 	ldrbtmi	r1, [sl], #-3121	; 0xfffff3cf
    1808:	f7ff2004 			; <UNDEFINED> instruction: 0xf7ff2004
    180c:	e7ecfdf7 			; <UNDEFINED> instruction: 0xe7ecfdf7
    1810:	f7ff1c30 			; <UNDEFINED> instruction: 0xf7ff1c30
    1814:	4a4bfdbd 	bmi	1300f10 <__bss_end__+0x12eff08>
    1818:	1c311c03 	ldcne	12, cr1, [r1], #-12
    181c:	447a2004 	ldrbtmi	r2, [sl], #-4
    1820:	fdecf7ff 	stc2l	7, cr15, [ip, #1020]!	; 0x3fc
    1824:	44784848 	ldrbtmi	r4, [r8], #-2120	; 0xfffff7b8
    1828:	fb66f001 	blx	19bd836 <__bss_end__+0x19ac82e>
    182c:	d00a2800 	andle	r2, sl, r0, lsl #16
    1830:	4a474946 	bmi	11d3d50 <__bss_end__+0x11c2d48>
    1834:	44792004 	ldrbtmi	r2, [r9], #-4
    1838:	f7ff447a 			; <UNDEFINED> instruction: 0xf7ff447a
    183c:	4845fddf 	stmdami	r5, {r0, r1, r2, r3, r4, r6, r7, r8, sl, fp, ip, sp, lr, pc}^
    1840:	f7ff4478 			; <UNDEFINED> instruction: 0xf7ff4478
    1844:	2100fdb3 			; <UNDEFINED> instruction: 0x2100fdb3
    1848:	1c202220 	sfmne	f2, 4, [r0], #-128	; 0xffffff80
    184c:	fe3cf7ff 	mrc2	7, 1, pc, cr12, cr15, {7}
    1850:	21004e41 	tstcs	r0, r1, asr #28
    1854:	1c282220 	sfmne	f2, 4, [r8], #-128	; 0xffffff80
    1858:	fe36f7ff 	mrc2	7, 1, pc, cr6, cr15, {7}
    185c:	447e483f 	ldrbtmi	r4, [lr], #-2111	; 0xfffff7c1
    1860:	1c211c32 	stcne	12, cr1, [r1], #-200	; 0xffffff38
    1864:	f7ff4478 			; <UNDEFINED> instruction: 0xf7ff4478
    1868:	483dfde1 	ldmdami	sp!, {r0, r5, r6, r7, r8, sl, fp, ip, sp, lr, pc}
    186c:	1c291c32 	stcne	12, cr1, [r9], #-200	; 0xffffff38
    1870:	4e3c4478 	mrcmi	4, 1, r4, cr12, cr8, {3}
    1874:	fddaf7ff 	ldc2l	7, cr15, [sl, #1020]	; 0x3fc
    1878:	447e4a3b 	ldrbtmi	r4, [lr], #-2619	; 0xfffff5c5
    187c:	447a1c31 	ldrbtmi	r1, [sl], #-3121	; 0xfffff3cf
    1880:	95001c23 	strls	r1, [r0, #-3107]	; 0xfffff3dd
    1884:	f7ff2004 			; <UNDEFINED> instruction: 0xf7ff2004
    1888:	1c20fdb9 	stcne	13, cr15, [r0], #-740	; 0xfffffd1c
    188c:	fe4cf7ff 	mcr2	7, 2, pc, cr12, cr15, {7}	; <UNPREDICTABLE>
    1890:	1c281c07 	stcne	12, cr1, [r8], #-28	; 0xffffffe4
    1894:	fe48f7ff 	mcr2	7, 2, pc, cr8, cr15, {7}	; <UNPREDICTABLE>
    1898:	90004a34 	andls	r4, r0, r4, lsr sl
    189c:	20041c31 	andcs	r1, r4, r1, lsr ip
    18a0:	1c3b447a 	cfldrsne	mvf4, [fp], #-488	; 0xfffffe18
    18a4:	fdaaf7ff 	stc2	7, cr15, [sl, #1020]!	; 0x3fc
    18a8:	f7ff1c20 			; <UNDEFINED> instruction: 0xf7ff1c20
    18ac:	2801fe3d 	stmdacs	r1, {r0, r2, r3, r4, r5, r9, sl, fp, ip, sp, lr, pc}
    18b0:	1c28d13a 	stfned	f5, [r8], #-232	; 0xffffff18
    18b4:	fe38f7ff 	mrc2	7, 1, pc, cr8, cr15, {7}
    18b8:	d1352801 	teqle	r5, r1, lsl #16
    18bc:	fb44f001 	blx	113d8ca <__bss_end__+0x112c8c2>
    18c0:	d1042800 	tstle	r4, r0, lsl #16
    18c4:	20044a2a 	andcs	r4, r4, sl, lsr #20
    18c8:	447a1c31 	ldrbtmi	r1, [sl], #-3121	; 0xfffff3cf
    18cc:	2004e003 	andcs	lr, r4, r3
    18d0:	4a281c31 	bmi	a0899c <__bss_end__+0x9f7994>
    18d4:	4d28447a 	cfstrsmi	mvf4, [r8, #-488]!	; 0xfffffe18
    18d8:	fd90f7ff 	ldc2	7, cr15, [r0, #1020]	; 0x3fc
    18dc:	447d4927 	ldrbtmi	r4, [sp], #-2343	; 0xfffff6d9
    18e0:	44791c28 	ldrbtmi	r1, [r9], #-3112	; 0xfffff3d8
    18e4:	f7ff2200 			; <UNDEFINED> instruction: 0xf7ff2200
    18e8:	4c25fe17 	stcmi	14, cr15, [r5], #-92	; 0xffffffa4
    18ec:	1c034a25 			; <UNDEFINED> instruction: 0x1c034a25
    18f0:	1c21447c 	cfstrsne	mvf4, [r1], #-496	; 0xfffffe10
    18f4:	2004447a 	andcs	r4, r4, sl, ror r4
    18f8:	fd80f7ff 	stc2	7, cr15, [r0, #1020]	; 0x3fc
    18fc:	1c284922 			; <UNDEFINED> instruction: 0x1c284922
    1900:	22004479 	andcs	r4, r0, #2030043136	; 0x79000000
    1904:	fe08f7ff 	mcr2	7, 0, pc, cr8, cr15, {7}	; <UNPREDICTABLE>
    1908:	1c034a20 			; <UNDEFINED> instruction: 0x1c034a20
    190c:	447a1c21 	ldrbtmi	r1, [sl], #-3105	; 0xfffff3df
    1910:	f7ff2004 			; <UNDEFINED> instruction: 0xf7ff2004
    1914:	4a1efd73 	bmi	7c0ee8 <__bss_end__+0x7afee0>
    1918:	447a1c21 	ldrbtmi	r1, [sl], #-3105	; 0xfffff3df
    191c:	f7ff2004 			; <UNDEFINED> instruction: 0xf7ff2004
    1920:	2001fd6d 	andcs	pc, r1, sp, ror #26
    1924:	bdf0b013 	ldcllt	0, cr11, [r0, #76]!	; 0x4c
    1928:	f7ff481a 			; <UNDEFINED> instruction: 0xf7ff481a
    192c:	e779fd11 			; <UNDEFINED> instruction: 0xe779fd11
    1930:	000017b6 			; <UNDEFINED> instruction: 0x000017b6
    1934:	000018e4 	andeq	r1, r0, r4, ror #17
    1938:	000017a4 	andeq	r1, r0, r4, lsr #15
    193c:	00002710 	andeq	r2, r0, r0, lsl r7
    1940:	000018e7 	andeq	r1, r0, r7, ror #17
    1944:	000018e8 	andeq	r1, r0, r8, ror #17
    1948:	0000190c 	andeq	r1, r0, ip, lsl #18
    194c:	0000175e 	andeq	r1, r0, lr, asr r7
    1950:	00001910 	andeq	r1, r0, r0, lsl r9
    1954:	0000192e 	andeq	r1, r0, lr, lsr #18
    1958:	000017f8 	strdeq	r1, [r0], -r8
    195c:	00001928 	andeq	r1, r0, r8, lsr #18
    1960:	0000192f 	andeq	r1, r0, pc, lsr #18
    1964:	0000171a 	andeq	r1, r0, sl, lsl r7
    1968:	00001935 	andeq	r1, r0, r5, lsr r9
    196c:	00001935 	andeq	r1, r0, r5, lsr r9
    1970:	0000192f 	andeq	r1, r0, pc, lsr #18
    1974:	0000194b 	andeq	r1, r0, fp, asr #18
    1978:	00001966 	andeq	r1, r0, r6, ror #18
    197c:	00001969 	andeq	r1, r0, r9, ror #18
    1980:	000016a4 	andeq	r1, r0, r4, lsr #13
    1984:	00001963 	andeq	r1, r0, r3, ror #18
    1988:	00001984 	andeq	r1, r0, r4, lsl #19
    198c:	00001987 	andeq	r1, r0, r7, lsl #19
    1990:	000019ad 	andeq	r1, r0, sp, lsr #19
    1994:	000f4240 	andeq	r4, pc, r0, asr #4
    1998:	f001b508 			; <UNDEFINED> instruction: 0xf001b508
    199c:	2000fadd 	ldrdcs	pc, [r0], -sp
    19a0:	0000bd08 	andeq	fp, r0, r8, lsl #26
    19a4:	b5132300 	ldrlt	r2, [r3, #-768]	; 0xfffffd00
    19a8:	68039301 	stmdavs	r3, {r0, r8, r9, ip, pc}
    19ac:	4a07a901 	bmi	1ebdb8 <__bss_end__+0x1dadb0>
    19b0:	1c04699b 			; <UNDEFINED> instruction: 0x1c04699b
    19b4:	28004798 	stmdacs	r0, {r3, r4, r7, r8, r9, sl, lr}
    19b8:	4b05d104 	blmi	175dd0 <__bss_end__+0x164dc8>
    19bc:	447b4803 	ldrbtmi	r4, [fp], #-2051	; 0xfffff7fd
    19c0:	e001601c 	and	r6, r1, ip, lsl r0
    19c4:	42402001 	submi	r2, r0, #1
    19c8:	46c0bd16 			; <UNDEFINED> instruction: 0x46c0bd16
    19cc:	00010004 	andeq	r0, r1, r4
    19d0:	0000f642 	andeq	pc, r0, r2, asr #12
    19d4:	b5072300 	strlt	r2, [r7, #-768]	; 0xfffffd00
    19d8:	4b069301 	blmi	1a65e4 <__bss_end__+0x1955dc>
    19dc:	6818447b 	ldmdavs	r8, {r0, r1, r3, r4, r5, r6, sl, lr}
    19e0:	d0042800 	andle	r2, r4, r0, lsl #16
    19e4:	a9016803 	stmdbge	r1, {r0, r1, fp, sp, lr}
    19e8:	699b4a03 	ldmibvs	fp, {r0, r1, r9, fp, lr}
    19ec:	98014798 	stmdals	r1, {r3, r4, r7, r8, r9, sl, lr}
    19f0:	46c0bd0e 	strbmi	fp, [r0], lr, lsl #26
    19f4:	0000f624 	andeq	pc, r0, r4, lsr #12
    19f8:	00010004 	andeq	r0, r1, r4
    19fc:	005a6803 	subseq	r6, sl, r3, lsl #16
    1a00:	2280d503 	addcs	sp, r0, #12582912	; 0xc00000
    1a04:	43130612 	tstmi	r3, #18874368	; 0x1200000
    1a08:	005be001 	subseq	lr, fp, r1
    1a0c:	18c0085b 	stmiane	r0, {r0, r1, r3, r4, r6, fp}^
    1a10:	b5f04770 	ldrblt	r4, [r0, #1904]!	; 0x770
    1a14:	b0871c0e 	addlt	r1, r7, lr, lsl #24
    1a18:	d02e2900 	eorle	r2, lr, r0, lsl #18
    1a1c:	27001e4b 	strcs	r1, [r0, -fp, asr #28]
    1a20:	90059201 	andls	r9, r5, r1, lsl #4
    1a24:	93029303 	movwls	r9, #8963	; 0x2303
    1a28:	18fb9b02 	ldmne	fp!, {r1, r8, r9, fp, ip, pc}^
    1a2c:	18e40fdc 	stmiane	r4!, {r2, r3, r4, r6, r7, r8, r9, sl, fp}^
    1a30:	9b051064 	blls	145bc8 <__bss_end__+0x134bc0>
    1a34:	195e00e5 	ldmdbne	lr, {r0, r2, r5, r6, r7}^
    1a38:	f7ff1c30 			; <UNDEFINED> instruction: 0xf7ff1c30
    1a3c:	9b03ffdf 	blls	1019c0 <__bss_end__+0xf09b8>
    1a40:	429c9004 	addsmi	r9, ip, #4
    1a44:	9b05d015 	blls	175aa0 <__bss_end__+0x164a98>
    1a48:	19583508 	ldmdbne	r8, {r3, r8, sl, ip, sp}^
    1a4c:	ffd6f7ff 			; <UNDEFINED> instruction: 0xffd6f7ff
    1a50:	9a049b01 	bls	12865c <__bss_end__+0x117654>
    1a54:	d2044293 	andle	r4, r4, #805306377	; 0x30000009
    1a58:	d00842bc 			; <UNDEFINED> instruction: 0xd00842bc
    1a5c:	93021e63 	movwls	r1, #11875	; 0x2e63
    1a60:	9b01e7e2 	blls	7b9f0 <__bss_end__+0x6a9e8>
    1a64:	42833801 	addmi	r3, r3, #65536	; 0x10000
    1a68:	1c67d907 			; <UNDEFINED> instruction: 0x1c67d907
    1a6c:	2600e7dc 			; <UNDEFINED> instruction: 0x2600e7dc
    1a70:	9b01e003 	blls	79a84 <__bss_end__+0x68a7c>
    1a74:	42939a04 	addsmi	r9, r3, #4, 20	; 0x4000
    1a78:	1c30d3ee 	ldcne	3, cr13, [r0], #-952	; 0xfffffc48
    1a7c:	bdf0b007 	ldcllt	0, cr11, [r0, #28]!
    1a80:	d0062801 	andle	r2, r6, r1, lsl #16
    1a84:	d0072802 	andle	r2, r7, r2, lsl #16
    1a88:	d1092800 	tstle	r9, r0, lsl #16
    1a8c:	44784805 	ldrbtmi	r4, [r8], #-2053	; 0xfffff7fb
    1a90:	4805e004 	stmdami	r5, {r2, sp, lr, pc}
    1a94:	e0014478 	and	r4, r1, r8, ror r4
    1a98:	44784804 	ldrbtmi	r4, [r8], #-2052	; 0xfffff7fc
    1a9c:	e0006800 	and	r6, r0, r0, lsl #16
    1aa0:	47702000 	ldrbmi	r2, [r0, -r0]!
    1aa4:	0000f556 	andeq	pc, r0, r6, asr r5	; <UNPREDICTABLE>
    1aa8:	0000f564 	andeq	pc, r0, r4, ror #10
    1aac:	0000f552 	andeq	pc, r0, r2, asr r5	; <UNPREDICTABLE>
    1ab0:	b5374b25 	ldrlt	r4, [r7, #-2853]!	; 0xfffff4db
    1ab4:	681b447b 	ldmdavs	fp, {r0, r1, r3, r4, r5, r6, sl, lr}
    1ab8:	1e8d1c04 	cdpne	12, 8, cr1, cr13, cr4, {0}
    1abc:	d0092b00 	andle	r2, r9, r0, lsl #22
    1ac0:	a9011c28 	stmdbge	r1, {r3, r5, sl, fp, ip}
    1ac4:	fd20f7ff 	stc2	7, cr15, [r0, #-1020]!	; 0xfffffc04
    1ac8:	d10c2800 	tstle	ip, r0, lsl #16
    1acc:	61232300 			; <UNDEFINED> instruction: 0x61232300
    1ad0:	e0362409 	eors	r2, r6, r9, lsl #8
    1ad4:	481e4b1d 	ldmdami	lr, {r0, r2, r3, r4, r8, r9, fp, lr}
    1ad8:	4478447b 	ldrbtmi	r4, [r8], #-1147	; 0xfffffb85
    1adc:	6800681b 	stmdavs	r0, {r0, r1, r3, r4, fp, sp, lr}
    1ae0:	10db1a1b 	sbcsne	r1, fp, fp, lsl sl
    1ae4:	1c2a9301 	stcne	3, cr9, [sl], #-4
    1ae8:	f7ff9901 			; <UNDEFINED> instruction: 0xf7ff9901
    1aec:	1e05ff92 	mcrne	15, 0, pc, cr5, cr2, {4}	; <UNPREDICTABLE>
    1af0:	f7ffd0ec 			; <UNDEFINED> instruction: 0xf7ffd0ec
    1af4:	686bff83 	stmdavs	fp!, {r0, r1, r7, r8, r9, sl, fp, ip, sp, lr, pc}^
    1af8:	2b0164a0 	blcs	5ad80 <__bss_end__+0x49d78>
    1afc:	2300d103 	movwcs	sp, #259	; 0x103
    1b00:	24056123 	strcs	r6, [r5], #-291	; 0xfffffedd
    1b04:	1d28e01d 	stcne	0, cr14, [r8, #-116]!	; 0xffffff8c
    1b08:	da022b00 	ble	8c710 <__bss_end__+0x7b708>
    1b0c:	230164e0 	movwcs	r6, #5344	; 0x14e0
    1b10:	f7ffe003 			; <UNDEFINED> instruction: 0xf7ffe003
    1b14:	2300ff73 	movwcs	pc, #3955	; 0xf73	; <UNPREDICTABLE>
    1b18:	6ce064e0 	cfstrdvs	mvd6, [r0], #896	; 0x380
    1b1c:	68036523 	stmdavs	r3, {r0, r1, r5, r8, sl, sp, lr}
    1b20:	da0a2b00 	ble	28c728 <__bss_end__+0x27b720>
    1b24:	0f000118 	svceq	0x00000118
    1b28:	ffaaf7ff 			; <UNDEFINED> instruction: 0xffaaf7ff
    1b2c:	42436120 	submi	r6, r3, #32, 2
    1b30:	24094158 	strcs	r4, [r9], #-344	; 0xfffffea8
    1b34:	40044240 	andmi	r4, r4, r0, asr #4
    1b38:	f7ffe003 			; <UNDEFINED> instruction: 0xf7ffe003
    1b3c:	6120ff5f 	msrvs	LR_irq, pc
    1b40:	1c202400 	cfstrsne	mvf2, [r0], #-0
    1b44:	46c0bd3e 			; <UNDEFINED> instruction: 0x46c0bd3e
    1b48:	0000f540 	andeq	pc, r0, r0, asr #10
    1b4c:	0000f508 	andeq	pc, r0, r8, lsl #10
    1b50:	0000f516 	andeq	pc, r0, r6, lsl r5	; <UNPREDICTABLE>
    1b54:	b5106803 	ldrlt	r6, [r0, #-2051]	; 0xfffff7fd
    1b58:	07da1c04 	ldrbeq	r1, [sl, r4, lsl #24]
    1b5c:	3048d407 	subcc	sp, r8, r7, lsl #8
    1b60:	d502079b 	strle	r0, [r2, #-1947]	; 0xfffff865
    1b64:	f960f001 			; <UNDEFINED> instruction: 0xf960f001
    1b68:	f001e001 			; <UNDEFINED> instruction: 0xf001e001
    1b6c:	6823f9b5 	stmdavs	r3!, {r0, r2, r4, r5, r7, r8, fp, ip, sp, lr, pc}
    1b70:	d403075b 	strle	r0, [r3], #-1883	; 0xfffff8a5
    1b74:	30d01c20 	sbcscc	r1, r0, r0, lsr #24
    1b78:	f9f6f001 			; <UNDEFINED> instruction: 0xf9f6f001
    1b7c:	071b6823 	ldreq	r6, [fp, -r3, lsr #16]
    1b80:	1c20d404 	cfstrsne	mvf13, [r0], #-16
    1b84:	30ff3051 	rscscc	r3, pc, r1, asr r0	; <UNPREDICTABLE>
    1b88:	f93ef001 			; <UNDEFINED> instruction: 0xf93ef001
    1b8c:	06db6823 	ldrbeq	r6, [fp], r3, lsr #16
    1b90:	1c20d404 	cfstrsne	mvf13, [r0], #-16
    1b94:	30ff30d1 	ldrsbtcc	r3, [pc], #1
    1b98:	f98ef001 			; <UNDEFINED> instruction: 0xf98ef001
    1b9c:	6802bd10 	stmdavs	r2, {r4, r8, sl, fp, ip, sp, pc}
    1ba0:	429a2300 	addsmi	r2, sl, #0, 6
    1ba4:	5813d000 	ldmdapl	r3, {ip, lr, pc}
    1ba8:	47701c18 			; <UNDEFINED> instruction: 0x47701c18
    1bac:	47702009 	ldrbmi	r2, [r0, -r9]!
    1bb0:	b5704770 	ldrblt	r4, [r0, #-1904]!	; 0xfffff890
    1bb4:	1c0c1c05 	stcne	12, cr1, [ip], {5}
    1bb8:	6c211c28 	stcvs	12, cr1, [r1], #-160	; 0xffffff60
    1bbc:	ff78f7ff 			; <UNDEFINED> instruction: 0xff78f7ff
    1bc0:	d0011e06 	andle	r1, r1, r6, lsl #28
    1bc4:	fc22f7ff 	stc2	7, cr15, [r2], #-1020	; 0xfffffc04
    1bc8:	616b6c23 	cmnvs	fp, r3, lsr #24
    1bcc:	1c292001 	stcne	0, cr2, [r9], #-4
    1bd0:	692b1c22 	stmdbvs	fp!, {r1, r5, sl, fp, ip}
    1bd4:	28084798 	stmdacs	r8, {r3, r4, r7, r8, r9, sl, lr}
    1bd8:	2807d0ee 	stmdacs	r7, {r1, r2, r3, r5, r6, r7, ip, lr, pc}
    1bdc:	1c30d1f2 	ldfned	f5, [r0], #-968	; 0xfffffc38
    1be0:	f7ff6c21 			; <UNDEFINED> instruction: 0xf7ff6c21
    1be4:	1d20ffe5 	stcne	15, cr15, [r0, #-916]!	; 0xfffffc6c
    1be8:	f93ef001 			; <UNDEFINED> instruction: 0xf93ef001
    1bec:	4c2db5f0 	cfstr32mi	mvfx11, [sp], #-960	; 0xfffffc40
    1bf0:	44a568c3 	strtmi	r6, [r5], #2243	; 0x8c3
    1bf4:	25009304 	strcs	r9, [r0, #-772]	; 0xfffffcfc
    1bf8:	1c046983 			; <UNDEFINED> instruction: 0x1c046983
    1bfc:	31041c17 	tstcc	r4, r7, lsl ip
    1c00:	2240a807 	subcs	sl, r0, #458752	; 0x70000
    1c04:	f7ff9305 			; <UNDEFINED> instruction: 0xf7ff9305
    1c08:	9506fbbb 	strls	pc, [r6, #-3003]	; 0xfffff445
    1c0c:	ae069503 	cfsh32ge	mvfx9, mvfx6, #3
    1c10:	6c311c20 	ldcvs	12, cr1, [r1], #-128	; 0xffffff80
    1c14:	ff4cf7ff 			; <UNDEFINED> instruction: 0xff4cf7ff
    1c18:	417b427b 	cmnmi	fp, fp, ror r2
    1c1c:	1ad3220a 	bne	ff4ca44c <__bss_end__+0xff4b9444>
    1c20:	1e059302 	cdpne	3, 0, cr9, cr5, cr2, {0}
    1c24:	6c33d110 	ldfvsd	f5, [r3], #-64	; 0xffffffc0
    1c28:	22f0af7e 	rscscs	sl, r0, #504	; 0x1f8
    1c2c:	1c316163 	ldfnes	f6, [r1], #-396	; 0xfffffe74
    1c30:	1c380052 	ldcne	0, cr0, [r8], #-328	; 0xfffffeb8
    1c34:	fba4f7ff 	blx	fe93fc3a <__bss_end__+0xfe92ec32>
    1c38:	98026923 	stmdals	r2, {r0, r1, r5, r8, fp, sp, lr}
    1c3c:	1c3a1c21 	ldcne	12, cr1, [sl], #-132	; 0xffffff7c
    1c40:	6bbb4798 	blvs	feed3aa8 <__bss_end__+0xfeec2aa0>
    1c44:	e0049003 	and	r9, r4, r3
    1c48:	23109a02 	tstcs	r0, #8192	; 0x2000
    1c4c:	6bb3431a 	blvs	fecd28bc <__bss_end__+0xfecc18b4>
    1c50:	64739202 	ldrbtvs	r9, [r3], #-514	; 0xfffffdfe
    1c54:	ae069b05 	vmlage.f64	d9, d6, d5
    1c58:	96009301 	strls	r9, [r0], -r1, lsl #6
    1c5c:	99022001 	stmdbls	r2, {r0, sp}
    1c60:	1c231c22 	stcne	12, cr1, [r3], #-136	; 0xffffff78
    1c64:	47b89f04 	ldrmi	r9, [r8, r4, lsl #30]!
    1c68:	d1142800 	tstle	r4, r0, lsl #16
    1c6c:	d1142d00 	tstle	r4, r0, lsl #26
    1c70:	1c3022f0 	lfmne	f2, 4, [r0], #-960	; 0xfffffc40
    1c74:	0052a97e 	subseq	sl, r2, lr, ror r9
    1c78:	fb82f7ff 	blx	fe0bfc7e <__bss_end__+0xfe0aec76>
    1c7c:	1c2f9b03 			; <UNDEFINED> instruction: 0x1c2f9b03
    1c80:	d0c42b08 	sbcle	r2, r4, r8, lsl #22
    1c84:	d1062b07 	tstle	r6, r7, lsl #22
    1c88:	6c311c28 	ldcvs	12, cr1, [r1], #-160	; 0xffffff60
    1c8c:	ff90f7ff 			; <UNDEFINED> instruction: 0xff90f7ff
    1c90:	f001a807 			; <UNDEFINED> instruction: 0xf001a807
    1c94:	2009f8e9 	andcs	pc, r9, r9, ror #17
    1c98:	1c28e000 	stcne	0, cr14, [r8], #-0
    1c9c:	009b23f7 			; <UNDEFINED> instruction: 0x009b23f7
    1ca0:	bdf0449d 	cfldrdlt	mvd4, [r0, #628]!	; 0x274
    1ca4:	fffffc24 			; <UNDEFINED> instruction: 0xfffffc24
    1ca8:	47706c40 	ldrbmi	r6, [r0, -r0, asr #24]!
    1cac:	6bcbb5f0 	blvs	ff2ef474 <__bss_end__+0xff2de46c>
    1cb0:	640bb0f9 	strvs	fp, [fp], #-249	; 0xffffff07
    1cb4:	1c0c1c05 	stcne	12, cr1, [ip], {5}
    1cb8:	3104a801 	tstcc	r4, r1, lsl #16
    1cbc:	f7ff2240 			; <UNDEFINED> instruction: 0xf7ff2240
    1cc0:	2301fb5f 	movwcs	pc, #7007	; 0x1b5f	; <UNPREDICTABLE>
    1cc4:	9300425b 	movwls	r4, #603	; 0x25b
    1cc8:	99101c28 	ldmdbls	r0, {r3, r5, sl, fp, ip}
    1ccc:	fef0f7ff 	mrc2	7, 7, pc, cr0, cr15, {7}
    1cd0:	d10f2800 	tstle	pc, r0, lsl #16
    1cd4:	466a1c29 	strbtmi	r1, [sl], -r9, lsr #24
    1cd8:	4798692b 	ldrmi	r6, [r8, fp, lsr #18]
    1cdc:	2f081e07 	svccs	0x00081e07
    1ce0:	4668d0f2 			; <UNDEFINED> instruction: 0x4668d0f2
    1ce4:	ff36f7ff 			; <UNDEFINED> instruction: 0xff36f7ff
    1ce8:	d1032f06 	tstle	r3, r6, lsl #30
    1cec:	1c211c28 	stcne	12, cr1, [r1], #-160	; 0xffffff60
    1cf0:	ff5ff7ff 			; <UNDEFINED> instruction: 0xff5ff7ff
    1cf4:	b0792009 	rsbslt	r2, r9, r9
    1cf8:	b508bdf0 	strlt	fp, [r8, #-3568]	; 0xfffff210
    1cfc:	6bda6182 	blvs	ff69a30c <__bss_end__+0xff689304>
    1d00:	641a60c1 	ldrvs	r6, [sl], #-193	; 0xffffff3f
    1d04:	22001c19 	andcs	r1, r0, #6400	; 0x1900
    1d08:	ff70f7ff 			; <UNDEFINED> instruction: 0xff70f7ff
    1d0c:	b570bd08 	ldrblt	fp, [r0, #-3336]!	; 0xfffff2f8
    1d10:	694368c6 	stmdbvs	r3, {r1, r2, r6, r7, fp, sp, lr}^
    1d14:	1c0c1c05 	stcne	12, cr1, [ip], {5}
    1d18:	2e00640b 	cdpcs	4, 0, cr6, cr0, cr11, {0}
    1d1c:	2201d003 	andcs	sp, r1, #3
    1d20:	ff64f7ff 			; <UNDEFINED> instruction: 0xff64f7ff
    1d24:	2002e013 	andcs	lr, r2, r3, lsl r0
    1d28:	1c221c29 	stcne	12, cr1, [r2], #-164	; 0xffffff5c
    1d2c:	4798692b 	ldrmi	r6, [r8, fp, lsr #18]
    1d30:	d0052807 	andle	r2, r5, r7, lsl #16
    1d34:	d10a2808 	tstle	sl, r8, lsl #16
    1d38:	1c211c28 	stcne	12, cr1, [r1], #-160	; 0xffffff60
    1d3c:	ff39f7ff 			; <UNDEFINED> instruction: 0xff39f7ff
    1d40:	6c211c30 	stcvs	12, cr1, [r1], #-192	; 0xffffff40
    1d44:	ff34f7ff 			; <UNDEFINED> instruction: 0xff34f7ff
    1d48:	f0011d20 			; <UNDEFINED> instruction: 0xf0011d20
    1d4c:	f7fff88d 			; <UNDEFINED> instruction: 0xf7fff88d
    1d50:	b508fb5d 	strlt	pc, [r8, #-2909]	; 0xfffff4a3
    1d54:	2b0068c3 	blcs	1c068 <__bss_end__+0xb060>
    1d58:	f001d102 			; <UNDEFINED> instruction: 0xf001d102
    1d5c:	e004f8ed 	and	pc, r4, sp, ror #17
    1d60:	640b6bcb 	strvs	r6, [fp], #-3019	; 0xfffff435
    1d64:	f7ff2200 			; <UNDEFINED> instruction: 0xf7ff2200
    1d68:	bd08ff41 	stclt	15, cr15, [r8, #-260]	; 0xfffffefc
    1d6c:	b5084770 	strlt	r4, [r8, #-1904]	; 0xfffff890
    1d70:	2b006883 	blcs	1bf84 <__bss_end__+0xaf7c>
    1d74:	1c01d002 	stcne	0, cr13, [r1], {2}
    1d78:	47982001 	ldrmi	r2, [r8, r1]
    1d7c:	b510bd08 	ldrlt	fp, [r0, #-3336]	; 0xfffff2f8
    1d80:	29041c04 	stmdbcs	r4, {r2, sl, fp, ip}
    1d84:	1c08d805 	stcne	8, cr13, [r8], {5}
    1d88:	f846f001 			; <UNDEFINED> instruction: 0xf846f001
    1d8c:	11031105 	tstne	r3, r5, lsl #2
    1d90:	20020011 	andcs	r0, r2, r1, lsl r0
    1d94:	2002e00c 	andcs	lr, r2, ip
    1d98:	d1092b00 	tstle	r9, r0, lsl #22
    1d9c:	d8072a0f 	stmdale	r7, {r0, r1, r2, r3, r9, fp, sp}
    1da0:	18a24082 	stmiane	r2!, {r1, r7, lr}
    1da4:	9a026851 	bls	9bef0 <__bss_end__+0x8aee8>
    1da8:	60111c18 	andsvs	r1, r1, r8, lsl ip
    1dac:	2001e000 	andcs	lr, r1, r0
    1db0:	b51fbd10 	ldrlt	fp, [pc, #-3344]	; 10a8 <strcpy@plt-0x258>
    1db4:	ab031c0a 	blge	c8de4 <__bss_end__+0xb7ddc>
    1db8:	93002100 	movwls	r2, #256	; 0x100
    1dbc:	f0011c0b 			; <UNDEFINED> instruction: 0xf0011c0b
    1dc0:	9803f8b3 	stmdals	r3, {r0, r1, r4, r5, r7, fp, ip, sp, lr, pc}
    1dc4:	bd00b005 	stclt	0, cr11, [r0, #-20]	; 0xffffffec
    1dc8:	1c04b510 	cfstr32ne	mvfx11, [r4], {16}
    1dcc:	d8052904 	stmdale	r5, {r2, r8, fp, sp}
    1dd0:	f0011c08 			; <UNDEFINED> instruction: 0xf0011c08
    1dd4:	1105f821 	tstne	r5, r1, lsr #16	; <UNPREDICTABLE>
    1dd8:	00111103 	andseq	r1, r1, r3, lsl #2
    1ddc:	e00c2002 	and	r2, ip, r2
    1de0:	2b002002 	blcs	9df0 <__exidx_end+0x66f8>
    1de4:	2a0fd109 	bcs	3f6210 <__bss_end__+0x3e5208>
    1de8:	9902d807 	stmdbls	r2, {r0, r1, r2, fp, ip, lr, pc}
    1dec:	68094082 	stmdavs	r9, {r1, r7, lr}
    1df0:	605118a2 	subsvs	r1, r1, r2, lsr #17
    1df4:	e0001c18 	and	r1, r0, r8, lsl ip
    1df8:	bd102001 	ldclt	0, cr2, [r0, #-4]
    1dfc:	1c0bb51f 	cfstr32ne	mvfx11, [fp], {31}
    1e00:	21009203 	tstcs	r0, r3, lsl #4
    1e04:	9200aa03 	andls	sl, r0, #12288	; 0x3000
    1e08:	1c0b1c1a 	stcne	12, cr1, [fp], {26}
    1e0c:	f83cf001 			; <UNDEFINED> instruction: 0xf83cf001
    1e10:	bd00b005 	stclt	0, cr11, [r0, #-20]	; 0xffffffec
    1e14:	4c1ab5f0 	cfldr32mi	mvfx11, [sl], {240}	; 0xf0
    1e18:	44a56bd3 	strtmi	r6, [r5], #3027	; 0xbd3
    1e1c:	1c056413 	cfstrsne	mvf6, [r5], {19}
    1e20:	a8171c0e 	ldmdage	r7, {r1, r2, r3, sl, fp, ip}
    1e24:	22401d11 	subcs	r1, r0, #1088	; 0x440
    1e28:	faaaf7ff 	blx	feabfe2c <__bss_end__+0xfeaaee24>
    1e2c:	425b2301 	subsmi	r2, fp, #67108864	; 0x4000000
    1e30:	ac169316 	ldcge	3, cr9, [r6], {22}
    1e34:	6c214668 	stcvs	6, cr4, [r1], #-416	; 0xfffffe60
    1e38:	fe3af7ff 	mrc2	7, 1, pc, cr10, cr15, {7}
    1e3c:	d0012800 	andle	r2, r1, r0, lsl #16
    1e40:	e0142709 	ands	r2, r4, r9, lsl #14
    1e44:	210c1c20 	tstcs	ip, r0, lsr #24
    1e48:	f7ff466a 			; <UNDEFINED> instruction: 0xf7ff466a
    1e4c:	1c20ffd7 	stcne	15, cr15, [r0], #-860	; 0xfffffca4
    1e50:	47a81c31 			; <UNDEFINED> instruction: 0x47a81c31
    1e54:	d1f32800 	mvnsle	r2, r0, lsl #16
    1e58:	20089b04 	andcs	r9, r8, r4, lsl #22
    1e5c:	1c224669 	stcne	6, cr4, [r2], #-420	; 0xfffffe5c
    1e60:	1e074798 	mcrne	7, 0, r4, cr7, cr8, {4}
    1e64:	d0022f05 	andle	r2, r2, r5, lsl #30
    1e68:	d1e22809 	mvnle	r2, r9, lsl #16
    1e6c:	1c20e7e8 	stcne	7, cr14, [r0], #-928	; 0xfffffc60
    1e70:	fe70f7ff 	mrc2	7, 3, pc, cr0, cr15, {7}
    1e74:	238f1c38 	orrcs	r1, pc, #56, 24	; 0x3800
    1e78:	449d009b 	ldrmi	r0, [sp], #155	; 0x9b
    1e7c:	46c0bdf0 			; <UNDEFINED> instruction: 0x46c0bdf0
    1e80:	fffffdc4 			; <UNDEFINED> instruction: 0xfffffdc4
    1e84:	b08db5f0 	strdlt	fp, [sp], r0
    1e88:	1c169303 	ldcne	3, cr9, [r6], {3}
    1e8c:	1c022303 	stcne	3, cr2, [r2], {3}
    1e90:	9201401a 	andls	r4, r1, #26
    1e94:	90076cca 	andls	r6, r7, sl, asr #25
    1e98:	1c0c9803 	stcne	8, cr9, [ip], {3}
    1e9c:	a9091d17 	stmdbge	r9, {r0, r1, r2, r4, r8, sl, fp, ip}
    1ea0:	92096812 	andls	r6, r9, #1179648	; 0x120000
    1ea4:	2800604f 	stmdacs	r0, {r0, r1, r2, r3, r6, sp, lr}
    1ea8:	0212d106 	andseq	sp, r2, #-2147483647	; 0x80000001
    1eac:	466a9209 	strbtmi	r9, [sl], -r9, lsl #4
    1eb0:	724a7b12 	subvc	r7, sl, #18432	; 0x4800
    1eb4:	e00c720b 	and	r7, ip, fp, lsl #4
    1eb8:	2b029b03 	blcs	a8acc <__bss_end__+0x97ac4>
    1ebc:	0c13dc09 	ldceq	12, cr13, [r3], {9}
    1ec0:	0412724b 	ldreq	r7, [r2], #-587	; 0xfffffdb5
    1ec4:	600a061b 	andvs	r0, sl, fp, lsl r6
    1ec8:	22020e1b 	andcs	r0, r2, #432	; 0x1b0
    1ecc:	18ff4093 	ldmne	pc!, {r0, r1, r4, r7, lr}^	; <UNPREDICTABLE>
    1ed0:	9b01720a 	blls	5e700 <__bss_end__+0x4d6f8>
    1ed4:	d1002b02 	tstle	r0, r2, lsl #22
    1ed8:	6d226ba7 	fstmdbxvs	r2!, {d6-d88}	;@ Deprecated
    1edc:	40132301 	andsmi	r2, r3, r1, lsl #6
    1ee0:	e0ddd000 	sbcs	sp, sp, r0
    1ee4:	683b9305 	ldmdavs	fp!, {r0, r2, r8, r9, ip, pc}
    1ee8:	2b009302 	blcs	26af8 <__bss_end__+0x15af0>
    1eec:	e0d9d100 	sbcs	sp, r9, r0, lsl #2
    1ef0:	2b029b03 	blcs	a8b04 <__bss_end__+0x97afc>
    1ef4:	687bd104 	ldmdavs	fp!, {r2, r8, ip, lr, pc}^
    1ef8:	93041c3d 	movwls	r1, #19517	; 0x4c3d
    1efc:	e0043508 	and	r3, r4, r8, lsl #10
    1f00:	9302883b 	movwls	r8, #10299	; 0x283b
    1f04:	887b1d3d 	ldmdahi	fp!, {r0, r2, r3, r4, r5, r8, sl, fp, ip}^
    1f08:	9b049304 	blls	126b20 <__bss_end__+0x115b18>
    1f0c:	27016ca2 	strcs	r6, [r1, -r2, lsr #25]
    1f10:	189b43bb 	ldmne	fp, {r0, r1, r3, r4, r5, r7, r8, r9, lr}
    1f14:	1c30210f 	ldfnes	f2, [r0], #-60	; 0xffffffc4
    1f18:	f7ff9306 			; <UNDEFINED> instruction: 0xf7ff9306
    1f1c:	9b06ff4a 	blls	1c1c4c <__bss_end__+0x1b0c44>
    1f20:	42832100 	addmi	r2, r3, #0, 2
    1f24:	9902d805 	stmdbls	r2, {r0, r2, fp, ip, lr, pc}
    1f28:	185943b9 	ldmdane	r9, {r0, r3, r4, r5, r7, r8, r9, lr}^
    1f2c:	41804288 	orrmi	r4, r0, r8, lsl #5
    1f30:	9b044241 	blls	11283c <__bss_end__+0x101834>
    1f34:	403b9a02 	eorsmi	r9, fp, r2, lsl #20
    1f38:	403a005b 	eorsmi	r0, sl, fp, asr r0
    1f3c:	2b014313 	blcs	52b90 <__bss_end__+0x41b88>
    1f40:	2b00d019 	blcs	35fac <__bss_end__+0x24fa4>
    1f44:	2b02d002 	blcs	b5f54 <__bss_end__+0xa4f4c>
    1f48:	e0cdd057 	sbc	sp, sp, r7, asr r0
    1f4c:	1d2f9b01 	fstmdbxne	pc!, {d9-d8}	;@ Deprecated
    1f50:	d0c82b00 	sbcle	r2, r8, r0, lsl #22
    1f54:	d0c62900 	sbcle	r2, r6, r0, lsl #18
    1f58:	f7ff1c28 			; <UNDEFINED> instruction: 0xf7ff1c28
    1f5c:	63a7fd4f 			; <UNDEFINED> instruction: 0x63a7fd4f
    1f60:	1c201c05 	stcne	12, cr1, [r0], #-20	; 0xffffffec
    1f64:	f9fcf7ff 			; <UNDEFINED> instruction: 0xf9fcf7ff
    1f68:	d1002800 	tstle	r0, r0, lsl #16
    1f6c:	1c30e0bc 	ldcne	0, cr14, [r0], #-752	; 0xfffffd10
    1f70:	1c2a210f 	stfnes	f2, [sl], #-60	; 0xffffffc4
    1f74:	9a01e0b4 	bls	7a24c <__bss_end__+0x69244>
    1f78:	d1262a00 			; <UNDEFINED> instruction: 0xd1262a00
    1f7c:	d0392900 	eorsle	r2, r9, r0, lsl #18
    1f80:	0fd7682a 	svceq	0x00d7682a
    1f84:	1c91686a 	ldcne	8, cr6, [r1], {106}	; 0x6a
    1f88:	e0add100 	adc	sp, sp, r0, lsl #2
    1f8c:	31581c21 	cmpcc	r8, r1, lsr #24
    1f90:	32019108 	andcc	r9, r1, #8, 2
    1f94:	1d28d00b 	stcne	0, cr13, [r8, #-44]!	; 0xffffffd4
    1f98:	fe01f7ff 	mcr2	7, 0, pc, cr1, cr15, {7}	; <UNPREDICTABLE>
    1f9c:	ab081c3a 	blge	20908c <__bss_end__+0x1f8084>
    1fa0:	1c201c01 	stcne	12, cr1, [r0], #-4
    1fa4:	fa62f7ff 	blx	18bffa8 <__bss_end__+0x18aefa0>
    1fa8:	d0231e07 	eorle	r1, r3, r7, lsl #28
    1fac:	1c1fe000 	ldcne	0, cr14, [pc], {-0}
    1fb0:	210d1c30 	tstcs	sp, r0, lsr ip
    1fb4:	fefdf7ff 	mrc2	7, 7, pc, cr13, cr15, {7}
    1fb8:	62209b08 	eorvs	r9, r0, #8, 22	; 0x2000
    1fbc:	d0002f02 	andle	r2, r0, r2, lsl #30
    1fc0:	62e3e09a 	rscvs	lr, r3, #154	; 0x9a
    1fc4:	332c1c23 			; <UNDEFINED> instruction: 0x332c1c23
    1fc8:	1c30e096 	ldcne	0, cr14, [r0], #-600	; 0xfffffda8
    1fcc:	6a27210d 	bvs	9ca408 <__bss_end__+0x9b9400>
    1fd0:	feeff7ff 	mcr2	7, 7, pc, cr15, cr15, {7}	; <UNPREDICTABLE>
    1fd4:	d10d4287 	smlabble	sp, r7, r2, r4
    1fd8:	429d6aa3 	addsmi	r6, sp, #667648	; 0xa3000
    1fdc:	1c28d10a 	stfned	f5, [r8], #-40	; 0xffffffd8
    1fe0:	fd0cf7ff 	stc2	7, cr15, [ip, #-1020]	; 0xfffffc04
    1fe4:	1c02210f 	stfnes	f2, [r2], {15}
    1fe8:	f7ff1c30 			; <UNDEFINED> instruction: 0xf7ff1c30
    1fec:	1c30ff07 	ldcne	15, cr15, [r0], #-28	; 0xffffffe4
    1ff0:	e0482100 	sub	r2, r8, r0, lsl #2
    1ff4:	1c2f3508 	cfstr32ne	mvfx3, [pc], #-32	; 1fdc <free@plt+0xa64>
    1ff8:	682be775 	stmdavs	fp!, {r0, r2, r4, r5, r6, r8, r9, sl, sp, lr, pc}
    1ffc:	085b005b 	ldmdaeq	fp, {r0, r1, r3, r4, r6}^
    2000:	9b019302 	blls	66c10 <__bss_end__+0x55c08>
    2004:	d11c2b00 	tstle	ip, r0, lsl #22
    2008:	d0402900 	suble	r2, r0, r0, lsl #18
    200c:	071b9b07 	ldreq	r9, [fp, -r7, lsl #22]
    2010:	9b02d502 	blls	b7420 <__bss_end__+0xa6418>
    2014:	d13a2b00 	teqle	sl, r0, lsl #22
    2018:	9b029f01 	blls	a9c24 <__bss_end__+0x98c1c>
    201c:	d065429f 	mlsle	r5, pc, r2, r4	; <UNPREDICTABLE>
    2020:	1c233701 	stcne	7, cr3, [r3], #-4
    2024:	335800b8 	cmpcc	r8, #184	; 0xb8
    2028:	93081828 	movwls	r1, #34856	; 0x8828
    202c:	fdb7f7ff 	ldc2	7, cr15, [r7, #1020]!	; 0x3fc
    2030:	ab082200 	blge	20a838 <__bss_end__+0x1f9830>
    2034:	1c201c01 	stcne	12, cr1, [r0], #-4
    2038:	fa18f7ff 	blx	64003c <__bss_end__+0x62f034>
    203c:	d0ec2800 	rscle	r2, ip, r0, lsl #16
    2040:	1c30e025 	ldcne	0, cr14, [r0], #-148	; 0xffffff6c
    2044:	6a27210d 	bvs	9ca480 <__bss_end__+0x9b9478>
    2048:	feb3f7ff 	mrc2	7, 5, pc, cr3, cr15, {7}
    204c:	d11e4287 	tstle	lr, r7, lsl #5
    2050:	429d6aa3 	addsmi	r6, sp, #667648	; 0xa3000
    2054:	9b02d11b 	blls	b64c8 <__bss_end__+0xa54c0>
    2058:	230462a3 	movwcs	r6, #17059	; 0x42a3
    205c:	27006323 	strcs	r6, [r0, -r3, lsr #6]
    2060:	62e718eb 	rscvs	r1, r7, #15400960	; 0xeb0000
    2064:	682b6363 	stmdavs	fp!, {r0, r1, r5, r6, r8, r9, sp, lr}
    2068:	da0e42bb 	ble	392b5c <__bss_end__+0x381b54>
    206c:	30019802 	andcc	r9, r1, r2, lsl #16
    2070:	18280080 	stmdane	r8!, {r7}
    2074:	fcc2f7ff 	stc2l	7, cr15, [r2], {255}	; 0xff
    2078:	1c02210f 	stfnes	f2, [r2], {15}
    207c:	f7ff1c30 			; <UNDEFINED> instruction: 0xf7ff1c30
    2080:	1c30febd 	ldcne	14, cr15, [r0], #-756	; 0xfffffd0c
    2084:	1c221c39 	stcne	12, cr1, [r2], #-228	; 0xffffff1c
    2088:	2301e02a 	movwcs	lr, #4138	; 0x102a
    208c:	682b9305 	stmdavs	fp!, {r0, r2, r8, r9, ip, pc}
    2090:	da002b00 	ble	cc98 <__exidx_end+0x95a0>
    2094:	9b023504 	blls	8f4ac <__bss_end__+0x7e4a4>
    2098:	009b3301 	addseq	r3, fp, r1, lsl #6
    209c:	e72218ef 	str	r1, [r2, -pc, ror #17]!
    20a0:	93052300 	movwls	r2, #21248	; 0x5300
    20a4:	2b029b03 	blcs	a8cb8 <__bss_end__+0x97cb0>
    20a8:	f7ffdd02 			; <UNDEFINED> instruction: 0xf7ffdd02
    20ac:	e003fd7f 	and	pc, r3, pc, ror sp	; <UNPREDICTABLE>
    20b0:	a9091c30 	stmdbge	r9, {r4, r5, sl, fp, ip}
    20b4:	fec0f000 	cdp2	0, 12, cr15, cr0, cr0, {0}
    20b8:	d1152800 	tstle	r5, r0, lsl #16
    20bc:	20089b05 	andcs	r9, r8, r5, lsl #22
    20c0:	d01c2b00 	andsle	r2, ip, r0, lsl #22
    20c4:	1c30210f 	ldfnes	f2, [r0], #-60	; 0xffffffc4
    20c8:	fe73f7ff 	mrc2	7, 3, pc, cr3, cr15, {7}
    20cc:	1c02210e 	stfnes	f2, [r2], {14}
    20d0:	f7ff1c30 			; <UNDEFINED> instruction: 0xf7ff1c30
    20d4:	4a0bfe93 	bmi	301b28 <__bss_end__+0x2f0b20>
    20d8:	447a1c30 	ldrbtmi	r1, [sl], #-3120	; 0xfffff3d0
    20dc:	210f6812 	tstcs	pc, r2, lsl r8	; <UNPREDICTABLE>
    20e0:	fe8cf7ff 	mcr2	7, 4, pc, cr12, cr15, {7}	; <UNPREDICTABLE>
    20e4:	e00a2007 	and	r2, sl, r7
    20e8:	e0082009 	and	r2, r8, r9
    20ec:	210d1c30 	tstcs	sp, r0, lsr ip
    20f0:	fe5ff7ff 	mrc2	7, 2, pc, cr15, cr15, {7}
    20f4:	62209b08 	eorvs	r9, r0, #8, 22	; 0x2000
    20f8:	62632006 	rsbvs	r2, r3, #6
    20fc:	b00d62a5 	andlt	r6, sp, r5, lsr #5
    2100:	46c0bdf0 			; <UNDEFINED> instruction: 0x46c0bdf0
    2104:	0000ef0e 	andeq	lr, r0, lr, lsl #30
    2108:	2300b508 	movwcs	fp, #1288	; 0x508
    210c:	febaf7ff 	mrc2	7, 5, pc, cr10, cr15, {7}
    2110:	b508bd08 	strlt	fp, [r8, #-3336]	; 0xfffff2f8
    2114:	f7ff2301 			; <UNDEFINED> instruction: 0xf7ff2301
    2118:	bd08feb5 	stclt	14, cr15, [r8, #-724]	; 0xfffffd2c
    211c:	2302b508 	movwcs	fp, #9480	; 0x2508
    2120:	feb0f7ff 	mrc2	7, 5, pc, cr0, cr15, {7}
    2124:	b5f0bd08 	ldrblt	fp, [r0, #3336]!	; 0xd08
    2128:	b0c51c05 	sbclt	r1, r5, r5, lsl #24
    212c:	d9002904 	stmdble	r0, {r2, r8, fp, sp}
    2130:	1c08e085 	stcne	0, cr14, [r8], {133}	; 0x85
    2134:	1c141c1e 	ldcne	12, cr1, [r4], {30}
    2138:	fe6ef000 	cdp2	0, 6, cr15, cr14, cr0, {0}
    213c:	2a811d03 	bcs	fe049550 <__bss_end__+0xfe038548>
    2140:	20020055 	andcs	r0, r2, r5, asr r0
    2144:	d0002b00 	andle	r2, r0, r0, lsl #22
    2148:	0411e112 	ldreq	lr, [r1], #-274	; 0xfffffeee
    214c:	0c096bab 			; <UNDEFINED> instruction: 0x0c096bab
    2150:	20011d2a 	andcs	r1, r1, sl, lsr #26
    2154:	40b71c07 	adcsmi	r1, r7, r7, lsl #24
    2158:	d0024239 	andle	r4, r2, r9, lsr r2
    215c:	3304681f 	movwcc	r6, #18463	; 0x481f
    2160:	36016017 			; <UNDEFINED> instruction: 0x36016017
    2164:	2e103204 	cdpcs	2, 1, cr3, cr0, cr4, {0}
    2168:	2000d1f4 	strdcs	sp, [r0], -r4
    216c:	d50004a2 	strle	r0, [r0, #-1186]	; 0xfffffb5e
    2170:	63abe0fe 			; <UNDEFINED> instruction: 0x63abe0fe
    2174:	2304e0fc 	movwcs	lr, #16636	; 0x40fc
    2178:	439a1c32 	orrsmi	r1, sl, #12800	; 0x3200
    217c:	d15e2a01 	cmple	lr, r1, lsl #20
    2180:	04240c23 	strteq	r0, [r4], #-3107	; 0xfffff3dd
    2184:	93010c24 	movwls	r0, #7204	; 0x1c24
    2188:	2e0118e7 	cdpcs	8, 0, cr1, cr1, cr7, {7}
    218c:	e050d159 	subs	sp, r0, r9, asr r1
    2190:	d1542b03 	cmple	r4, r3, lsl #22
    2194:	0c160414 	cfldrseq	mvf0, [r6], {20}
    2198:	19a30c24 	stmibne	r3!, {r2, r5, sl, fp}
    219c:	d84e2b10 	stmdale	lr, {r4, r8, r9, fp, sp}^
    21a0:	2208682b 	andcs	r6, r8, #2818048	; 0x2b0000
    21a4:	d0064213 	andle	r4, r6, r3, lsl r2
    21a8:	43931c28 	orrsmi	r1, r3, #40, 24	; 0x2800
    21ac:	602b3051 	eorvs	r3, fp, r1, asr r0
    21b0:	f00030ff 			; <UNDEFINED> instruction: 0xf00030ff
    21b4:	af22fe51 	svcge	0x0022fe51
    21b8:	00f61c38 	rscseq	r1, r6, r8, lsr ip
    21bc:	fe4cf000 	cdp2	0, 4, cr15, cr12, cr0, {0}
    21c0:	19be0064 	ldmibne	lr!, {r2, r5, r6}
    21c4:	1c316bab 			; <UNDEFINED> instruction: 0x1c316bab
    21c8:	3a011c22 	bcc	49258 <__bss_end__+0x38250>
    21cc:	1b88d303 	blne	fe236de0 <__bss_end__+0xfe225dd8>
    21d0:	c10158c0 	smlabtgt	r1, r0, r8, r5
    21d4:	00a4e7f9 	strdeq	lr, [r4], r9	; <UNPREDICTABLE>
    21d8:	63ac191c 			; <UNDEFINED> instruction: 0x63ac191c
    21dc:	f0001c38 			; <UNDEFINED> instruction: 0xf0001c38
    21e0:	2000fe13 	andcs	pc, r0, r3, lsl lr	; <UNPREDICTABLE>
    21e4:	2b00e0c4 	blcs	3a4fc <__bss_end__+0x294f4>
    21e8:	2a10d129 	bcs	436694 <__bss_end__+0x42568c>
    21ec:	682bd827 	stmdavs	fp!, {r0, r1, r2, r5, fp, ip, lr, pc}
    21f0:	42132210 	andsmi	r2, r3, #16, 4
    21f4:	1c28d006 	stcne	0, cr13, [r8], #-24	; 0xffffffe8
    21f8:	30d14393 	smullscc	r4, r1, r3, r3
    21fc:	30ff602b 	rscscc	r6, pc, fp, lsr #32
    2200:	fe4af000 	cdp2	0, 4, cr15, cr10, cr0, {0}
    2204:	1c30ae22 	ldcne	14, cr10, [r0], #-136	; 0xffffff78
    2208:	fe46f000 	cdp2	0, 4, cr15, cr6, cr0, {0}
    220c:	23006baa 	movwcs	r6, #2986	; 0xbaa
    2210:	1c082101 	stfnes	f2, [r8], {1}
    2214:	42044098 	andmi	r4, r4, #152	; 0x98
    2218:	6817d003 	ldmdavs	r7, {r0, r1, ip, lr, pc}
    221c:	32040098 	andcc	r0, r4, #152	; 0x98
    2220:	33015037 	movwcc	r5, #4151	; 0x1037
    2224:	d1f42b04 	mvnsle	r2, r4, lsl #22
    2228:	1c3063aa 	ldcne	3, cr6, [r0], #-680	; 0xfffffd58
    222c:	fe44f000 	cdp2	0, 4, cr15, cr4, cr0, {0}
    2230:	2f10e7d7 	svccs	0x0010e7d7
    2234:	9b01d803 	blls	78248 <__bss_end__+0x67240>
    2238:	d8002b0f 	stmdale	r0, {r0, r1, r2, r3, r8, r9, fp, sp}
    223c:	2002e092 	mulcs	r2, r2, r0
    2240:	2f20e096 	svccs	0x0020e096
    2244:	9b01d8fb 	blls	78638 <__bss_end__+0x67630>
    2248:	d9022b0f 	stmdble	r2, {r0, r1, r2, r3, r8, r9, fp, sp}
    224c:	d1521e27 	cmple	r2, r7, lsr #28
    2250:	2f10e010 	svccs	0x0010e010
    2254:	e085d800 	add	sp, r5, r0, lsl #16
    2258:	d1f02e05 	mvnsle	r2, r5, lsl #28
    225c:	682b3f10 	stmdavs	fp!, {r4, r8, r9, sl, fp, ip, sp}
    2260:	42132201 	andsmi	r2, r3, #268435456	; 0x10000000
    2264:	2f00d168 	svccs	0x0000d168
    2268:	2e01d147 	mvfcssm	f5, f7
    226c:	a822d17c 	stmdage	r2!, {r2, r3, r4, r5, r6, r8, ip, lr, pc}
    2270:	fe52f000 	cdp2	0, 5, cr15, cr2, cr0, {0}
    2274:	27001c23 	strcs	r1, [r0, -r3, lsr #24]
    2278:	1c146baa 			; <UNDEFINED> instruction: 0x1c146baa
    227c:	dd102b00 	vldrle	d2, [r0, #-0]
    2280:	469c005b 			; <UNDEFINED> instruction: 0x469c005b
    2284:	a9229b01 	stmdbge	r2!, {r0, r8, r9, fp, ip, pc}
    2288:	18cb00db 	stmiane	fp, {r0, r1, r3, r4, r6, r7}^
    228c:	46611c18 			; <UNDEFINED> instruction: 0x46611c18
    2290:	d3033901 	movwle	r3, #14593	; 0x3901
    2294:	58a41ac4 	stmiapl	r4!, {r2, r6, r7, r9, fp, ip}
    2298:	e7f9c010 			; <UNDEFINED> instruction: 0xe7f9c010
    229c:	009b4663 	addseq	r4, fp, r3, ror #12
    22a0:	2f0018d4 	svccs	0x000018d4
    22a4:	9b01d010 	blls	762ec <__bss_end__+0x652e4>
    22a8:	d2002b10 	andle	r2, r0, #16, 22	; 0x4000
    22ac:	3b102310 	blcc	40aef4 <__bss_end__+0x3f9eec>
    22b0:	00dbaa02 	sbcseq	sl, fp, r2, lsl #20
    22b4:	00f918d3 	ldrsbteq	r1, [r9], #131	; 0x83
    22b8:	428a2200 	addmi	r2, sl, #0, 4
    22bc:	58a0d003 	stmiapl	r0!, {r0, r1, ip, lr, pc}
    22c0:	32045098 	andcc	r5, r4, #152	; 0x98
    22c4:	18a4e7f9 	stmiane	r4!, {r0, r3, r4, r5, r6, r7, r8, r9, sl, sp, lr, pc}
    22c8:	d1002e01 	tstle	r0, r1, lsl #28
    22cc:	63ac3404 			; <UNDEFINED> instruction: 0x63ac3404
    22d0:	d1032e01 	tstle	r3, r1, lsl #28
    22d4:	f000a822 			; <UNDEFINED> instruction: 0xf000a822
    22d8:	e782fdff 			; <UNDEFINED> instruction: 0xe782fdff
    22dc:	2b0f9b01 	blcs	3e8ee8 <__bss_end__+0x3d7ee0>
    22e0:	a822d802 	stmdage	r2!, {r1, fp, ip, lr, pc}
    22e4:	fda0f000 	stc2	0, cr15, [r0]
    22e8:	d1002f00 	tstle	r0, r0, lsl #30
    22ec:	a802e779 	stmdage	r2, {r0, r3, r4, r5, r6, r8, r9, sl, sp, lr, pc}
    22f0:	fe3af000 	cdp2	0, 3, cr15, cr10, cr0, {0}
    22f4:	2e05e775 	mcrcs	7, 0, lr, cr5, cr5, {3}
    22f8:	682bd1a1 	stmdavs	fp!, {r0, r5, r7, r8, ip, lr, pc}
    22fc:	42132204 	andsmi	r2, r3, #4, 4	; 0x40000000
    2300:	4393d005 	orrsmi	sp, r3, #5
    2304:	602b1c28 	eorvs	r1, fp, r8, lsr #24
    2308:	f00030d0 			; <UNDEFINED> instruction: 0xf00030d0
    230c:	2e01fded 	cdpcs	13, 0, cr15, cr1, cr13, {7}
    2310:	9b01d00e 	blls	76350 <__bss_end__+0x65348>
    2314:	d8022b0f 	stmdale	r2, {r0, r1, r2, r3, r8, r9, fp, sp}
    2318:	f000a822 			; <UNDEFINED> instruction: 0xf000a822
    231c:	2f00fe35 	svccs	0x0000fe35
    2320:	a802d0a8 	stmdage	r2, {r3, r5, r7, ip, lr, pc}
    2324:	fde0f000 	stc2l	0, cr15, [r0]
    2328:	23109a01 	tstcs	r0, #4096	; 0x1000
    232c:	e7a31a9b 			; <UNDEFINED> instruction: 0xe7a31a9b
    2330:	f000a822 			; <UNDEFINED> instruction: 0xf000a822
    2334:	e7f7fdf1 	udf	#32721	; 0x7fd1
    2338:	43911c19 	orrsmi	r1, r1, #6400	; 0x1900
    233c:	1c0a1c28 	stcne	12, cr1, [sl], {40}	; 0x28
    2340:	30486029 	subcc	r6, r8, r9, lsr #32
    2344:	d1072e05 	tstle	r7, r5, lsl #28
    2348:	431a2302 	tstmi	sl, #134217728	; 0x8000000
    234c:	f000602a 			; <UNDEFINED> instruction: 0xf000602a
    2350:	2f00fe1b 	svccs	0x0000fe1b
    2354:	e7dfd1d1 			; <UNDEFINED> instruction: 0xe7dfd1d1
    2358:	43932203 	orrsmi	r2, r3, #805306368	; 0x30000000
    235c:	f000602b 			; <UNDEFINED> instruction: 0xf000602b
    2360:	e780fddb 			; <UNDEFINED> instruction: 0xe780fddb
    2364:	e77a2700 	ldrb	r2, [sl, -r0, lsl #14]!
    2368:	2b0f9b01 	blcs	3e8f74 <__bss_end__+0x3d7f6c>
    236c:	e781d9d4 			; <UNDEFINED> instruction: 0xe781d9d4
    2370:	bdf0b045 	ldcllt	0, cr11, [r0, #276]!	; 0x114

00002374 <__restore_core_regs>:
    2374:	e2801034 	add	r1, r0, #52	; 0x34
    2378:	e8910038 	ldm	r1, {r3, r4, r5}
    237c:	e92d0038 	push	{r3, r4, r5}
    2380:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
    2384:	e89de000 	ldm	sp, {sp, lr, pc}

00002388 <__gnu_Unwind_Restore_VFP>:
    2388:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
    238c:	e12fff1e 	bx	lr

00002390 <__gnu_Unwind_Save_VFP>:
    2390:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
    2394:	e12fff1e 	bx	lr

00002398 <__gnu_Unwind_Restore_VFP_D>:
    2398:	ec900b20 	vldmia	r0, {d0-d15}
    239c:	e12fff1e 	bx	lr

000023a0 <__gnu_Unwind_Save_VFP_D>:
    23a0:	ec800b20 	vstmia	r0, {d0-d15}
    23a4:	e12fff1e 	bx	lr

000023a8 <__gnu_Unwind_Restore_VFP_D_16_to_31>:
    23a8:	ecd00b20 	vldmia	r0, {d16-d31}
    23ac:	e12fff1e 	bx	lr

000023b0 <__gnu_Unwind_Save_VFP_D_16_to_31>:
    23b0:	ecc00b20 	vstmia	r0, {d16-d31}
    23b4:	e12fff1e 	bx	lr

000023b8 <__gnu_Unwind_Restore_WMMXD>:
    23b8:	ecf00102 	ldfe	f0, [r0], #8
    23bc:	ecf01102 	ldfe	f1, [r0], #8
    23c0:	ecf02102 	ldfe	f2, [r0], #8
    23c4:	ecf03102 	ldfe	f3, [r0], #8
    23c8:	ecf04102 	ldfe	f4, [r0], #8
    23cc:	ecf05102 	ldfe	f5, [r0], #8
    23d0:	ecf06102 	ldfe	f6, [r0], #8
    23d4:	ecf07102 	ldfe	f7, [r0], #8
    23d8:	ecf08102 	ldfp	f0, [r0], #8
    23dc:	ecf09102 	ldfp	f1, [r0], #8
    23e0:	ecf0a102 	ldfp	f2, [r0], #8
    23e4:	ecf0b102 	ldfp	f3, [r0], #8
    23e8:	ecf0c102 	ldfp	f4, [r0], #8
    23ec:	ecf0d102 	ldfp	f5, [r0], #8
    23f0:	ecf0e102 	ldfp	f6, [r0], #8
    23f4:	ecf0f102 	ldfp	f7, [r0], #8
    23f8:	e12fff1e 	bx	lr

000023fc <__gnu_Unwind_Save_WMMXD>:
    23fc:	ece00102 	stfe	f0, [r0], #8
    2400:	ece01102 	stfe	f1, [r0], #8
    2404:	ece02102 	stfe	f2, [r0], #8
    2408:	ece03102 	stfe	f3, [r0], #8
    240c:	ece04102 	stfe	f4, [r0], #8
    2410:	ece05102 	stfe	f5, [r0], #8
    2414:	ece06102 	stfe	f6, [r0], #8
    2418:	ece07102 	stfe	f7, [r0], #8
    241c:	ece08102 	stfp	f0, [r0], #8
    2420:	ece09102 	stfp	f1, [r0], #8
    2424:	ece0a102 	stfp	f2, [r0], #8
    2428:	ece0b102 	stfp	f3, [r0], #8
    242c:	ece0c102 	stfp	f4, [r0], #8
    2430:	ece0d102 	stfp	f5, [r0], #8
    2434:	ece0e102 	stfp	f6, [r0], #8
    2438:	ece0f102 	stfp	f7, [r0], #8
    243c:	e12fff1e 	bx	lr

00002440 <__gnu_Unwind_Restore_WMMXC>:
    2440:	fcb08101 	ldc2	1, cr8, [r0], #4
    2444:	fcb09101 	ldc2	1, cr9, [r0], #4
    2448:	fcb0a101 	ldc2	1, cr10, [r0], #4
    244c:	fcb0b101 	ldc2	1, cr11, [r0], #4
    2450:	e12fff1e 	bx	lr

00002454 <__gnu_Unwind_Save_WMMXC>:
    2454:	fca08101 	stc2	1, cr8, [r0], #4
    2458:	fca09101 	stc2	1, cr9, [r0], #4
    245c:	fca0a101 	stc2	1, cr10, [r0], #4
    2460:	fca0b101 	stc2	1, cr11, [r0], #4
    2464:	e12fff1e 	bx	lr

00002468 <_Unwind_RaiseException>:
    2468:	e92de000 	push	{sp, lr, pc}
    246c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    2470:	e3a03000 	mov	r3, #0
    2474:	e92d000c 	push	{r2, r3}
    2478:	e28d1004 	add	r1, sp, #4
    247c:	e28fc004 	add	ip, pc, #4
    2480:	e38cc001 	orr	ip, ip, #1
    2484:	e12fff1c 	bx	ip
    2488:	fd56f000 	ldc2l	0, cr15, [r6, #-0]
    248c:	b0129b10 	andslt	r9, r2, r0, lsl fp
    2490:	46c04718 			; <UNDEFINED> instruction: 0x46c04718

00002494 <_Unwind_Resume>:
    2494:	e92de000 	push	{sp, lr, pc}
    2498:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    249c:	e3a03000 	mov	r3, #0
    24a0:	e92d000c 	push	{r2, r3}
    24a4:	e28d1004 	add	r1, sp, #4
    24a8:	e28fc004 	add	ip, pc, #4
    24ac:	e38cc001 	orr	ip, ip, #1
    24b0:	e12fff1c 	bx	ip
    24b4:	fd28f000 	stc2	0, cr15, [r8, #-0]
    24b8:	b0129b10 	andslt	r9, r2, r0, lsl fp
    24bc:	46c04718 			; <UNDEFINED> instruction: 0x46c04718

000024c0 <_Unwind_Resume_or_Rethrow>:
    24c0:	e92de000 	push	{sp, lr, pc}
    24c4:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    24c8:	e3a03000 	mov	r3, #0
    24cc:	e92d000c 	push	{r2, r3}
    24d0:	e28d1004 	add	r1, sp, #4
    24d4:	e28fc004 	add	ip, pc, #4
    24d8:	e38cc001 	orr	ip, ip, #1
    24dc:	e12fff1c 	bx	ip
    24e0:	fcf2f000 	ldc2l	0, cr15, [r2]
    24e4:	b0129b10 	andslt	r9, r2, r0, lsl fp
    24e8:	46c04718 			; <UNDEFINED> instruction: 0x46c04718

000024ec <_Unwind_ForcedUnwind>:
    24ec:	e92de000 	push	{sp, lr, pc}
    24f0:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    24f4:	e3a03000 	mov	r3, #0
    24f8:	e92d000c 	push	{r2, r3}
    24fc:	e28d3004 	add	r3, sp, #4
    2500:	e28fc004 	add	ip, pc, #4
    2504:	e38cc001 	orr	ip, ip, #1
    2508:	e12fff1c 	bx	ip
    250c:	fd34f000 	ldc2	0, cr15, [r4, #-0]
    2510:	b0129b10 	andslt	r9, r2, r0, lsl fp
    2514:	46c04718 			; <UNDEFINED> instruction: 0x46c04718

00002518 <_Unwind_Backtrace>:
    2518:	e92de000 	push	{sp, lr, pc}
    251c:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    2520:	e3a03000 	mov	r3, #0
    2524:	e92d000c 	push	{r2, r3}
    2528:	e28d2004 	add	r2, sp, #4
    252c:	e28fc004 	add	ip, pc, #4
    2530:	e38cc001 	orr	ip, ip, #1
    2534:	e12fff1c 	bx	ip
    2538:	fc9ef000 	ldc2	0, cr15, [lr], {0}
    253c:	b0129b10 	andslt	r9, r2, r0, lsl fp
    2540:	46c04718 			; <UNDEFINED> instruction: 0x46c04718
    2544:	1c037a02 			; <UNDEFINED> instruction: 0x1c037a02
    2548:	d10c2a00 	tstle	ip, r0, lsl #20
    254c:	20b07a42 	adcscs	r7, r0, r2, asr #20
    2550:	d00e2a00 	andle	r2, lr, r0, lsl #20
    2554:	725a3a01 	subsvc	r3, sl, #4096	; 0x1000
    2558:	1d11685a 	ldcne	8, cr6, [r1, #-360]	; 0xfffffe98
    255c:	601a6812 	andsvs	r6, sl, r2, lsl r8
    2560:	22036059 	andcs	r6, r3, #89	; 0x59
    2564:	3a01e000 	bcc	7a56c <__bss_end__+0x69564>
    2568:	721a6818 	andsvc	r6, sl, #24, 16	; 0x180000
    256c:	0e000202 	cdpeq	2, 0, cr0, cr0, cr2, {0}
    2570:	4770601a 			; <UNDEFINED> instruction: 0x4770601a
    2574:	2100b51f 	tstcs	r0, pc, lsl r5
    2578:	9300ab03 	movwls	sl, #2819	; 0xb03
    257c:	1c0b220c 	sfmne	f2, 4, [fp], {12}
    2580:	fcd2f000 	ldc2l	0, cr15, [r2], {0}
    2584:	b0059803 	andlt	r9, r5, r3, lsl #16
    2588:	b508bd00 	strlt	fp, [r8, #-3328]	; 0xfffff300
    258c:	fff2f7ff 			; <UNDEFINED> instruction: 0xfff2f7ff
    2590:	b5f0bd08 	ldrblt	fp, [r0, #3336]!	; 0xd08
    2594:	b0872300 	addlt	r2, r7, r0, lsl #6
    2598:	1c0f1c05 	stcne	12, cr1, [pc], {5}
    259c:	1c389302 	ldcne	3, cr9, [r8], #-8
    25a0:	ffd0f7ff 			; <UNDEFINED> instruction: 0xffd0f7ff
    25a4:	2cb01e04 	ldccs	14, cr1, [r0], #16
    25a8:	9b02d114 	blls	b6a00 <__bss_end__+0xa59f8>
    25ac:	42a32400 	adcmi	r2, r3, #0, 8
    25b0:	e12dd000 			; <UNDEFINED> instruction: 0xe12dd000
    25b4:	1c21ae05 	stcne	14, cr10, [r1], #-20	; 0xffffffec
    25b8:	96001c23 	strls	r1, [r0], -r3, lsr #24
    25bc:	220e1c28 	andcs	r1, lr, #40, 24	; 0x2800
    25c0:	fcb2f000 	ldc2	0, cr15, [r2]
    25c4:	1c289600 	stcne	6, cr9, [r8], #-0
    25c8:	220f1c21 	andcs	r1, pc, #8448	; 0x2100
    25cc:	f0001c23 			; <UNDEFINED> instruction: 0xf0001c23
    25d0:	e11dfc5b 	tst	sp, fp, asr ip	; <UNPREDICTABLE>
    25d4:	1c02237f 	stcne	3, cr2, [r2], {127}	; 0x7f
    25d8:	0613439a 			; <UNDEFINED> instruction: 0x0613439a
    25dc:	d1140e1b 	tstle	r4, fp, lsl lr
    25e0:	22ff0086 	rscscs	r0, pc, #134	; 0x86
    25e4:	aa054016 	bge	152644 <__bss_end__+0x14163c>
    25e8:	92009203 	andls	r9, r0, #805306368	; 0x30000000
    25ec:	220d1c19 	andcs	r1, sp, #6400	; 0x1900
    25f0:	f0001c28 			; <UNDEFINED> instruction: 0xf0001c28
    25f4:	9a05fc99 	bls	181860 <__bss_end__+0x170858>
    25f8:	18b33604 	ldmne	r3!, {r2, r9, sl, ip, sp}
    25fc:	d5000661 	strle	r0, [r0, #-1633]	; 0xfffff99f
    2600:	93051b93 	movwls	r1, #23443	; 0x5b93
    2604:	93009b03 	movwls	r9, #2819	; 0xb03
    2608:	260fe02f 	strcs	lr, [pc], -pc, lsr #32
    260c:	43b31c03 			; <UNDEFINED> instruction: 0x43b31c03
    2610:	0e1b061b 	mrceq	6, 0, r0, cr11, cr11, {0}
    2614:	d1182b80 	tstle	r8, r0, lsl #23
    2618:	1c380204 	lfmne	f0, 4, [r8], #-16
    261c:	ff92f7ff 			; <UNDEFINED> instruction: 0xff92f7ff
    2620:	02362680 	eorseq	r2, r6, #128, 12	; 0x8000000
    2624:	42b04320 	adcsmi	r4, r0, #32, 6	; 0x80000000
    2628:	2409d101 	strcs	sp, [r9], #-257	; 0xfffffeff
    262c:	0502e0f0 	streq	lr, [r2, #-240]	; 0xffffff10
    2630:	01042100 	mrseq	r2, (UNDEF: 20)
    2634:	1c280c12 	stcne	12, cr0, [r8], #-72	; 0xffffffb8
    2638:	f0001c0b 			; <UNDEFINED> instruction: 0xf0001c0b
    263c:	2800fc05 	stmdacs	r0, {r0, r2, sl, fp, ip, sp, lr, pc}
    2640:	4234d1f3 	eorsmi	sp, r4, #-1073741764	; 0xc000003c
    2644:	2301d0ab 	movwcs	sp, #4267	; 0x10ab
    2648:	2b90e7a8 	blcs	fe43c4f0 <__bss_end__+0xfe42b4e8>
    264c:	230dd114 	movwcs	sp, #53524	; 0xd114
    2650:	2b0d4003 	blcs	352664 <__bss_end__+0x34165c>
    2654:	1c02d0e9 	stcne	0, cr13, [r2], {233}	; 0xe9
    2658:	2100ac05 	tstcs	r0, r5, lsl #24
    265c:	94004032 	strls	r4, [r0], #-50	; 0xffffffce
    2660:	1c0b1c28 	stcne	12, cr1, [fp], {40}	; 0x28
    2664:	fc60f000 	stc2l	0, cr15, [r0], #-0
    2668:	21009400 	tstcs	r0, r0, lsl #8
    266c:	220d1c28 	andcs	r1, sp, #40, 24	; 0x2800
    2670:	f0001c0b 			; <UNDEFINED> instruction: 0xf0001c0b
    2674:	e792fc09 	ldr	pc, [r2, r9, lsl #24]
    2678:	d10f2ba0 	smlatble	pc, r0, fp, r2	; <UNPREDICTABLE>
    267c:	011b23ff 			; <UNDEFINED> instruction: 0x011b23ff
    2680:	43822207 	orrmi	r2, r2, #1879048192	; 0x70000000
    2684:	41111c19 	tstmi	r1, r9, lsl ip
    2688:	401a1c0a 	andsmi	r1, sl, sl, lsl #24
    268c:	d5020703 	strle	r0, [r2, #-1795]	; 0xfffff8fd
    2690:	01db2380 	bicseq	r2, fp, r0, lsl #7
    2694:	1c28431a 	stcne	3, cr4, [r8], #-104	; 0xffffff98
    2698:	e0822100 	add	r2, r2, r0, lsl #2
    269c:	d1552bb0 	ldrhle	r2, [r5, #-176]	; 0xffffff50
    26a0:	d10c28b1 			; <UNDEFINED> instruction: 0xd10c28b1
    26a4:	f7ff1c38 			; <UNDEFINED> instruction: 0xf7ff1c38
    26a8:	1e02ff4d 	cdpne	15, 0, cr15, cr2, cr13, {2}
    26ac:	1c03d0bd 	stcne	0, cr13, [r3], {189}	; 0xbd
    26b0:	061b43b3 			; <UNDEFINED> instruction: 0x061b43b3
    26b4:	d1b80e1b 			; <UNDEFINED> instruction: 0xd1b80e1b
    26b8:	1c191c28 	ldcne	12, cr1, [r9], {40}	; 0x28
    26bc:	28b2e0a2 	ldmcs	r2!, {r1, r5, r7, sp, lr, pc}
    26c0:	2100d128 	tstcs	r0, r8, lsr #2
    26c4:	220dae05 	andcs	sl, sp, #5, 28	; 0x50
    26c8:	96001c0b 	strls	r1, [r0], -fp, lsl #24
    26cc:	f0001c28 			; <UNDEFINED> instruction: 0xf0001c28
    26d0:	1c38fc2b 	ldcne	12, cr15, [r8], #-172	; 0xffffff54
    26d4:	ff36f7ff 			; <UNDEFINED> instruction: 0xff36f7ff
    26d8:	23802402 	orrcs	r2, r0, #33554432	; 0x2000000
    26dc:	4003227f 	andmi	r2, r3, pc, ror r2
    26e0:	99054694 	stmdbls	r5, {r2, r4, r7, r9, sl, lr}
    26e4:	4662d009 	strbtmi	sp, [r2], -r9
    26e8:	40a24002 	adcmi	r4, r2, r2
    26ec:	90051888 	andls	r1, r5, r8, lsl #17
    26f0:	34071c38 	strcc	r1, [r7], #-3128	; 0xfffff3c8
    26f4:	ff26f7ff 			; <UNDEFINED> instruction: 0xff26f7ff
    26f8:	2281e7ef 	addcs	lr, r1, #62652416	; 0x3bc0000
    26fc:	18890092 	stmne	r9, {r1, r4, r7}
    2700:	40024662 	andmi	r4, r2, r2, ror #12
    2704:	188c40a2 	stmne	ip, {r1, r5, r7, lr}
    2708:	96009405 	strls	r9, [r0], -r5, lsl #8
    270c:	1c191c28 	ldcne	12, cr1, [r9], {40}	; 0x28
    2710:	e7ae220d 	str	r2, [lr, sp, lsl #4]!
    2714:	d10b28b3 			; <UNDEFINED> instruction: 0xd10b28b3
    2718:	f7ff1c38 			; <UNDEFINED> instruction: 0xf7ff1c38
    271c:	1c02ff13 	stcne	15, cr15, [r2], {19}
    2720:	060043b0 			; <UNDEFINED> instruction: 0x060043b0
    2724:	0e004032 	mcreq	0, 0, r4, cr0, cr2, {1}
    2728:	03003201 	movweq	r3, #513	; 0x201
    272c:	e00a4302 	and	r4, sl, r2, lsl #6
    2730:	400323fc 	strdmi	r2, [r3], -ip
    2734:	d1002bb4 			; <UNDEFINED> instruction: 0xd1002bb4
    2738:	2307e777 	movwcs	lr, #30583	; 0x7777
    273c:	2280401c 	addcs	r4, r0, #28
    2740:	03123401 	tsteq	r2, #16777216	; 0x1000000
    2744:	1c284322 	stcne	3, cr4, [r8], #-136	; 0xffffff78
    2748:	e02a2101 	eor	r2, sl, r1, lsl #2
    274c:	d1492bc0 	smlalbtle	r2, r9, r0, fp
    2750:	d10b28c6 	smlabtle	fp, r6, r8, r2
    2754:	f7ff1c38 			; <UNDEFINED> instruction: 0xf7ff1c38
    2758:	1c02fef5 	stcne	14, cr15, [r2], {245}	; 0xf5
    275c:	060043b0 			; <UNDEFINED> instruction: 0x060043b0
    2760:	0e004032 	mcreq	0, 0, r4, cr0, cr2, {1}
    2764:	03003201 	movweq	r3, #513	; 0x201
    2768:	e0184302 	ands	r4, r8, r2, lsl #6
    276c:	d10c28c7 	smlabtle	ip, r7, r8, r2
    2770:	f7ff1c38 			; <UNDEFINED> instruction: 0xf7ff1c38
    2774:	1e02fee7 	cdpne	14, 0, cr15, cr2, cr7, {7}
    2778:	e756d100 	ldrb	sp, [r6, -r0, lsl #2]
    277c:	400323f0 	strdmi	r2, [r3], -r0
    2780:	e752d000 	ldrb	sp, [r2, -r0]
    2784:	21041c28 	tstcs	r4, r8, lsr #24
    2788:	23f8e03c 	mvnscs	lr, #60	; 0x3c
    278c:	2bc04003 	blcs	ff0127a0 <__bss_end__+0xff001798>
    2790:	230fd109 	movwcs	sp, #61705	; 0xf109
    2794:	22a0401c 	adccs	r4, r0, #28
    2798:	03123401 	tsteq	r2, #16777216	; 0x1000000
    279c:	1c284322 	stcne	3, cr4, [r8], #-136	; 0xffffff78
    27a0:	1c0b2103 	stfnes	f2, [fp], {3}
    27a4:	28c8e02e 	stmiacs	r8, {r1, r2, r3, r5, sp, lr, pc}^
    27a8:	1c38d10c 	ldfned	f5, [r8], #-48	; 0xffffffd0
    27ac:	fecaf7ff 	mcr2	7, 6, pc, cr10, cr15, {7}	; <UNPREDICTABLE>
    27b0:	1c03220f 	sfmne	f2, 4, [r3], {15}
    27b4:	061b4393 			; <UNDEFINED> instruction: 0x061b4393
    27b8:	33100e1b 	tstcc	r0, #432	; 0x1b0
    27bc:	031b4002 	tsteq	fp, #2
    27c0:	e01b3201 	ands	r3, fp, r1, lsl #4
    27c4:	d00028c9 	andle	r2, r0, r9, asr #17
    27c8:	1c38e72f 	ldcne	7, cr14, [r8], #-188	; 0xffffff44
    27cc:	febaf7ff 	mrc2	7, 5, pc, cr10, cr15, {7}
    27d0:	1c02230f 	stcne	3, cr2, [r2], {15}
    27d4:	06004398 			; <UNDEFINED> instruction: 0x06004398
    27d8:	0e00401a 	mcreq	0, 0, r4, cr0, cr10, {0}
    27dc:	03003201 	movweq	r3, #513	; 0x201
    27e0:	e00c4302 	and	r4, ip, r2, lsl #6
    27e4:	1c032207 	sfmne	f2, 4, [r3], {7}
    27e8:	061b4393 			; <UNDEFINED> instruction: 0x061b4393
    27ec:	2bd00e1b 	blcs	ff406060 <__bss_end__+0xff3f5058>
    27f0:	e71ad000 	ldr	sp, [sl, -r0]
    27f4:	23804002 	orrcs	r4, r0, #2
    27f8:	031b3201 	tsteq	fp, #268435456	; 0x10000000
    27fc:	1c28431a 	stcne	3, cr4, [r8], #-104	; 0xffffff98
    2800:	23052101 	movwcs	r2, #20737	; 0x5101
    2804:	fb20f000 	blx	83e80e <__bss_end__+0x82d806>
    2808:	d0002800 	andle	r2, r0, r0, lsl #16
    280c:	e6c6e70d 	strb	lr, [r6], sp, lsl #14
    2810:	b0071c20 	andlt	r1, r7, r0, lsr #24
    2814:	b51fbdf0 	ldrlt	fp, [pc, #-3568]	; 1a2c <free@plt+0x4b4>
    2818:	ab016cc2 	blge	5db28 <__bss_end__+0x4cb20>
    281c:	02046850 	andeq	r6, r4, #80, 16	; 0x500000
    2820:	30081c10 	andcc	r1, r8, r0, lsl ip
    2824:	20039002 	andcs	r9, r3, r2
    2828:	1c087218 	sfmne	f7, 4, [r8], {24}
    282c:	1c1979d2 			; <UNDEFINED> instruction: 0x1c1979d2
    2830:	725a9401 	subsvc	r9, sl, #16777216	; 0x1000000
    2834:	fb00f000 	blx	3e83e <__bss_end__+0x2d836>
    2838:	bd10b004 	ldclt	0, cr11, [r0, #-16]
    283c:	f7ffb508 			; <UNDEFINED> instruction: 0xf7ffb508
    2840:	6c80fea4 	stcvs	14, cr15, [r0], {164}	; 0xa4
    2844:	b508bd08 	strlt	fp, [r8, #-3336]	; 0xfffff2f8
    2848:	fe9ff7ff 	mrc2	7, 4, pc, cr15, cr15, {7}
    284c:	79d86cc3 	ldmibvc	r8, {r0, r1, r6, r7, sl, fp, sp, lr}^
    2850:	30080080 	andcc	r0, r8, r0, lsl #1
    2854:	bd081818 	stclt	8, cr1, [r8, #-96]	; 0xffffffa0
    2858:	f7feb508 			; <UNDEFINED> instruction: 0xf7feb508
    285c:	b508fdd7 	strlt	pc, [r8, #-3543]	; 0xfffff229
    2860:	fdd4f7fe 	ldc2l	7, cr15, [r4, #1016]	; 0x3f8
    2864:	4671b402 	ldrbtmi	fp, [r1], -r2, lsl #8
    2868:	00490849 	subeq	r0, r9, r9, asr #16
    286c:	00495c09 	subeq	r5, r9, r9, lsl #24
    2870:	bc02448e 	cfstrslt	mvf4, [r2], {142}	; 0x8e
    2874:	46c04770 			; <UNDEFINED> instruction: 0x46c04770
    2878:	b5f0b40f 	ldrblt	fp, [r0, #1039]!	; 0x40f
    287c:	26802582 	strcs	r2, [r0], r2, lsl #11
    2880:	012d4c10 			; <UNDEFINED> instruction: 0x012d4c10
    2884:	44a50136 	strtmi	r0, [r5], #310	; 0x136
    2888:	cd80446d 	cfstrsgt	mvf4, [r0, #436]	; 0x1b4
    288c:	1c32ac02 	ldcne	12, cr10, [r2], #-8
    2890:	21001c20 	tstcs	r0, r0, lsr #24
    2894:	fe18f7fe 	mrc2	7, 0, pc, cr8, cr14, {7}
    2898:	1c3a1c31 	ldcne	12, cr1, [sl], #-196	; 0xffffff3c
    289c:	1c201c2b 	stcne	12, cr1, [r0], #-172	; 0xffffff54
    28a0:	f7fe9501 			; <UNDEFINED> instruction: 0xf7fe9501
    28a4:	4908fd93 	stmdbmi	r8, {r0, r1, r4, r7, r8, sl, fp, ip, sp, lr, pc}
    28a8:	1c234a08 			; <UNDEFINED> instruction: 0x1c234a08
    28ac:	447a4479 	ldrbtmi	r4, [sl], #-1145	; 0xfffffb87
    28b0:	f7fe2004 			; <UNDEFINED> instruction: 0xf7fe2004
    28b4:	4b06fda3 	blmi	1c1f48 <__bss_end__+0x1b0f40>
    28b8:	bcf0449d 	cfldrdlt	mvd4, [r0], #628	; 0x274
    28bc:	b004bc08 	andlt	fp, r4, r8, lsl #24
    28c0:	46c04718 			; <UNDEFINED> instruction: 0x46c04718
    28c4:	fffff7f4 			; <UNDEFINED> instruction: 0xfffff7f4
    28c8:	00000a94 	muleq	r0, r4, sl
    28cc:	00000924 	andeq	r0, r0, r4, lsr #18
    28d0:	0000080c 	andeq	r0, r0, ip, lsl #16
    28d4:	2400b5f0 	strcs	fp, [r0], #-1520	; 0xfffffa10
    28d8:	af06b0cf 	svcge	0x0006b0cf
    28dc:	1c219002 	stcne	0, cr9, [r1], #-8
    28e0:	1c382220 	lfmne	f2, 4, [r8], #-128	; 0xffffff80
    28e4:	f7fe9405 			; <UNDEFINED> instruction: 0xf7fe9405
    28e8:	2280fdef 	addcs	pc, r0, #15296	; 0x3bc0
    28ec:	1c21a80e 	stcne	8, cr10, [r1], #-56	; 0xffffffc8
    28f0:	f7fe0052 			; <UNDEFINED> instruction: 0xf7fe0052
    28f4:	9b02fde9 	blls	c20a0 <__bss_end__+0xb1098>
    28f8:	d10742a3 	smlatble	r7, r3, r2, r4
    28fc:	494b484a 	stmdbmi	fp, {r1, r3, r6, fp, lr}^
    2900:	44794478 	ldrbtmi	r4, [r9], #-1144	; 0xfffffb88
    2904:	ffb8f7ff 			; <UNDEFINED> instruction: 0xffb8f7ff
    2908:	e08a9802 	add	r9, sl, r2, lsl #16
    290c:	48494c48 	stmdami	r9, {r3, r6, sl, fp, lr}^
    2910:	447c9a02 	ldrbtmi	r9, [ip], #-2562	; 0xfffff5fe
    2914:	1c214478 	cfstrsne	mvf4, [r1], #-480	; 0xfffffe20
    2918:	ffaef7ff 			; <UNDEFINED> instruction: 0xffaef7ff
    291c:	44784846 	ldrbtmi	r4, [r8], #-2118	; 0xfffff7ba
    2920:	fde2f7fe 	stc2l	7, cr15, [r2, #1016]!	; 0x3f8
    2924:	d10a1e06 	tstle	sl, r6, lsl #28
    2928:	1c214844 	stcne	8, cr4, [r1], #-272	; 0xfffffef0
    292c:	f7ff4478 			; <UNDEFINED> instruction: 0xf7ff4478
    2930:	1c30ffa3 	ldcne	15, cr15, [r0], #-652	; 0xfffffd74
    2934:	7cc3e075 	stclvc	0, cr14, [r3], {117}	; 0x75
    2938:	2b093b30 	blcs	251600 <__bss_end__+0x2405f8>
    293c:	1c30d905 			; <UNDEFINED> instruction: 0x1c30d905
    2940:	fd54f7fe 	ldc2l	7, cr15, [r4, #-1016]	; 0xfffffc08
    2944:	d1f62800 	mvnsle	r2, r0, lsl #16
    2948:	3013e067 	andscc	lr, r3, r7, rrx
    294c:	fdecf7fe 	stc2l	7, cr15, [ip, #1016]!	; 0x3f8
    2950:	ddf41e03 	ldclle	14, cr1, [r4, #12]!
    2954:	ad0e4a3a 	vstrge	s8, [lr, #-232]	; 0xffffff18
    2958:	447a21ff 	ldrbtmi	r2, [sl], #-511	; 0xfffffe01
    295c:	f7fe1c28 			; <UNDEFINED> instruction: 0xf7fe1c28
    2960:	4938fcdf 	ldmdbmi	r8!, {r0, r1, r2, r3, r4, r6, r7, sl, fp, ip, sp, lr, pc}
    2964:	44791c28 	ldrbtmi	r1, [r9], #-3112	; 0xfffff3d8
    2968:	fda6f7fe 	stc2	7, cr15, [r6, #1016]!	; 0x3f8
    296c:	d11b1e04 	tstle	fp, r4, lsl #28
    2970:	fcdef7fe 	ldc2l	7, cr15, [lr], {254}	; 0xfe
    2974:	93036803 	movwls	r6, #14339	; 0x3803
    2978:	fcdaf7fe 	ldc2l	7, cr15, [sl], {254}	; 0xfe
    297c:	f7fe6800 			; <UNDEFINED> instruction: 0xf7fe6800
    2980:	4931fcc7 	ldmdbmi	r1!, {r0, r1, r2, r6, r7, sl, fp, ip, sp, lr, pc}
    2984:	48319000 	ldmdami	r1!, {ip, pc}
    2988:	44799b03 	ldrbtmi	r9, [r9], #-2819	; 0xfffff4fd
    298c:	1c2a4478 	cfstrsne	mvf4, [sl], #-480	; 0xfffffe20
    2990:	ff72f7ff 			; <UNDEFINED> instruction: 0xff72f7ff
    2994:	fcccf7fe 	stc2l	7, cr15, [ip], {254}	; 0xfe
    2998:	2b026803 	blcs	9c9ac <__bss_end__+0x8b9a4>
    299c:	1c30d0cf 	ldcne	0, cr13, [r0], #-828	; 0xfffffcc4
    29a0:	fdd2f7fe 	ldc2l	7, cr15, [r2, #1016]	; 0x3f8
    29a4:	e03c1c20 	eors	r1, ip, r0, lsr #24
    29a8:	21002280 	smlabbcs	r0, r0, r2, r2
    29ac:	1c280052 	stcne	0, cr0, [r8], #-328	; 0xfffffeb8
    29b0:	fd8af7fe 	stc2	7, cr15, [sl, #1016]	; 0x3f8
    29b4:	21011c23 	tstcs	r1, r3, lsr #24
    29b8:	1c2822ff 	sfmne	f2, 4, [r8], #-1020	; 0xfffffc04
    29bc:	fd74f7fe 	ldc2l	7, cr15, [r4, #-1016]!	; 0xfffffc08
    29c0:	1c209003 	stcne	0, cr9, [r0], #-12
    29c4:	fd88f7fe 	stc2	7, cr15, [r8, #1016]	; 0x3f8
    29c8:	2b4f9b03 	blcs	13e95dc <__bss_end__+0x13d85d4>
    29cc:	2400ddb7 	strcs	sp, [r0], #-3511	; 0xfffff249
    29d0:	21291c28 			; <UNDEFINED> instruction: 0x21291c28
    29d4:	f7fe54ec 			; <UNDEFINED> instruction: 0xf7fe54ec
    29d8:	42a0fd21 	adcmi	pc, r0, #2112	; 0x840
    29dc:	491cd0af 	ldmdbmi	ip, {r0, r1, r2, r3, r5, r7, ip, lr, pc}
    29e0:	aa057004 	bge	15e9f8 <__bss_end__+0x14d9f0>
    29e4:	1c284479 	cfstrsne	mvf4, [r8], #-484	; 0xfffffe1c
    29e8:	f7fe1c3b 			; <UNDEFINED> instruction: 0xf7fe1c3b
    29ec:	9802fd4d 	stmdals	r2, {r0, r2, r3, r6, r8, sl, fp, ip, sp, lr, pc}
    29f0:	f7fe1c39 			; <UNDEFINED> instruction: 0xf7fe1c39
    29f4:	42a0fd81 	adcmi	pc, r0, #8256	; 0x2040
    29f8:	4816d108 	ldmdami	r6, {r3, r8, ip, lr, pc}
    29fc:	1c3a4916 			; <UNDEFINED> instruction: 0x1c3a4916
    2a00:	44794478 	ldrbtmi	r4, [r9], #-1144	; 0xfffffb88
    2a04:	f7ff9b05 			; <UNDEFINED> instruction: 0xf7ff9b05
    2a08:	e006ff37 	and	pc, r6, r7, lsr pc	; <UNPREDICTABLE>
    2a0c:	1c211c38 	stcne	12, cr1, [r1], #-224	; 0xffffff20
    2a10:	94052220 	strls	r2, [r5], #-544	; 0xfffffde0
    2a14:	fd58f7fe 	ldc2l	7, cr15, [r8, #-1016]	; 0xfffffc08
    2a18:	1c30e791 	ldcne	7, cr14, [r0], #-580	; 0xfffffdbc
    2a1c:	fd94f7fe 	ldc2	7, cr15, [r4, #1016]	; 0x3f8
    2a20:	b04f9805 	sublt	r9, pc, r5, lsl #16
    2a24:	46c0bdf0 			; <UNDEFINED> instruction: 0x46c0bdf0
    2a28:	00000a48 	andeq	r0, r0, r8, asr #20
    2a2c:	000009ee 	andeq	r0, r0, lr, ror #19
    2a30:	000009de 	ldrdeq	r0, [r0], -lr
    2a34:	00000a45 	andeq	r0, r0, r5, asr #20
    2a38:	00000a5a 	andeq	r0, r0, sl, asr sl
    2a3c:	00000a52 	andeq	r0, r0, r2, asr sl
    2a40:	00000a3c 	andeq	r0, r0, ip, lsr sl
    2a44:	00000a3e 	andeq	r0, r0, lr, lsr sl
    2a48:	00000966 	andeq	r0, r0, r6, ror #18
    2a4c:	00000a1a 	andeq	r0, r0, sl, lsl sl
    2a50:	000009f4 	strdeq	r0, [r0], -r4
    2a54:	000009df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    2a58:	000008ee 	andeq	r0, r0, lr, ror #17
    2a5c:	4c12b570 	cfldr32mi	mvfx11, [r2], {112}	; 0x70
    2a60:	44a51c06 	strtmi	r1, [r5], #3078	; 0xc06
    2a64:	fa48f000 	blx	123ea6c <__bss_end__+0x122da64>
    2a68:	d0181e04 	andsle	r1, r8, r4, lsl #28
    2a6c:	21002280 	smlabbcs	r0, r0, r2, r2
    2a70:	466800d2 			; <UNDEFINED> instruction: 0x466800d2
    2a74:	fd28f7fe 	stc2	7, cr15, [r8, #-1016]!	; 0xfffffc08
    2a78:	490d4a0c 	stmdbmi	sp, {r2, r3, r9, fp, lr}
    2a7c:	447a1c23 	ldrbtmi	r1, [sl], #-3107	; 0xfffff3dd
    2a80:	f7fe4668 			; <UNDEFINED> instruction: 0xf7fe4668
    2a84:	4668fc4d 	strbtmi	pc, [r8], -sp, asr #24	; <UNPREDICTABLE>
    2a88:	fc90f7fe 	ldc2	7, cr15, [r0], {254}	; 0xfe
    2a8c:	480a4909 	stmdami	sl, {r0, r3, r8, fp, lr}
    2a90:	44791c32 	ldrbtmi	r1, [r9], #-3122	; 0xfffff3ce
    2a94:	31144478 	tstcc	r4, r8, ror r4
    2a98:	f7ff1c23 			; <UNDEFINED> instruction: 0xf7ff1c23
    2a9c:	2380feed 	orrcs	pc, r0, #3792	; 0xed0
    2aa0:	449d00db 	ldrmi	r0, [sp], #219	; 0xdb
    2aa4:	46c0bd70 			; <UNDEFINED> instruction: 0x46c0bd70
    2aa8:	fffffc00 			; <UNDEFINED> instruction: 0xfffffc00
    2aac:	0000098c 	andeq	r0, r0, ip, lsl #19
    2ab0:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    2ab4:	0000085e 	andeq	r0, r0, lr, asr r8
    2ab8:	00000981 	andeq	r0, r0, r1, lsl #19
    2abc:	4c12b570 	cfldr32mi	mvfx11, [r2], {112}	; 0x70
    2ac0:	44a51c06 	strtmi	r1, [r5], #3078	; 0xc06
    2ac4:	fa18f000 	blx	63eacc <__bss_end__+0x62dac4>
    2ac8:	d0181e04 	andsle	r1, r8, r4, lsl #28
    2acc:	21002280 	smlabbcs	r0, r0, r2, r2
    2ad0:	466800d2 			; <UNDEFINED> instruction: 0x466800d2
    2ad4:	fcf8f7fe 	ldc2l	7, cr15, [r8], #1016	; 0x3f8
    2ad8:	490d4a0c 	stmdbmi	sp, {r2, r3, r9, fp, lr}
    2adc:	447a1c23 	ldrbtmi	r1, [sl], #-3107	; 0xfffff3dd
    2ae0:	f7fe4668 			; <UNDEFINED> instruction: 0xf7fe4668
    2ae4:	4668fc1d 			; <UNDEFINED> instruction: 0x4668fc1d
    2ae8:	fc60f7fe 	stc2l	7, cr15, [r0], #-1016	; 0xfffffc08
    2aec:	480a4909 	stmdami	sl, {r0, r3, r8, fp, lr}
    2af0:	44791c32 	ldrbtmi	r1, [r9], #-3122	; 0xfffff3ce
    2af4:	31284478 			; <UNDEFINED> instruction: 0x31284478
    2af8:	f7ff1c23 			; <UNDEFINED> instruction: 0xf7ff1c23
    2afc:	2380febd 	orrcs	pc, r0, #3024	; 0xbd0
    2b00:	449d00db 	ldrmi	r0, [sp], #219	; 0xdb
    2b04:	46c0bd70 			; <UNDEFINED> instruction: 0x46c0bd70
    2b08:	fffffc00 			; <UNDEFINED> instruction: 0xfffffc00
    2b0c:	00000968 	andeq	r0, r0, r8, ror #18
    2b10:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    2b14:	000007fe 	strdeq	r0, [r0], -lr
    2b18:	0000095a 	andeq	r0, r0, sl, asr r9
    2b1c:	b5f02280 	ldrblt	r2, [r0, #640]!	; 0x280
    2b20:	1c064c33 	stcne	12, cr4, [r6], {51}	; 0x33
    2b24:	ad0244a5 	cfstrsge	mvf4, [r2, #-660]	; 0xfffffd6c
    2b28:	1c281c0f 	stcne	12, cr1, [r8], #-60	; 0xffffffc4
    2b2c:	00d22100 	sbcseq	r2, r2, r0, lsl #2
    2b30:	fccaf7fe 	stc2l	7, cr15, [sl], {254}	; 0xfe
    2b34:	d1072e00 	tstle	r7, r0, lsl #28
    2b38:	482f492e 	stmdami	pc!, {r1, r2, r3, r5, r8, fp, lr}	; <UNPREDICTABLE>
    2b3c:	44784479 	ldrbtmi	r4, [r8], #-1145	; 0xfffffb87
    2b40:	f7ff313c 			; <UNDEFINED> instruction: 0xf7ff313c
    2b44:	e038fe99 	mlas	r8, r9, lr, pc	; <UNPREDICTABLE>
    2b48:	212f1c30 			; <UNDEFINED> instruction: 0x212f1c30
    2b4c:	fc66f7fe 	stc2l	7, cr15, [r6], #-1016	; 0xfffffc08
    2b50:	d00e2800 	andle	r2, lr, r0, lsl #16
    2b54:	28003001 	stmdacs	r0, {r0, ip, sp}
    2b58:	1c31d10c 	ldfned	f5, [r1], #-48	; 0xffffffd0
    2b5c:	1c284a27 			; <UNDEFINED> instruction: 0x1c284a27
    2b60:	fc7cf7fe 	ldc2l	7, cr15, [ip], #-1016	; 0xfffffc08
    2b64:	1c302480 	cfldrsne	mvf2, [r0], #-512	; 0xfffffe00
    2b68:	fce6f7fe 	stc2l	7, cr15, [r6], #1016	; 0x3f8
    2b6c:	1a2400e4 	bne	902f04 <__bss_end__+0x8f1efc>
    2b70:	1c30e011 	ldcne	0, cr14, [r0], #-68	; 0xffffffbc
    2b74:	2b007803 	blcs	20b88 <__bss_end__+0xfb80>
    2b78:	f000d0ef 			; <UNDEFINED> instruction: 0xf000d0ef
    2b7c:	2300f9bd 	movwcs	pc, #2493	; 0x9bd	; <UNPREDICTABLE>
    2b80:	d0ea4298 	smlalle	r4, sl, r8, r2
    2b84:	1e62e030 	mcrne	0, 3, lr, cr2, cr0, {1}
    2b88:	99001c28 	stmdbls	r0, {r3, r5, sl, fp, ip}
    2b8c:	fc84f7fe 	stc2	7, cr15, [r4], {254}	; 0xfe
    2b90:	37049b01 	strcc	r9, [r4, -r1, lsl #22]
    2b94:	683b1ae4 	ldmdavs	fp!, {r2, r5, r6, r7, r9, fp, ip}
    2b98:	2b009300 	blcs	277a0 <__bss_end__+0x16798>
    2b9c:	9800d010 	stmdals	r0, {r4, ip, lr, pc}
    2ba0:	fccaf7fe 	stc2l	7, cr15, [sl], {254}	; 0xfe
    2ba4:	42a09001 	adcmi	r9, r0, #1
    2ba8:	4915d3ed 	ldmdbmi	r5, {r0, r2, r3, r5, r6, r7, r8, r9, ip, lr, pc}
    2bac:	1c324815 	ldcne	8, cr4, [r2], #-84	; 0xffffffac
    2bb0:	44784479 	ldrbtmi	r4, [r8], #-1145	; 0xfffffb87
    2bb4:	f7ff313c 			; <UNDEFINED> instruction: 0xf7ff313c
    2bb8:	2301fe5f 	movwcs	pc, #7775	; 0x1e5f	; <UNPREDICTABLE>
    2bbc:	e013425b 	ands	r4, r3, fp, asr r2
    2bc0:	d9052c02 	stmdble	r5, {r1, sl, fp, sp}
    2bc4:	1e624910 			; <UNDEFINED> instruction: 0x1e624910
    2bc8:	44791c28 	ldrbtmi	r1, [r9], #-3112	; 0xfffff3d8
    2bcc:	fc64f7fe 	stc2l	7, cr15, [r4], #-1016	; 0xfffffc08
    2bd0:	480f490e 	stmdami	pc, {r1, r2, r3, r8, fp, lr}	; <UNPREDICTABLE>
    2bd4:	44791c2a 	ldrbtmi	r1, [r9], #-3114	; 0xfffff3d6
    2bd8:	313c4478 	teqcc	ip, r8, ror r4
    2bdc:	fe4cf7ff 	mcr2	7, 2, pc, cr12, cr15, {7}	; <UNPREDICTABLE>
    2be0:	f7fe1c28 			; <UNDEFINED> instruction: 0xf7fe1c28
    2be4:	2300fbe3 	movwcs	pc, #3043	; 0xbe3	; <UNPREDICTABLE>
    2be8:	4b0a1c18 	blmi	289c50 <__bss_end__+0x278c48>
    2bec:	bdf0449d 	cfldrdlt	mvd4, [r0, #628]!	; 0x274
    2bf0:	fffffbf4 			; <UNDEFINED> instruction: 0xfffffbf4
    2bf4:	000007b4 			; <UNDEFINED> instruction: 0x000007b4
    2bf8:	0000080a 	andeq	r0, r0, sl, lsl #16
    2bfc:	000003ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    2c00:	00000740 	andeq	r0, r0, r0, asr #14
    2c04:	000008ca 	andeq	r0, r0, sl, asr #17
    2c08:	000008e0 	andeq	r0, r0, r0, ror #17
    2c0c:	0000071a 	andeq	r0, r0, sl, lsl r7
    2c10:	000008d5 	ldrdeq	r0, [r0], -r5
    2c14:	0000040c 	andeq	r0, r0, ip, lsl #8

00002c18 <__gnu_Unwind_RaiseException>:
    2c18:	e59fc004 	ldr	ip, [pc, #4]	; 2c24 <__gnu_Unwind_RaiseException+0xc>
    2c1c:	e08cc00f 	add	ip, ip, pc
    2c20:	e12fff1c 	bx	ip
    2c24:	fffff089 			; <UNDEFINED> instruction: 0xfffff089

00002c28 <ZProcess_IsAlive>:
    2c28:	e59fc004 	ldr	ip, [pc, #4]	; 2c34 <ZProcess_IsAlive+0xc>
    2c2c:	e08cc00f 	add	ip, ip, pc
    2c30:	e12fff1c 	bx	ip
    2c34:	fffffca1 			; <UNDEFINED> instruction: 0xfffffca1

00002c38 <__aeabi_unwind_cpp_pr0>:
    2c38:	e59fc004 	ldr	ip, [pc, #4]	; 2c44 <__aeabi_unwind_cpp_pr0+0xc>
    2c3c:	e08cc00f 	add	ip, ip, pc
    2c40:	e12fff1c 	bx	ip
    2c44:	fffff4c5 			; <UNDEFINED> instruction: 0xfffff4c5

00002c48 <_Unwind_GetRegionStart>:
    2c48:	e59fc004 	ldr	ip, [pc, #4]	; 2c54 <_Unwind_GetRegionStart+0xc>
    2c4c:	e08cc00f 	add	ip, ip, pc
    2c50:	e12fff1c 	bx	ip
    2c54:	fffffbe9 			; <UNDEFINED> instruction: 0xfffffbe9

00002c58 <ZProcess_KillApp>:
    2c58:	e59fc004 	ldr	ip, [pc, #4]	; 2c64 <ZProcess_KillApp+0xc>
    2c5c:	e08cc00f 	add	ip, ip, pc
    2c60:	e12fff1c 	bx	ip
    2c64:	fffffe59 			; <UNDEFINED> instruction: 0xfffffe59

00002c68 <_Unwind_GetCFA>:
    2c68:	e59fc004 	ldr	ip, [pc, #4]	; 2c74 <_Unwind_GetCFA+0xc>
    2c6c:	e08cc00f 	add	ip, ip, pc
    2c70:	e12fff1c 	bx	ip
    2c74:	fffff035 			; <UNDEFINED> instruction: 0xfffff035

00002c78 <_Unwind_VRS_Set>:
    2c78:	e59fc004 	ldr	ip, [pc, #4]	; 2c84 <_Unwind_VRS_Set+0xc>
    2c7c:	e08cc00f 	add	ip, ip, pc
    2c80:	e12fff1c 	bx	ip
    2c84:	fffff145 			; <UNDEFINED> instruction: 0xfffff145

00002c88 <JNI_OnLoad>:
    2c88:	e59fc004 	ldr	ip, [pc, #4]	; 2c94 <JNI_OnLoad+0xc>
    2c8c:	e08cc00f 	add	ip, ip, pc
    2c90:	e12fff1c 	bx	ip
    2c94:	ffffed11 			; <UNDEFINED> instruction: 0xffffed11

00002c98 <__gnu_Unwind_Backtrace>:
    2c98:	e59fc004 	ldr	ip, [pc, #4]	; 2ca4 <__gnu_Unwind_Backtrace+0xc>
    2c9c:	e08cc00f 	add	ip, ip, pc
    2ca0:	e12fff1c 	bx	ip
    2ca4:	fffff171 			; <UNDEFINED> instruction: 0xfffff171

00002ca8 <JNU_GetEnv>:
    2ca8:	e59fc004 	ldr	ip, [pc, #4]	; 2cb4 <JNU_GetEnv+0xc>
    2cac:	e08cc00f 	add	ip, ip, pc
    2cb0:	e12fff1c 	bx	ip
    2cb4:	ffffed21 			; <UNDEFINED> instruction: 0xffffed21

00002cb8 <__gnu_thumb1_case_uqi>:
    2cb8:	e59fc004 	ldr	ip, [pc, #4]	; 2cc4 <__gnu_thumb1_case_uqi+0xc>
    2cbc:	e08cc00f 	add	ip, ip, pc
    2cc0:	e12fff1c 	bx	ip
    2cc4:	fffffba1 			; <UNDEFINED> instruction: 0xfffffba1

00002cc8 <_Unwind_VRS_Pop>:
    2cc8:	e59fc004 	ldr	ip, [pc, #4]	; 2cd4 <_Unwind_VRS_Pop+0xc>
    2ccc:	e08cc00f 	add	ip, ip, pc
    2cd0:	e12fff1c 	bx	ip
    2cd4:	fffff453 			; <UNDEFINED> instruction: 0xfffff453

00002cd8 <__aeabi_unwind_cpp_pr2>:
    2cd8:	e59fc004 	ldr	ip, [pc, #4]	; 2ce4 <__aeabi_unwind_cpp_pr2+0xc>
    2cdc:	e08cc00f 	add	ip, ip, pc
    2ce0:	e12fff1c 	bx	ip
    2ce4:	fffff439 			; <UNDEFINED> instruction: 0xfffff439

00002ce8 <CrashRestore_init>:
    2ce8:	e59fc004 	ldr	ip, [pc, #4]	; 2cf4 <CrashRestore_init+0xc>
    2cec:	e08cc00f 	add	ip, ip, pc
    2cf0:	e12fff1c 	bx	ip
    2cf4:	ffffeac9 			; <UNDEFINED> instruction: 0xffffeac9

00002cf8 <_Unwind_DeleteException>:
    2cf8:	e59fc004 	ldr	ip, [pc, #4]	; 2d04 <_Unwind_DeleteException+0xc>
    2cfc:	e08cc00f 	add	ip, ip, pc
    2d00:	e12fff1c 	bx	ip
    2d04:	fffff06b 			; <UNDEFINED> instruction: 0xfffff06b

00002d08 <_Unwind_Complete>:
    2d08:	e59fc004 	ldr	ip, [pc, #4]	; 2d14 <_Unwind_Complete+0xc>
    2d0c:	e08cc00f 	add	ip, ip, pc
    2d10:	e12fff1c 	bx	ip
    2d14:	fffff059 			; <UNDEFINED> instruction: 0xfffff059

00002d18 <ZProcess_KillApp9>:
    2d18:	e59fc004 	ldr	ip, [pc, #4]	; 2d24 <ZProcess_KillApp9+0xc>
    2d1c:	e08cc00f 	add	ip, ip, pc
    2d20:	e12fff1c 	bx	ip
    2d24:	fffffd39 			; <UNDEFINED> instruction: 0xfffffd39

00002d28 <Java_com_stbmc_maincontrol_CrashRestorerJniInterface_CrashRestorerInit>:
    2d28:	e59fc004 	ldr	ip, [pc, #4]	; 2d34 <Java_com_stbmc_maincontrol_CrashRestorerJniInterface_CrashRestorerInit+0xc>
    2d2c:	e08cc00f 	add	ip, ip, pc
    2d30:	e12fff1c 	bx	ip
    2d34:	ffffec65 			; <UNDEFINED> instruction: 0xffffec65

00002d38 <__gnu_unwind_execute>:
    2d38:	e59fc004 	ldr	ip, [pc, #4]	; 2d44 <__gnu_unwind_execute+0xc>
    2d3c:	e08cc00f 	add	ip, ip, pc
    2d40:	e12fff1c 	bx	ip
    2d44:	fffff84f 			; <UNDEFINED> instruction: 0xfffff84f

00002d48 <ZProcess_StartApp>:
    2d48:	e59fc004 	ldr	ip, [pc, #4]	; 2d54 <ZProcess_StartApp+0xc>
    2d4c:	e08cc00f 	add	ip, ip, pc
    2d50:	e12fff1c 	bx	ip
    2d54:	fffffdc9 			; <UNDEFINED> instruction: 0xfffffdc9

00002d58 <__gnu_Unwind_Resume>:
    2d58:	e59fc004 	ldr	ip, [pc, #4]	; 2d64 <__gnu_Unwind_Resume+0xc>
    2d5c:	e08cc00f 	add	ip, ip, pc
    2d60:	e12fff1c 	bx	ip
    2d64:	ffffefab 			; <UNDEFINED> instruction: 0xffffefab

00002d68 <waitBaseComp>:
    2d68:	e59fc004 	ldr	ip, [pc, #4]	; 2d74 <waitBaseComp+0xc>
    2d6c:	e08cc00f 	add	ip, ip, pc
    2d70:	e12fff1c 	bx	ip
    2d74:	ffffe9b9 			; <UNDEFINED> instruction: 0xffffe9b9

00002d78 <__gnu_Unwind_ForcedUnwind>:
    2d78:	e59fc004 	ldr	ip, [pc, #4]	; 2d84 <__gnu_Unwind_ForcedUnwind+0xc>
    2d7c:	e08cc00f 	add	ip, ip, pc
    2d80:	e12fff1c 	bx	ip
    2d84:	ffffef77 			; <UNDEFINED> instruction: 0xffffef77

00002d88 <PORTNG_McKerCom>:
    2d88:	e59fc004 	ldr	ip, [pc, #4]	; 2d94 <PORTNG_McKerCom+0xc>
    2d8c:	e08cc00f 	add	ip, ip, pc
    2d90:	e12fff1c 	bx	ip
    2d94:	ffffe831 			; <UNDEFINED> instruction: 0xffffe831

00002d98 <__gnu_Unwind_Resume_or_Rethrow>:
    2d98:	e59fc004 	ldr	ip, [pc, #4]	; 2da4 <__gnu_Unwind_Resume_or_Rethrow+0xc>
    2d9c:	e08cc00f 	add	ip, ip, pc
    2da0:	e12fff1c 	bx	ip
    2da4:	ffffefaf 			; <UNDEFINED> instruction: 0xffffefaf

00002da8 <_Unwind_GetTextRelBase>:
    2da8:	e59fc004 	ldr	ip, [pc, #4]	; 2db4 <_Unwind_GetTextRelBase+0xc>
    2dac:	e08cc00f 	add	ip, ip, pc
    2db0:	e12fff1c 	bx	ip
    2db4:	fffffaab 			; <UNDEFINED> instruction: 0xfffffaab

00002db8 <_Unwind_GetLanguageSpecificData>:
    2db8:	e59fc004 	ldr	ip, [pc, #4]	; 2dc4 <_Unwind_GetLanguageSpecificData+0xc>
    2dbc:	e08cc00f 	add	ip, ip, pc
    2dc0:	e12fff1c 	bx	ip
    2dc4:	fffffa83 			; <UNDEFINED> instruction: 0xfffffa83

00002dc8 <_Unwind_VRS_Get>:
    2dc8:	e59fc004 	ldr	ip, [pc, #4]	; 2dd4 <_Unwind_VRS_Get+0xc>
    2dcc:	e08cc00f 	add	ip, ip, pc
    2dd0:	e12fff1c 	bx	ip
    2dd4:	ffffefab 			; <UNDEFINED> instruction: 0xffffefab

00002dd8 <__gnu_unwind_frame>:
    2dd8:	e59fc004 	ldr	ip, [pc, #4]	; 2de4 <__gnu_unwind_frame+0xc>
    2ddc:	e08cc00f 	add	ip, ip, pc
    2de0:	e12fff1c 	bx	ip
    2de4:	fffffa33 			; <UNDEFINED> instruction: 0xfffffa33

00002de8 <__aeabi_unwind_cpp_pr1>:
    2de8:	e59fc004 	ldr	ip, [pc, #4]	; 2df4 <__aeabi_unwind_cpp_pr1+0xc>
    2dec:	e08cc00f 	add	ip, ip, pc
    2df0:	e12fff1c 	bx	ip
    2df4:	fffff31f 			; <UNDEFINED> instruction: 0xfffff31f

00002df8 <_Unwind_GetDataRelBase>:
    2df8:	e59fc004 	ldr	ip, [pc, #4]	; 2e04 <_Unwind_GetDataRelBase+0xc>
    2dfc:	e08cc00f 	add	ip, ip, pc
    2e00:	e12fff1c 	bx	ip
    2e04:	fffffa55 			; <UNDEFINED> instruction: 0xfffffa55
    2e08:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e0c:	e59fc000 	ldr	ip, [pc]	; 2e14 <_Unwind_GetDataRelBase+0x1c>
    2e10:	e08cf00f 	add	pc, ip, pc
    2e14:	fffff5a0 			; <UNDEFINED> instruction: 0xfffff5a0
    2e18:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e1c:	e59fc000 	ldr	ip, [pc]	; 2e24 <_Unwind_GetDataRelBase+0x2c>
    2e20:	e08cf00f 	add	pc, ip, pc
    2e24:	fffffe90 			; <UNDEFINED> instruction: 0xfffffe90
    2e28:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e2c:	e59fc000 	ldr	ip, [pc]	; 2e34 <_Unwind_GetDataRelBase+0x3c>
    2e30:	e08cf00f 	add	pc, ip, pc
    2e34:	fffff560 			; <UNDEFINED> instruction: 0xfffff560
    2e38:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e3c:	e59fc000 	ldr	ip, [pc]	; 2e44 <_Unwind_GetDataRelBase+0x4c>
    2e40:	e08cf00f 	add	pc, ip, pc
    2e44:	fffffef0 			; <UNDEFINED> instruction: 0xfffffef0
    2e48:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e4c:	e59fc000 	ldr	ip, [pc]	; 2e54 <_Unwind_GetDataRelBase+0x5c>
    2e50:	e08cf00f 	add	pc, ip, pc
    2e54:	fffffe70 			; <UNDEFINED> instruction: 0xfffffe70
    2e58:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e5c:	e59fc000 	ldr	ip, [pc]	; 2e64 <_Unwind_GetDataRelBase+0x6c>
    2e60:	e08cf00f 	add	pc, ip, pc
    2e64:	fffff594 			; <UNDEFINED> instruction: 0xfffff594
    2e68:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e6c:	e59fc000 	ldr	ip, [pc]	; 2e74 <_Unwind_GetDataRelBase+0x7c>
    2e70:	e08cf00f 	add	pc, ip, pc
    2e74:	fffff4fc 			; <UNDEFINED> instruction: 0xfffff4fc
    2e78:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e7c:	e59fc000 	ldr	ip, [pc]	; 2e84 <_Unwind_GetDataRelBase+0x8c>
    2e80:	e08cf00f 	add	pc, ip, pc
    2e84:	fffffe10 			; <UNDEFINED> instruction: 0xfffffe10
    2e88:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e8c:	e59fc000 	ldr	ip, [pc]	; 2e94 <_Unwind_GetDataRelBase+0x9c>
    2e90:	e08cf00f 	add	pc, ip, pc
    2e94:	fffffde0 			; <UNDEFINED> instruction: 0xfffffde0
    2e98:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2e9c:	e59fc000 	ldr	ip, [pc]	; 2ea4 <_Unwind_GetDataRelBase+0xac>
    2ea0:	e08cf00f 	add	pc, ip, pc
    2ea4:	fffff5ac 			; <UNDEFINED> instruction: 0xfffff5ac
    2ea8:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2eac:	e59fc000 	ldr	ip, [pc]	; 2eb4 <_Unwind_GetDataRelBase+0xbc>
    2eb0:	e08cf00f 	add	pc, ip, pc
    2eb4:	fffffeb0 			; <UNDEFINED> instruction: 0xfffffeb0
    2eb8:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2ebc:	e59fc000 	ldr	ip, [pc]	; 2ec4 <_Unwind_GetDataRelBase+0xcc>
    2ec0:	e08cf00f 	add	pc, ip, pc
    2ec4:	fffff578 			; <UNDEFINED> instruction: 0xfffff578
    2ec8:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2ecc:	e59fc000 	ldr	ip, [pc]	; 2ed4 <_Unwind_GetDataRelBase+0xdc>
    2ed0:	e08cf00f 	add	pc, ip, pc
    2ed4:	fffffec0 			; <UNDEFINED> instruction: 0xfffffec0
    2ed8:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2edc:	e59fc000 	ldr	ip, [pc]	; 2ee4 <_Unwind_GetDataRelBase+0xec>
    2ee0:	e08cf00f 	add	pc, ip, pc
    2ee4:	fffff4a0 			; <UNDEFINED> instruction: 0xfffff4a0
    2ee8:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2eec:	e59fc000 	ldr	ip, [pc]	; 2ef4 <_Unwind_GetDataRelBase+0xfc>
    2ef0:	e08cf00f 	add	pc, ip, pc
    2ef4:	fffff4b8 			; <UNDEFINED> instruction: 0xfffff4b8
    2ef8:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2efc:	e59fc000 	ldr	ip, [pc]	; 2f04 <_Unwind_GetDataRelBase+0x10c>
    2f00:	e08cf00f 	add	pc, ip, pc
    2f04:	fffffd20 			; <UNDEFINED> instruction: 0xfffffd20
    2f08:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2f0c:	e59fc000 	ldr	ip, [pc]	; 2f14 <_Unwind_GetDataRelBase+0x11c>
    2f10:	e08cf00f 	add	pc, ip, pc
    2f14:	fffffe40 			; <UNDEFINED> instruction: 0xfffffe40
    2f18:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2f1c:	e59fc000 	ldr	ip, [pc]	; 2f24 <_Unwind_GetDataRelBase+0x12c>
    2f20:	e08cf00f 	add	pc, ip, pc
    2f24:	fffff468 			; <UNDEFINED> instruction: 0xfffff468
    2f28:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2f2c:	e59fc000 	ldr	ip, [pc]	; 2f34 <_Unwind_GetDataRelBase+0x13c>
    2f30:	e08cf00f 	add	pc, ip, pc
    2f34:	fffffe90 			; <UNDEFINED> instruction: 0xfffffe90
    2f38:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2f3c:	e59fc000 	ldr	ip, [pc]	; 2f44 <_Unwind_GetDataRelBase+0x14c>
    2f40:	e08cf00f 	add	pc, ip, pc
    2f44:	fffffcd0 			; <UNDEFINED> instruction: 0xfffffcd0
    2f48:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2f4c:	e59fc000 	ldr	ip, [pc]	; 2f54 <_Unwind_GetDataRelBase+0x15c>
    2f50:	e08cf00f 	add	pc, ip, pc
    2f54:	fffffe30 			; <UNDEFINED> instruction: 0xfffffe30
    2f58:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2f5c:	e59fc000 	ldr	ip, [pc]	; 2f64 <_Unwind_GetDataRelBase+0x16c>
    2f60:	e08cf00f 	add	pc, ip, pc
    2f64:	fffffd80 			; <UNDEFINED> instruction: 0xfffffd80
    2f68:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2f6c:	e59fc000 	ldr	ip, [pc]	; 2f74 <_Unwind_GetDataRelBase+0x17c>
    2f70:	e08cf00f 	add	pc, ip, pc
    2f74:	fffff430 			; <UNDEFINED> instruction: 0xfffff430
    2f78:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2f7c:	e59fc000 	ldr	ip, [pc]	; 2f84 <_Unwind_GetDataRelBase+0x18c>
    2f80:	e08cf00f 	add	pc, ip, pc
    2f84:	fffffdf0 			; <UNDEFINED> instruction: 0xfffffdf0
    2f88:	46c04778 			; <UNDEFINED> instruction: 0x46c04778
    2f8c:	e59fc000 	ldr	ip, [pc]	; 2f94 <_Unwind_GetDataRelBase+0x19c>
    2f90:	e08cf00f 	add	pc, ip, pc
    2f94:	fffff408 			; <UNDEFINED> instruction: 0xfffff408
