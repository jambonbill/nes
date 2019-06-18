;
; File generated by cc65 v 2.15
;
	.fopt		compiler,"cc65 v 2.15"
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
	.import		_set_vram_update
	.export		_palette
	.export		_text
	.export		_two_letters
	.export		_main

.segment	"RODATA"

_palette:
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
_text:
	.byte	$61
	.byte	$CA
	.byte	$0C
	.byte	$48
	.byte	$45
	.byte	$4C
	.byte	$4C
	.byte	$4F
	.byte	$20
	.byte	$57
	.byte	$4F
	.byte	$52
	.byte	$4C
	.byte	$44
	.byte	$21
	.byte	$FF
_two_letters:
	.byte	$22
	.byte	$28
	.byte	$41
	.byte	$20
	.byte	$B2
	.byte	$42
	.byte	$FF

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
; pal_bg(palette); // load the palette
;
	lda     #<(_palette)
	ldx     #>(_palette)
	jsr     _pal_bg
;
; ppu_on_all(); // turn on screen
;
	jsr     _ppu_on_all
;
; set_vram_update(text); // set a pointer to the data to transfer during nmi
;
	lda     #<(_text)
	ldx     #>(_text)
	jsr     _set_vram_update
;
; ppu_wait_nmi(); // waits until the next nmi is completed, also sets a VRAM update flag
;
	jsr     _ppu_wait_nmi
;
; set_vram_update(two_letters); // set a pointer to the data
;
	lda     #<(_two_letters)
	ldx     #>(_two_letters)
	jsr     _set_vram_update
;
; ppu_wait_nmi(); // the two_letters will be auto pushed to the PPU in the next nmi
;
	jsr     _ppu_wait_nmi
;
; set_vram_update(NULL); // just turns off the VRAM update system so that it
;
	ldx     #$00
	txa
	jsr     _set_vram_update
;
; while (1){
;
L0069:	jmp     L0069

.endproc
