
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esi,eax
set	al,esp
sub	cx,al
int	edx,edi
add	si,ip
and	si,ebp
set	bx,esi
add	esp,ax
mov	bp,di
mov	bp,si
aas	sp,bx
add	ecx,ecx
sub	eax,ip
set	ebp,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
