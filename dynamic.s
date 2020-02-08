
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ah,cx
int	ip,esi
sub	ip,esp
and	ebx,ebx
int	eip,esp
res	bp,ah
int	si,eax
or	ecx,ecx
res	esi,ax
and	di,ah
aas	cx,bp
sub	eip,cx
res	ip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
