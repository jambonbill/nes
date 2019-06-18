;
; File generated by cc65 v 2.17 - Git 644d623d
;
	.fopt		compiler,"cc65 v 2.17 - Git 644d623d"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_pal_bg
	.import		_pal_spr
	.import		_ppu_wait_nmi
	.import		_ppu_off
	.import		_ppu_on_all
	.import		_oam_clear
	.import		_oam_spr
	.import		_oam_meta_spr
	.import		_pad_poll
	.import		_vram_adr
	.import		_vram_write
	.import		_set_scroll_x
	.import		_set_scroll_y
	.import		_add_scroll_y
	.import		_sub_scroll_y
	.export		_YellowSpr
	.export		_CorpSpr
	.export		_BlueSpr
	.export		_buck
	.export		_duplexor
	.export		_sprid
	.export		_pad1
	.export		_scroll_x
	.export		_scroll_y
	.export		_sprite_x
	.export		_sprite_y
	.export		_temp1
	.export		_palette_bg
	.export		_palette_sp
	.export		_draw_sprites
	.export		_scrolling
	.export		_main

.segment	"DATA"

_sprite_x:
	.byte	$80
_sprite_y:
	.byte	$80

.segment	"RODATA"

_YellowSpr:
	.byte	$00
	.byte	$00
	.byte	$10
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$10
	.byte	$40
	.byte	$00
	.byte	$08
	.byte	$20
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$20
	.byte	$40
	.byte	$80
_CorpSpr:
	.byte	$00
	.byte	$00
	.byte	$70
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$43
	.byte	$00
	.byte	$10
	.byte	$00
	.byte	$43
	.byte	$00
	.byte	$18
	.byte	$00
	.byte	$43
	.byte	$00
	.byte	$20
	.byte	$00
	.byte	$43
	.byte	$00
	.byte	$28
	.byte	$00
	.byte	$6E
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$42
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$10
	.byte	$00
	.byte	$10
	.byte	$08
	.byte	$05
	.byte	$00
	.byte	$18
	.byte	$08
	.byte	$14
	.byte	$00
	.byte	$20
	.byte	$08
	.byte	$2E
	.byte	$00
	.byte	$28
	.byte	$08
	.byte	$42
	.byte	$00
	.byte	$00
	.byte	$10
	.byte	$42
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$03
	.byte	$00
	.byte	$10
	.byte	$10
	.byte	$0F
	.byte	$00
	.byte	$18
	.byte	$10
	.byte	$12
	.byte	$00
	.byte	$20
	.byte	$10
	.byte	$10
	.byte	$00
	.byte	$28
	.byte	$10
	.byte	$42
	.byte	$00
	.byte	$00
	.byte	$18
	.byte	$6D
	.byte	$00
	.byte	$08
	.byte	$18
	.byte	$43
	.byte	$00
	.byte	$10
	.byte	$18
	.byte	$43
	.byte	$00
	.byte	$18
	.byte	$18
	.byte	$43
	.byte	$00
	.byte	$20
	.byte	$18
	.byte	$43
	.byte	$00
	.byte	$28
	.byte	$18
	.byte	$7D
	.byte	$00
	.byte	$80
_BlueSpr:
	.byte	$00
	.byte	$00
	.byte	$10
	.byte	$01
	.byte	$08
	.byte	$00
	.byte	$10
	.byte	$41
	.byte	$00
	.byte	$08
	.byte	$20
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$20
	.byte	$41
	.byte	$80
_buck:
	.byte	$70
	.byte	$40
	.byte	$40
	.byte	$72
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$72
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$72
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$6E
	.byte	$5D
	.byte	$13
	.byte	$14
	.byte	$5D
	.byte	$30
	.byte	$31
	.byte	$3A
	.byte	$35
	.byte	$33
	.byte	$5D
	.byte	$30
	.byte	$30
	.byte	$3A
	.byte	$30
	.byte	$30
	.byte	$5D
	.byte	$07
	.byte	$0F
	.byte	$14
	.byte	$0F
	.byte	$38
	.byte	$30
	.byte	$20
	.byte	$2D
	.byte	$20
	.byte	$02
	.byte	$15
	.byte	$03
	.byte	$0B
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$6B
	.byte	$40
	.byte	$40
	.byte	$5B
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$71
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$5B
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$72
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$73
	.byte	$5D
	.byte	$30
	.byte	$30
	.byte	$5D
	.byte	$38
	.byte	$03
	.byte	$30
	.byte	$37
	.byte	$AD
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$38
	.byte	$03
	.byte	$30
	.byte	$32
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$31
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$32
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$09
	.byte	$30
	.byte	$31
	.byte	$20
	.byte	$03
	.byte	$2D
	.byte	$33
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$33
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$34
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$03
	.byte	$2D
	.byte	$33
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$35
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$36
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$37
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$09
	.byte	$30
	.byte	$31
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$38
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$03
	.byte	$2D
	.byte	$33
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$39
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$01
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$02
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$13
	.byte	$30
	.byte	$31
	.byte	$20
	.byte	$03
	.byte	$2D
	.byte	$33
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$03
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$04
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$05
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$09
	.byte	$30
	.byte	$35
	.byte	$20
	.byte	$03
	.byte	$2D
	.byte	$31
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$30
	.byte	$06
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$30
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$31
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$32
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$09
	.byte	$30
	.byte	$32
	.byte	$20
	.byte	$03
	.byte	$2D
	.byte	$33
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$33
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$34
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$03
	.byte	$2D
	.byte	$33
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$35
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$36
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$37
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$38
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$03
	.byte	$2D
	.byte	$33
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$5D
	.byte	$31
	.byte	$39
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$20
	.byte	$2D
	.byte	$2D
	.byte	$2D
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$90
	.byte	$85
	.byte	$94
	.byte	$2D
	.byte	$83
	.byte	$92
	.byte	$90
	.byte	$5D
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$5D
	.byte	$6D
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$40
	.byte	$7D
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
	.byte	$22
