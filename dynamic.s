
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	di,ip
sub	si,si
mov	ecx,eax
int	eax,edi
add	ebx,ebx
res	sp,di
mov	dx,cx
and	esp,bp
add	dx,eip
aas	ebp,eax
add	bp,bp
int	edi,ax
add	si,al
or	cx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
