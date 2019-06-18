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
	.import		_ppu_wait_nmi
	.import		_ppu_off
	.import		_ppu_on_all
	.import		_rand8
	.import		_vram_adr
	.import		_vram_fill
	.import		_vram_unrle
	.import		_delay
	.import		_clear_vram_buffer
	.import		_get_at_addr
	.export		_blocks
	.export		_palette
	.export		_text
	.export		_address
	.export		_main

.segment	"DATA"

_palette:
	.byte	$0F
	.byte	$00
	.byte	$10
	.byte	$30
	.byte	$00
	.byte	$01
	.byte	$21
	.byte	$31
	.byte	$00
	.byte	$06
	.byte	$26
	.byte	$36
	.byte	$00
	.byte	$09
	.byte	$29
	.byte	$39

.segment	"RODATA"

_blocks:
	.byte	$01
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$10
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$11
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$30
	.byte	$31
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$10
	.byte	$11
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$20
	.byte	$21
	.byte	$00
	.byte	$01
	.byte	$3E
	.byte	$00
	.byte	$01
	.byte	$00
_text:
	.byte	$50,$72,$65,$73,$73,$20,$53,$74,$61,$72,$74,$00

.segment	"BSS"

.segment	"ZEROPAGE"
_address:
	.res	2,$00

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
; pal_bg(palette); // load the bg palette
;
	lda     #<(_palette)
	ldx     #>(_palette)
	jsr     _pal_bg
;
; vram_adr(NAMETABLE_A);
;
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; vram_unrle(blocks);
;
	lda     #<(_blocks)
	ldx     #>(_blocks)
	jsr     _vram_unrle
;
; address = get_at_addr(0,0,0);
;
	jsr     decsp2
	lda     #$00
	ldy     #$01
	sta     (sp),y
	dey
	sta     (sp),y
	jsr     _get_at_addr
	sta     _address
	stx     _address+1
;
; vram_adr(address); // nametable A's attribute table 23c0-23ff
;
	jsr     _vram_adr
;
; vram_fill(0x00, 8); // 8 bytes of 00 00 00 00
;
	lda     #$00
	jsr     pusha
	tax
	lda     #$08
	jsr     _vram_fill
;
; vram_fill(0x54, 8); // 8 bytes of 01 01 01 01
;
	lda     #$54
	jsr     pusha
	ldx     #$00
	lda     #$08
	jsr     _vram_fill
;
; vram_fill(0xAA, 8); // 8 bytes of 10 10 10 10
;
	lda     #$AA
	jsr     pusha
	ldx     #$00
	lda     #$08
	jsr     _vram_fill
;
; vram_fill(0xFF, 8); // 8 bytes of 11 11 11 11
;
	lda     #$FF
	jsr     pusha
	ldx     #$00
	lda     #$08
	jsr     _vram_fill
;
; vram_fill(rand8(), 8); // 8 bytes of ?? ?? ?? ??
;
	jsr     _rand8
	jsr     pusha
	ldx     #$00
	lda     #$08
	jsr     _vram_fill
;
; ppu_on_all(); // turn on screen
;
	jsr     _ppu_on_all
;
; ppu_wait_nmi(); // wait till beginning of the frame
;
L03FB:	jsr     _ppu_wait_nmi
;
; delay(60); // wait 100 frames
;
	lda     #$3C
	jsr     _delay
;
; clear_vram_buffer(); // clear the buffer at the start of each frame
;
	jsr     _clear_vram_buffer
;
; address = 0x23c0;
;
	ldx     #$23
	lda     #$C0
	sta     _address
	stx     _address+1
;
; vram_adr(address); // nametable A's attribute table 23c0-23ff
;
	jsr     _vram_adr
;
; vram_fill(rand8(), 64); // 8 bytes of color randomness
;
	jsr     _rand8
	jsr     pusha
	ldx     #$00
	lda     #$40
	jsr     _vram_fill
;
; while (1){
;
	jmp     L03FB

.endproc