_duplexor:
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$E9
	.byte	$62
	.byte	$62
	.byte	$62
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$A0
	.byte	$A0
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$20
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$20
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$E2
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$E9
	.byte	$62
	.byte	$62
	.byte	$62
	.byte	$F7
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$E9
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$F7
	.byte	$F7
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$F7
	.byte	$F7
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$F7
	.byte	$A0
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$69
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$A0
	.byte	$A0
	.byte	$20
	.byte	$20
	.byte	$20
	.byte	$11
	.byte	$22
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$01
	.byte	$44
	.byte	$11
	.byte	$22
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$01
	.byte	$44
	.byte	$11
	.byte	$22
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$01
	.byte	$44
	.byte	$11
	.byte	$22
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$01
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
	.byte	$44
_palette_bg:
	.byte	$0F
	.byte	$00
	.byte	$10
	.byte	$30
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
_palette_sp:
	.byte	$0F
	.byte	$0F
	.byte	$0F
	.byte	$28
	.byte	$0F
	.byte	$0F
	.byte	$0F
	.byte	$15
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00

.segment	"BSS"

.segment	"ZEROPAGE"
_sprid:
	.res	1,$00
_pad1:
	.res	1,$00
_scroll_x:
	.res	2,$00
_scroll_y:
	.res	2,$00
_temp1:
	.res	1,$00

