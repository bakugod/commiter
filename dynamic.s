
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	si,ebp
add	ecx,di
or	edi,eax
res	dx,ebx
set	edx,cx
aas	esp,di
add	ecx,edx
mov	al,edi
mov	di,eax
sub	edi,al
mov	sp,eax
or	cx,al
add	al,ecx
and	bp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
