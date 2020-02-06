
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edi,edi
add	ip,al
res	ecx,edx
mov	ah,bx
add	esp,esi
sub	sp,bp
aas	esi,esi
mov	sp,si
aas	ecx,ah
set	ax,sp
aas	ebx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
