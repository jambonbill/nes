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
	.import		_oam_meta_spr
	.import		_pad_poll
	.import		_bank_spr
	.import		_memcpy
	.import		_set_vram_buffer
	.import		_clear_vram_buffer
	.import		_set_scroll_x
	.import		_set_scroll_y
	.import		_get_ppu_addr
	.import		_set_data_pointer
	.import		_set_mt_pointer
	.import		_buffer_4_mt
	.import		_flush_vram_update_nmi
	.export		_RoundSprL
	.export		_RoundSprR
	.export		_sprid
	.export		_pad1
	.export		_collision
	.export		_collision_L
	.export		_collision_R
	.export		_collision_U
	.export		_collision_D
	.export		_coordinates
	.export		_temp1
	.export		_temp2
	.export		_temp3
	.export		_temp4
	.export		_temp5
	.export		_temp6
	.export		_eject_L
	.export		_eject_R
	.export		_eject_D
	.export		_eject_U
	.export		_direction
	.export		_address
	.export		_x
	.export		_y
	.export		_nt
	.export		_index
	.export		_room
	.export		_map
	.export		_scroll_x
	.export		_scroll_y
	.export		_scroll_count
	.export		_pseudo_scroll_x
	.export		_L_R_switch
	.export		_old_x
	.export		_old_y
	.export		_c_map
	.export		_c_map2
	.export		_Generic
	.export		_BoxGuy1
	.export		_palette_bg
	.export		_palette_sp
	.export		_metatiles1
	.export		_Room1
	.export		_Room2
	.export		_Room3
	.export		_Room4
	.export		_Room5
	.export		_Rooms
	.export		_load_room
	.export		_draw_sprites
	.export		_movement
	.export		_bg_collision
	.export		_draw_screen_R
	.export		_new_cmap
	.export		_bg_collision_sub
	.export		_main

.segment	"DATA"

_BoxGuy1:
	.word	$4000
	.word	$C400
	.res	4,$00

.segment	"RODATA"

_RoundSprL:
	.byte	$FF
	.byte	$FF
	.byte	$02
	.byte	$00
	.byte	$07
	.byte	$FF
	.byte	$03
	.byte	$00
	.byte	$FF
	.byte	$07
	.byte	$12
	.byte	$00
	.byte	$07
	.byte	$07
	.byte	$13
	.byte	$00
	.byte	$80
_RoundSprR:
	.byte	$FF
	.byte	$FF
	.byte	$00
	.byte	$00
	.byte	$07
	.byte	$FF
	.byte	$01
	.byte	$00
	.byte	$FF
	.byte	$07
	.byte	$10
	.byte	$00
	.byte	$07
	.byte	$07
	.byte	$11
	.byte	$00
	.byte	$80
_palette_bg:
	.byte	$0F
	.byte	$00
	.byte	$10
	.byte	$30
	.byte	$0F
	.byte	$07
	.byte	$17
	.byte	$27
	.byte	$0F
	.byte	$02
	.byte	$12
	.byte	$22
	.byte	$0F
	.byte	$09
	.byte	$19
	.byte	$29
_palette_sp:
	.byte	$0F
	.byte	$07
	.byte	$28
	.byte	$38
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
_metatiles1:
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$03
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$01
	.byte	$09
	.byte	$09
	.byte	$09
	.byte	$09
	.byte	$02
	.byte	$05
	.byte	$06
	.byte	$08
	.byte	$07
	.byte	$01
	.byte	$05
	.byte	$06
	.byte	$08
	.byte	$07
	.byte	$00
_Room1:
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
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
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
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
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
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
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$03
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$03
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
_Room2:
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
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
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
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
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
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
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
_Room3:
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$03
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
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$03
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
	.byte	$00
	.byte	$00
	.byte	$03
	.byte	$03
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
_Room4:
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
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
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
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
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
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
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
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
	.byte	$04
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
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
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
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
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
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
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
	.byte	$00
	.byte	$00
	.byte	$04
	.byte	$04
_Room5:
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
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
	.byte	$02
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
_Rooms:
	.addr	_Room1
	.addr	_Room2
	.addr	_Room3
	.addr	_Room4
	.addr	_Room5

.segment	"BSS"

.segment	"ZEROPAGE"
_sprid:
	.res	1,$00
_pad1:
	.res	1,$00
_collision:
	.res	1,$00
