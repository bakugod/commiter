
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,edx
or	edx,cx
add	sp,ax
aas	esp,eip
and	cx,di
or	ebx,si
set	edx,dx
sub	al,esp
mov	esi,edi
aas	sp,ip
add	ebx,ecx
set	edi,ecx
mov	eax,esi
or	bp,bx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