; ---------------------------------------------------------------
; void __near__ draw_sprites (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_draw_sprites: near

.segment	"CODE"

;
; oam_clear();
;
	jsr     _oam_clear
;
; sprid = 0;
;
	lda     #$00
	sta     _sprid
;
; sprid = oam_meta_spr(sprite_x, sprite_y, sprid, CorpSpr);
;
	jsr     decsp3
	lda     _sprite_x
	ldy     #$02
	sta     (sp),y
	lda     _sprite_y
	dey
	sta     (sp),y
	lda     _sprid
	dey
	sta     (sp),y
	lda     #<(_CorpSpr)
	ldx     #>(_CorpSpr)
	jsr     _oam_meta_spr
	sta     _sprid
;
; sprid =  oam_spr(20,20,0xfe,1,sprid); // 0xfe = X
;
	jsr     decsp4
	lda     #$14
	ldy     #$03
	sta     (sp),y
	dey
	sta     (sp),y
	lda     #$FE
	dey
	sta     (sp),y
	tya
	dey
	sta     (sp),y
	lda     _sprid
	jsr     _oam_spr
	sta     _sprid
;
; temp1 = (scroll_x & 0xff) >> 4;
;
	lda     _scroll_x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	sta     _temp1
;
; sprid =  oam_spr(28,20,temp1,1,sprid);
;
	jsr     decsp4
	lda     #$1C
	ldy     #$03
	sta     (sp),y
	lda     #$14
	dey
	sta     (sp),y
	lda     _temp1
	dey
	sta     (sp),y
	tya
	dey
	sta     (sp),y
	lda     _sprid
	jsr     _oam_spr
	sta     _sprid
;
; temp1 = (scroll_x & 0x0f);
;
	lda     _scroll_x
	and     #$0F
	sta     _temp1
;
; sprid =  oam_spr(36,20,temp1,1,sprid);
;
	jsr     decsp4
	lda     #$24
	ldy     #$03
	sta     (sp),y
	lda     #$14
	dey
	sta     (sp),y
	lda     _temp1
	dey
	sta     (sp),y
	tya
	dey
	sta     (sp),y
	lda     _sprid
	jsr     _oam_spr
	sta     _sprid
;
; sprid =  oam_spr(50,20,0xff,1,sprid); // 0xff = Y
;
	jsr     decsp4
	lda     #$32
	ldy     #$03
	sta     (sp),y
	lda     #$14
	dey
	sta     (sp),y
	lda     #$FF
	dey
	sta     (sp),y
	tya
	dey
	sta     (sp),y
	lda     _sprid
	jsr     _oam_spr
	sta     _sprid
;
; temp1 = (scroll_y & 0xff) >> 4;
;
	lda     _scroll_y
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	sta     _temp1
;
; sprid =  oam_spr(58,20,temp1,1,sprid);
;
	jsr     decsp4
	lda     #$3A
	ldy     #$03
	sta     (sp),y
	lda     #$14
	dey
	sta     (sp),y
	lda     _temp1
	dey
	sta     (sp),y
	tya
	dey
	sta     (sp),y
	lda     _sprid
	jsr     _oam_spr
	sta     _sprid
;
; temp1 = (scroll_y & 0x0f);
;
	lda     _scroll_y
	and     #$0F
	sta     _temp1
;
; sprid =  oam_spr(66,20,temp1,1,sprid);
;
	jsr     decsp4
	lda     #$42
	ldy     #$03
	sta     (sp),y
	lda     #$14
	dey
	sta     (sp),y
	lda     _temp1
	dey
	sta     (sp),y
	tya
	dey
	sta     (sp),y
	lda     _sprid
	jsr     _oam_spr
	sta     _sprid
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ scrolling (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_scrolling: near

.segment	"CODE"

;
; if(pad1 & PAD_LEFT){
;
	lda     _pad1
	and     #$02
	beq     L0923
;
; scroll_x -= 4;
;
	lda     _scroll_x
	sec
	sbc     #$04
	sta     _scroll_x
	bcs     L0924
	dec     _scroll_x+1
;
; else if (pad1 & PAD_RIGHT){
;
	jmp     L0924
L0923:	lda     _pad1
	and     #$01
	beq     L0924
;
; scroll_x += 4;
;
	lda     #$04
	clc
	adc     _scroll_x
	sta     _scroll_x
	bcc     L0924
	inc     _scroll_x+1
;
; if(pad1 & PAD_UP){
;
L0924:	lda     _pad1
	and     #$08
	beq     L0925
;
; scroll_y = sub_scroll_y(4, scroll_y);
;
	lda     #$04
	jsr     pusha
	lda     _scroll_y
	ldx     _scroll_y+1
	jsr     _sub_scroll_y
;
; else if (pad1 & PAD_DOWN){
;
	jmp     L0926
L0925:	lda     _pad1
	and     #$04
	beq     L0918
;
; scroll_y = add_scroll_y(4, scroll_y);
;
	lda     #$04
	jsr     pusha
	lda     _scroll_y
	ldx     _scroll_y+1
	jsr     _add_scroll_y
L0926:	sta     _scroll_y
	stx     _scroll_y+1
;
; set_scroll_x(scroll_x);
;
L0918:	lda     _scroll_x
	ldx     _scroll_x+1
	jsr     _set_scroll_x
;
; set_scroll_y(scroll_y);
;
	lda     _scroll_y
	ldx     _scroll_y+1
	jmp     _set_scroll_y

.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; ppu_off(); // screen off
;
	jsr     _ppu_off
;
; pal_bg(palette_bg);
;
	lda     #<(_palette_bg)
	ldx     #>(_palette_bg)
	jsr     _pal_bg
;
; pal_spr(palette_sp);
;
	lda     #<(_palette_sp)
	ldx     #>(_palette_sp)
	jsr     _pal_spr
;
; vram_adr(NAMETABLE_A);// this sets a start position on the BG, top left of screen A
;
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; vram_write(duplexor,1024);
;
	lda     #<(_duplexor)
	ldx     #>(_duplexor)
	jsr     pushax
	ldx     #$04
	lda     #$00
	jsr     _vram_write
;
; vram_adr(NAMETABLE_C);// this sets a start position on the BG, top left of screen C
;
	ldx     #$28
	lda     #$00
	jsr     _vram_adr
;
; vram_write(buck,1024);
;
	lda     #<(_buck)
	ldx     #>(_buck)
	jsr     pushax
	ldx     #$04
	lda     #$00
	jsr     _vram_write
;
; ppu_on_all(); // turn on screen
;
	jsr     _ppu_on_all
;
; ppu_wait_nmi(); // wait till beginning of the frame
;
L08BB:	jsr     _ppu_wait_nmi
;
; pad1 = pad_poll(0); // read the first controller
;
	lda     #$00
	jsr     _pad_poll
	sta     _pad1
;
; scrolling();
;
	jsr     _scrolling
;
; draw_sprites();
;
	jsr     _draw_sprites
;
; while (1){
;
	jmp     L08BB

.endproc