_collision_L:
	.res	1,$00
_collision_R:
	.res	1,$00
_collision_U:
	.res	1,$00
_collision_D:
	.res	1,$00
_coordinates:
	.res	1,$00
_temp1:
	.res	1,$00
_temp2:
	.res	1,$00
_temp3:
	.res	1,$00
_temp4:
	.res	1,$00
_temp5:
	.res	2,$00
_temp6:
	.res	2,$00
_eject_L:
	.res	1,$00
_eject_R:
	.res	1,$00
_eject_D:
	.res	1,$00
_eject_U:
	.res	1,$00
_direction:
	.res	1,$00
_address:
	.res	2,$00
_x:
	.res	1,$00
_y:
	.res	1,$00
_nt:
	.res	1,$00
_index:
	.res	1,$00
_room:
	.res	1,$00
_map:
	.res	1,$00
_scroll_x:
	.res	2,$00
_scroll_y:
	.res	2,$00
_scroll_count:
	.res	1,$00
_pseudo_scroll_x:
	.res	2,$00
_L_R_switch:
	.res	1,$00
_old_x:
	.res	2,$00
_old_y:
	.res	2,$00
.segment	"BSS"
_c_map:
	.res	240,$00
_c_map2:
	.res	240,$00
_Generic:
	.res	4,$00

