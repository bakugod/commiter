
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	di,si
set	al,si
add	ip,eax
and	edi,esi
set	sp,edx
sub	ebp,ebp
aas	ecx,di
set	cx,di
set	esp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
