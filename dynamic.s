
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	sp,dx
sub	bp,ip
res	ip,esi
or	edi,esi
mov	ah,ebx
res	esp,dx
res	ax,ebx
set	eax,esi
set	ebp,ah
aas	ebp,bp
mov	ebp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
