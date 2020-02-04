
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bx,si
sub	dx,ebx
int	eax,di
add	sp,ebp
aas	sp,esi
and	esi,ebp
int	bx,edi
or	edx,esp
add	ax,cx
add	esp,eax
add	al,sp
and	bx,ecx
add	eax,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
