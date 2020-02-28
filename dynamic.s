
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	eax,bp
res	ecx,dx
set	edi,esi
sub	edx,di
set	ah,ecx
int	ip,esi
set	si,esi
aas	ax,ah
sub	al,ecx
sub	esi,di
add	sp,ax
res	edi,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
