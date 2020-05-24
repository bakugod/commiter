
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebp,esi
set	ebx,bp
sub	sp,ecx
res	edx,ebx
aas	esp,si
or	ah,al
aas	sp,bx
aas	ah,eip
res	ebp,si
add	al,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