; ---------------------------------------------------------------
; void __near__ load_room (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_load_room: near

.segment	"CODE"

;
; set_data_pointer(Rooms[0]);
;
	lda     _Rooms
	ldx     _Rooms+1
	jsr     _set_data_pointer
;
; set_mt_pointer(metatiles1);
;
	lda     #<(_metatiles1)
	ldx     #>(_metatiles1)
	jsr     _set_mt_pointer
;
; for(y=0; ;y+=0x20){
;
	lda     #$00
L073C:	sta     _y
;
; for(x=0; ;x+=0x20){
;
	lda     #$00
L073B:	sta     _x
;
; clear_vram_buffer(); // do each frame, and before putting anything in the buffer
;
	jsr     _clear_vram_buffer
;
; address = get_ppu_addr(0, x, y);
;
	jsr     decsp2
	lda     #$00
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     _y
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = (y & 0xf0) + (x >> 4);
;
	lda     _y
	and     #$F0
	sta     ptr1
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     ptr1
	sta     _index
;
; buffer_4_mt(address, index); // ppu_address, index to the data
;
	lda     _address
	ldx     _address+1
	jsr     pushax
	lda     _index
	jsr     _buffer_4_mt
;
; flush_vram_update_nmi();
;
	jsr     _flush_vram_update_nmi
;
; if (x == 0xe0) break;
;
	lda     _x
	cmp     #$E0
	beq     L073E
;
; for(x=0; ;x+=0x20){
;
	lda     #$20
	clc
	adc     _x
	jmp     L073B
;
; if (y == 0xe0) break;
;
L073E:	lda     _y
	cmp     #$E0
	beq     L053E
;
; for(y=0; ;y+=0x20){
;
	lda     #$20
	clc
	adc     _y
	jmp     L073C
;
; set_data_pointer(Rooms[1]);
;
L053E:	lda     _Rooms+2
	ldx     _Rooms+2+1
	jsr     _set_data_pointer
;
; for(y=0; ;y+=0x20){
;
	lda     #$00
L073D:	sta     _y
;
; x = 0;
;
	lda     #$00
	sta     _x
;
; clear_vram_buffer(); // do each frame, and before putting anything in the buffer
;
	jsr     _clear_vram_buffer
;
; address = get_ppu_addr(1, x, y);
;
	jsr     decsp2
	lda     #$01
	tay
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     _y
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = (y & 0xf0);
;
	lda     _y
	and     #$F0
	sta     _index
;
; buffer_4_mt(address, index); // ppu_address, index to the data
;
	lda     _address
	ldx     _address+1
	jsr     pushax
	lda     _index
	jsr     _buffer_4_mt
;
; flush_vram_update_nmi();
;
	jsr     _flush_vram_update_nmi
;
; if (y == 0xe0) break;
;
	lda     _y
	cmp     #$E0
	beq     L0563
;
; for(y=0; ;y+=0x20){
;
	lda     #$20
	clc
	adc     _y
	jmp     L073D
;
; clear_vram_buffer();
;
L0563:	jsr     _clear_vram_buffer
;
; memcpy (c_map, Room1, 240);
;
	ldy     #$00
L0580:	lda     _Room1,y
	sta     _c_map,y
	iny
	cpy     #$F0
	bne     L0580
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ draw_sprites (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_draw_sprites: near

.segment	"CODE"

;
; oam_clear();// clear all sprites from sprite buffer
;
	jsr     _oam_clear
;
; sprid = 0;
;
	lda     #$00
	sta     _sprid
;
; if(direction == LEFT) {
;
	lda     _direction
	bne     L0585
;
; sprid = oam_meta_spr(high_byte(BoxGuy1.x), high_byte(BoxGuy1.y), sprid, RoundSprL);
;
	jsr     decsp3
	lda     _BoxGuy1+1
	ldy     #$02
	sta     (sp),y
	lda     _BoxGuy1+3
	dey
	sta     (sp),y
	lda     _sprid
	dey
	sta     (sp),y
	lda     #<(_RoundSprL)
	ldx     #>(_RoundSprL)
;
; }else{
;
	jmp     L0740
;
; sprid = oam_meta_spr(high_byte(BoxGuy1.x), high_byte(BoxGuy1.y), sprid, RoundSprR);
;
L0585:	jsr     decsp3
	lda     _BoxGuy1+1
	ldy     #$02
	sta     (sp),y
	lda     _BoxGuy1+3
	dey
	sta     (sp),y
	lda     _sprid
	dey
	sta     (sp),y
	lda     #<(_RoundSprR)
	ldx     #>(_RoundSprR)
L0740:	jsr     _oam_meta_spr
	sta     _sprid
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ movement (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_movement: near

.segment	"CODE"

;
; old_x = BoxGuy1.x;
;
	lda     _BoxGuy1+1
	sta     _old_x+1
	lda     _BoxGuy1
	sta     _old_x
;
; if(pad1 & PAD_LEFT){
;
	lda     _pad1
	and     #$02
	beq     L0745
;
; direction = LEFT;
;
	lda     #$00
	sta     _direction
;
; if(BoxGuy1.x <= 0x100) {
;
	lda     _BoxGuy1+1
	cmp     #$01
	bne     L05A1
	lda     _BoxGuy1
	cmp     #$01
L05A1:	bcs     L059F
;
; BoxGuy1.vel_x = 0;
;
	lda     #$00
	sta     _BoxGuy1+4
	sta     _BoxGuy1+4+1
;
; BoxGuy1.x = 0x100;
;
	ldx     #$01
	sta     _BoxGuy1
	stx     _BoxGuy1+1
;
; else if(BoxGuy1.x < 0x400) { // don't want to wrap around to the other side
;
	jmp     L05B5
L059F:	ldx     _BoxGuy1+1
	cpx     #$04
	bcs     L05A7
;
; BoxGuy1.vel_x = -0x100;
;
	ldx     #$FF
	lda     #$00
;
; else {
;
	jmp     L0747
;
; BoxGuy1.vel_x = -SPEED;
;
L05A7:	ldx     #$FE
;
; else if (pad1 & PAD_RIGHT){
;
	jmp     L0752
L0745:	lda     _pad1
	ldx     #$00
	and     #$01
	beq     L0747
;
; direction = RIGHT;
;
	lda     #$01
	sta     _direction
;
; BoxGuy1.vel_x = SPEED;
;
	inx
L0752:	lda     #$80
;
; BoxGuy1.vel_x = 0;
;
L0747:	sta     _BoxGuy1+4
	stx     _BoxGuy1+4+1
;
; BoxGuy1.x += BoxGuy1.vel_x;
;
L05B5:	lda     _BoxGuy1+4
	clc
	adc     _BoxGuy1
	sta     _BoxGuy1
	lda     _BoxGuy1+4+1
	adc     _BoxGuy1+1
	sta     _BoxGuy1+1
;
; if((BoxGuy1.x < 0x100)||(BoxGuy1.x > 0xf800)) { // make sure no wrap around to the other side
;
	ldx     _BoxGuy1+1
	cpx     #$01
	bcc     L0748
	lda     _BoxGuy1
	cmp     #$01
	lda     _BoxGuy1+1
	sbc     #$F8
	bcc     L0749
;
; BoxGuy1.x = 0x100;
;
L0748:	ldx     #$01
	lda     #$00
	sta     _BoxGuy1
	stx     _BoxGuy1+1
;
; L_R_switch = 1; // shinks the y values in bg_coll, less problems with head / feet collisions
;
L0749:	lda     #$01
	sta     _L_R_switch
;
; Generic.x = high_byte(BoxGuy1.x); // this is much faster than passing a pointer to BoxGuy1
;
	lda     _BoxGuy1+1
	sta     _Generic
;
; Generic.y = high_byte(BoxGuy1.y);
;
	lda     _BoxGuy1+3
	sta     _Generic+1
;
; Generic.width = HERO_WIDTH;
;
	lda     #$0D
	sta     _Generic+2
;
; Generic.height = HERO_HEIGHT;
;
	sta     _Generic+3
;
; bg_collision();
;
	jsr     _bg_collision
;
; if(collision_R && collision_L){ // if both true, probably half stuck in a wall
;
	lda     _collision_R
	beq     L05CE
	lda     _collision_L
	beq     L05CE
;
; BoxGuy1.x = old_x;
;
	lda     _old_x+1
	sta     _BoxGuy1+1
	lda     _old_x
	sta     _BoxGuy1
;
; }else if(collision_L) {
;
	jmp     L05DC
L05CE:	lda     _collision_L
	beq     L05D5
;
; high_byte(BoxGuy1.x) = high_byte(BoxGuy1.x) - eject_L;
;
	lda     _BoxGuy1+1
	sec
	sbc     _eject_L
;
; }else if(collision_R) {
;
	jmp     L0753
L05D5:	lda     _collision_R
	beq     L05DC
;
; high_byte(BoxGuy1.x) = high_byte(BoxGuy1.x) - eject_R;
;
	lda     _BoxGuy1+1
	sec
	sbc     _eject_R
L0753:	sta     _BoxGuy1+1
;
; old_y = BoxGuy1.y; // didn't end up using the old value
;
L05DC:	lda     _BoxGuy1+2+1
	sta     _old_y+1
	lda     _BoxGuy1+2
	sta     _old_y
;
; if(pad1 & PAD_UP){
;
	lda     _pad1
	and     #$08
	beq     L074A
;
; if(BoxGuy1.y <= 0x100) {
;
	lda     _BoxGuy1+2+1
	cmp     #$01
	bne     L05E8
	lda     _BoxGuy1+2
	cmp     #$01
L05E8:	bcs     L05E6
;
; BoxGuy1.vel_y = 0;
;
	lda     #$00
	sta     _BoxGuy1+6
	sta     _BoxGuy1+6+1
;
; BoxGuy1.y = 0x100;
;
	ldx     #$01
	sta     _BoxGuy1+2
	stx     _BoxGuy1+2+1
;
; else if(BoxGuy1.y < 0x400) { // don't want to wrap around to the other side
;
	jmp     L0606
L05E6:	ldx     _BoxGuy1+2+1
	cpx     #$04
	bcs     L05EE
;
; BoxGuy1.vel_y = -0x100;
;
	ldx     #$FF
	lda     #$00
;
; else {
;
	jmp     L074C
;
; BoxGuy1.vel_y = -SPEED;
;
L05EE:	ldx     #$FE
;
; else if (pad1 & PAD_DOWN){
;
	jmp     L0754
L074A:	lda     _pad1
	ldx     #$00
	and     #$04
	beq     L074C
;
; if(BoxGuy1.y >= 0xe000) {
;
	lda     _BoxGuy1+2
	cmp     #$00
	lda     _BoxGuy1+2+1
	sbc     #$E0
	bcc     L05F8
;
; BoxGuy1.vel_y = 0;
;
	txa
	sta     _BoxGuy1+6
	sta     _BoxGuy1+6+1
;
; BoxGuy1.y = 0xe000;
;
	ldx     #$E0
	sta     _BoxGuy1+2
	stx     _BoxGuy1+2+1
;
; else if(BoxGuy1.y > 0xdc00) { // don't want to wrap around to the other side
;
	jmp     L0606
L05F8:	lda     _BoxGuy1+2
	cmp     #$01
	lda     _BoxGuy1+2+1
	sbc     #$DC
	bcc     L05FF
;
; BoxGuy1.vel_y = 0x100;
;
	inx
	lda     #$00
;
; else {
;
	jmp     L074C
;
; BoxGuy1.vel_y = SPEED;
;
L05FF:	inx
L0754:	lda     #$80
;
; BoxGuy1.vel_y = 0;
;
L074C:	sta     _BoxGuy1+6
	stx     _BoxGuy1+6+1
;
; BoxGuy1.y += BoxGuy1.vel_y;
;
L0606:	lda     _BoxGuy1+6
	clc
	adc     _BoxGuy1+2
	sta     _BoxGuy1+2
	lda     _BoxGuy1+6+1
	adc     _BoxGuy1+2+1
	sta     _BoxGuy1+2+1
;
; if((BoxGuy1.y < 0x100)||(BoxGuy1.y > 0xf000)) { // make sure no wrap around to the other side
;
	ldx     _BoxGuy1+2+1
	cpx     #$01
	bcc     L074D
	lda     _BoxGuy1+2
	cmp     #$01
	lda     _BoxGuy1+2+1
	sbc     #$F0
	bcs     L074D
	lda     #$00
	jmp     L074F
;
; BoxGuy1.y = 0x100;
;
L074D:	ldx     #$01
	lda     #$00
	sta     _BoxGuy1+2
	stx     _BoxGuy1+2+1
;
; L_R_switch = 0; // shinks the y values in bg_coll, less problems with head / feet collisions
;
L074F:	sta     _L_R_switch
;
; Generic.x = high_byte(BoxGuy1.x); // this is much faster than passing a pointer to BoxGuy1
;
	lda     _BoxGuy1+1
	sta     _Generic
;
; Generic.y = high_byte(BoxGuy1.y);
;
	lda     _BoxGuy1+3
	sta     _Generic+1
;
; bg_collision();
;
	jsr     _bg_collision
;
; if(collision_U && collision_D){ // if both true, probably half stuck in a wall
;
	lda     _collision_U
	beq     L061B
	lda     _collision_D
	beq     L061B
;
; BoxGuy1.y = old_y;
;
	lda     _old_y+1
	sta     _BoxGuy1+2+1
	lda     _old_y
	sta     _BoxGuy1+2
;
; else if(collision_U) {
;
	jmp     L0629
L061B:	lda     _collision_U
	beq     L0622
;
; high_byte(BoxGuy1.y) = high_byte(BoxGuy1.y) - eject_U;
;
	lda     _BoxGuy1+3
	sec
	sbc     _eject_U
;
; else if(collision_D) {
;
	jmp     L0755
L0622:	lda     _collision_D
	beq     L0629
;
; high_byte(BoxGuy1.y) = high_byte(BoxGuy1.y) - eject_D;
;
	lda     _BoxGuy1+3
	sec
	sbc     _eject_D
L0755:	sta     _BoxGuy1+3
;
; if((scroll_x & 0xff) < 4){
;
L0629:	lda     _scroll_x
	cmp     #$04
	bcs     L062F
;
; new_cmap(); //
;
	jsr     _new_cmap
;
; temp5 = BoxGuy1.x;
;
L062F:	lda     _BoxGuy1+1
	sta     _temp5+1
	lda     _BoxGuy1
	sta     _temp5
;
; if (BoxGuy1.x > MAX_RIGHT){
;
	lda     _BoxGuy1
	cmp     #$01
	lda     _BoxGuy1+1
	sbc     #$B0
	bcc     L0636
;
; temp1 = (BoxGuy1.x - MAX_RIGHT) >> 8;
;
	lda     _BoxGuy1+1
	sec
	sbc     #$B0
	sta     _temp1
;
; scroll_x += temp1;
;
	clc
	adc     _scroll_x
	sta     _scroll_x
	lda     #$00
	adc     _scroll_x+1
	sta     _scroll_x+1
;
; high_byte(BoxGuy1.x) = high_byte(BoxGuy1.x) - temp1;
;
	lda     _BoxGuy1+1
	sec
	sbc     _temp1
	sta     _BoxGuy1+1
;
; if(scroll_x >= MAX_SCROLL) {
;
L0636:	lda     _scroll_x
	cmp     #$FF
	lda     _scroll_x+1
	sbc     #$03
	bcc     L064B
;
; scroll_x = MAX_SCROLL; // stop scrolling right, end of level
;
	ldx     #$03
	lda     #$FF
	sta     _scroll_x
	stx     _scroll_x+1
;
; BoxGuy1.x = temp5; // but allow the x position to go all the way right
;
	lda     _temp5+1
	sta     _BoxGuy1+1
	lda     _temp5
	sta     _BoxGuy1
;
; if(high_byte(BoxGuy1.x) >= 0xf1) {
;
	lda     _BoxGuy1+1
	cmp     #$F1
	bcc     L064B
;
; BoxGuy1.x = 0xf100;
;
	ldx     #$F1
	lda     #$00
	sta     _BoxGuy1
	stx     _BoxGuy1+1
;
; }
;
L064B:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ bg_collision (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_bg_collision: near

.segment	"CODE"

;
; collision_L = 0;
;
	lda     #$00
	sta     _collision_L
;
; collision_R = 0;
;
	sta     _collision_R
;
; collision_U = 0;
;
	sta     _collision_U
;
; collision_D = 0;
;
	sta     _collision_D
;
; if(Generic.y >= 0xf0) return;
;
	lda     _Generic+1
	cmp     #$F0
	bcc     L0758
;
; }
;
	rts
;
; temp6 = temp5 = Generic.x + scroll_x; // upper left (temp6 = save for reuse)
;
L0758:	lda     _Generic
	clc
	adc     _scroll_x
	pha
	lda     #$00
	adc     _scroll_x+1
	tax
	pla
	sta     _temp5
	stx     _temp5+1
	sta     _temp6
	stx     _temp6+1
;
; temp1 = temp5 & 0xff; // low byte x
;
	lda     _temp5
	sta     _temp1
;
; temp2 = temp5 >> 8; // high byte x
;
	lda     _temp5+1
	sta     _temp2
;
; eject_L = temp1 | 0xf0;
;
	lda     _temp1
	ora     #$F0
	sta     _eject_L
;
; temp3 = Generic.y; // y top
;
	lda     _Generic+1
	sta     _temp3
;
; eject_U = temp3 | 0xf0;
;
	ora     #$F0
	sta     _eject_U
;
; if(L_R_switch) temp3 += 2; // fix bug, walking through walls
;
	lda     _L_R_switch
	beq     L0668
	lda     #$02
	clc
	adc     _temp3
	sta     _temp3
;
; bg_collision_sub();
;
L0668:	jsr     _bg_collision_sub
;
; if(collision){ // find a corner in the collision map
;
	lda     _collision
	beq     L066D
;
; ++collision_L;
;
	inc     _collision_L
;
; ++collision_U;
;
	inc     _collision_U
;
; temp5 += Generic.width;
;
L066D:	lda     _Generic+2
	clc
	adc     _temp5
	sta     _temp5
	lda     #$00
	adc     _temp5+1
	sta     _temp5+1
;
; temp1 = temp5 & 0xff; // low byte x
;
	lda     _temp5
	sta     _temp1
;
; temp2 = temp5 >> 8; // high byte x
;
	lda     _temp5+1
	sta     _temp2
;
; eject_R = (temp1 + 1) & 0x0f;
;
	lda     _temp1
	clc
	adc     #$01
	and     #$0F
	sta     _eject_R
;
; bg_collision_sub();
;
	jsr     _bg_collision_sub
;
; if(collision){ // find a corner in the collision map
;
	lda     _collision
	beq     L067C
;
; ++collision_R;
;
	inc     _collision_R
;
; ++collision_U;
;
	inc     _collision_U
;
; temp3 = Generic.y + Generic.height; //y bottom
;
L067C:	lda     _Generic+1
	clc
	adc     _Generic+3
	sta     _temp3
;
; if(L_R_switch) temp3 -= 2; // fix bug, walking through walls
;
	lda     _L_R_switch
	beq     L0757
	lda     _temp3
	sec
	sbc     #$02
	sta     _temp3
;
; eject_D = (temp3 + 1) & 0x0f;
;
L0757:	lda     _temp3
	clc
	adc     #$01
	and     #$0F
	sta     _eject_D
;
; if(temp3 >= 0xf0) return;
;
	lda     _temp3
	cmp     #$F0
	bcs     L0696
;
; bg_collision_sub();
;
	jsr     _bg_collision_sub
;
; if (collision) { // find a corner in the collision map
;
	lda     _collision
	beq     L068D
;
; ++collision_R;
;
	inc     _collision_R
;
; ++collision_D;
;
	inc     _collision_D
;
; temp1 = temp6 & 0xff; // low byte x
;
L068D:	lda     _temp6
	sta     _temp1
;
; temp2 = temp6 >> 8; // high byte x
;
	lda     _temp6+1
	sta     _temp2
;
; bg_collision_sub();
;
	jsr     _bg_collision_sub
;
; if(collision){ // find a corner in the collision map
;
	lda     _collision
	beq     L0696
;
; ++collision_L;
;
	inc     _collision_L
;
; ++collision_D;
;
	inc     _collision_D
;
; }
;
L0696:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ draw_screen_R (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_draw_screen_R: near

.segment	"CODE"

;
; pseudo_scroll_x = scroll_x + 0x120;
;
	lda     _scroll_x
	ldx     _scroll_x+1
	clc
	adc     #$20
	bcc     L06AF
	inx
L06AF:	inx
	sta     _pseudo_scroll_x
	stx     _pseudo_scroll_x+1
;
; temp1 = pseudo_scroll_x >> 8;
;
	lda     _pseudo_scroll_x+1
	sta     _temp1
;
; set_data_pointer(Rooms[temp1]);
;
	ldx     #$00
	lda     _temp1
	asl     a
	bcc     L075B
	inx
	clc
L075B:	adc     #<(_Rooms)
	sta     ptr1
	txa
	adc     #>(_Rooms)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     _set_data_pointer
;
; nt = temp1 & 1;
;
	lda     _temp1
	and     #$01
	sta     _nt
;
; x = pseudo_scroll_x & 0xff;
;
	lda     _pseudo_scroll_x
	sta     _x
;
; switch(scroll_count){
;
	lda     _scroll_count
;
; }
;
	beq     L06BD
	cmp     #$01
	beq     L06D6
	cmp     #$02
	jeq     L06F0
	jmp     L0709
;
; address = get_ppu_addr(nt, x, 0);
;
L06BD:	jsr     decsp2
	lda     _nt
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	tya
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = 0 + (x >> 4);
;
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	sta     _index
;
; buffer_4_mt(address, index); // ppu_address, index to the data
;
	lda     _address
	ldx     _address+1
	jsr     pushax
	lda     _index
	jsr     _buffer_4_mt
;
; address = get_ppu_addr(nt, x, 0x20);
;
	jsr     decsp2
	lda     _nt
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     #$20
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = 0x20 + (x >> 4);
;
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #$20
;
; break;
;
	jmp     L0760
;
; address = get_ppu_addr(nt, x, 0x40);
;
L06D6:	jsr     decsp2
	lda     _nt
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     #$40
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = 0x40 + (x >> 4);
;
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #$40
	sta     _index
;
; buffer_4_mt(address, index); // ppu_address, index to the data
;
	lda     _address
	ldx     _address+1
	jsr     pushax
	lda     _index
	jsr     _buffer_4_mt
;
; address = get_ppu_addr(nt, x, 0x60);
;
	jsr     decsp2
	lda     _nt
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     #$60
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = 0x60 + (x >> 4);
;
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #$60
;
; break;
;
	jmp     L0760
;
; address = get_ppu_addr(nt, x, 0x80);
;
L06F0:	jsr     decsp2
	lda     _nt
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     #$80
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = 0x80 + (x >> 4);
;
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #$80
	sta     _index
;
; buffer_4_mt(address, index); // ppu_address, index to the data
;
	lda     _address
	ldx     _address+1
	jsr     pushax
	lda     _index
	jsr     _buffer_4_mt
;
; address = get_ppu_addr(nt, x, 0xa0);
;
	jsr     decsp2
	lda     _nt
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     #$A0
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = 0xa0 + (x >> 4);
;
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #$A0
;
; break;
;
	jmp     L0760
;
; address = get_ppu_addr(nt, x, 0xc0);
;
L0709:	jsr     decsp2
	lda     _nt
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     #$C0
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = 0xc0 + (x >> 4);
;
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #$C0
	sta     _index
;
; buffer_4_mt(address, index); // ppu_address, index to the data
;
	lda     _address
	ldx     _address+1
	jsr     pushax
	lda     _index
	jsr     _buffer_4_mt
;
; address = get_ppu_addr(nt, x, 0xe0);
;
	jsr     decsp2
	lda     _nt
	ldy     #$01
	sta     (sp),y
	lda     _x
	dey
	sta     (sp),y
	lda     #$E0
	jsr     _get_ppu_addr
	sta     _address
	stx     _address+1
;
; index = 0xe0 + (x >> 4);
;
	lda     _x
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #$E0
L0760:	sta     _index
;
; buffer_4_mt(address, index); // ppu_address, index to the data
;
	lda     _address
	ldx     _address+1
	jsr     pushax
	lda     _index
	jsr     _buffer_4_mt
;
; ++scroll_count;
;
	inc     _scroll_count
;
; scroll_count &= 3; // mask off top bits, keep it 0-3
;
	lda     _scroll_count
	and     #$03
	sta     _scroll_count
;
; }
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ new_cmap (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_new_cmap: near

.segment	"CODE"

;
; room = ((scroll_x >> 8) +1); //high byte = room, one to the right
;
	lda     _scroll_x+1
	clc
	adc     #$01
	sta     _room
;
; map = room & 1; //even or odd?
;
	and     #$01
	sta     _map
;
; if(!map){
;
	lda     _map
	bne     L072D
;
; memcpy (c_map, Rooms[room], 240);
;
	lda     #<(_c_map)
	ldx     #>(_c_map)
	jsr     pushax
	ldx     #$00
	lda     _room
	asl     a
	bcc     L0763
	inx
	clc
L0763:	adc     #<(_Rooms)
	sta     ptr1
	txa
	adc     #>(_Rooms)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldx     #$00
	lda     #$F0
	jmp     _memcpy
;
; memcpy (c_map2, Rooms[room], 240);
;
L072D:	lda     #<(_c_map2)
	ldx     #>(_c_map2)
	jsr     pushax
	ldx     #$00
	lda     _room
	asl     a
	bcc     L0764
	inx
	clc
L0764:	adc     #<(_Rooms)
	sta     ptr1
	txa
	adc     #>(_Rooms)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	tax
	dey
	lda     (ptr1),y
	jsr     pushax
	ldx     #$00
	lda     #$F0
	jmp     _memcpy

.endproc

; ---------------------------------------------------------------
; void __near__ bg_collision_sub (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_bg_collision_sub: near

.segment	"CODE"

;
; coordinates = (temp1 >> 4) + (temp3 & 0xf0);
;
	lda     _temp1
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	sta     ptr1
	lda     _temp3
	and     #$F0
	clc
	adc     ptr1
	sta     _coordinates
;
; map = temp2&1; // high byte
;
	lda     _temp2
	and     #$01
	sta     _map
;
; if(!map){
;
	lda     _map
	bne     L06A1
;
; collision = c_map[coordinates];
;
	ldy     _coordinates
	lda     _c_map,y
;
; else{
;
	jmp     L0765
;
; collision = c_map2[coordinates];
;
L06A1:	ldy     _coordinates
	lda     _c_map2,y
L0765:	sta     _collision
;
; }
;
	rts

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
; bank_spr(1);
;
	lda     #$01
	jsr     _bank_spr
;
; set_vram_buffer(); // do at least once, sets a pointer to a buffer
;
	jsr     _set_vram_buffer
;
; clear_vram_buffer();
;
	jsr     _clear_vram_buffer
;
; load_room();
;
	jsr     _load_room
;
; scroll_y = 0xff;
;
	ldx     #$00
	lda     #$FF
	sta     _scroll_y
	stx     _scroll_y+1
;
; set_scroll_y(scroll_y); // shift the bg down 1 pixel
;
	jsr     _set_scroll_y
;
; ppu_on_all(); // turn on screen
;
	jsr     _ppu_on_all
;
; ppu_wait_nmi(); // wait till beginning of the frame
;
L0527:	jsr     _ppu_wait_nmi
;
; pad1 = pad_poll(0); // read the first controller
;
	lda     #$00
	jsr     _pad_poll
	sta     _pad1
;
; clear_vram_buffer(); // do at the beginning of each frame
;
	jsr     _clear_vram_buffer
;
; movement();
;
	jsr     _movement
;
; set_scroll_x(scroll_x);
;
	lda     _scroll_x
	ldx     _scroll_x+1
	jsr     _set_scroll_x
;
; set_scroll_y(scroll_y);
;
	lda     _scroll_y
	ldx     _scroll_y+1
	jsr     _set_scroll_y
;
; draw_screen_R();
;
	jsr     _draw_screen_R
;
; draw_sprites();
;
	jsr     _draw_sprites
;
; while (1){
;
	jmp     L0527

.endproc

