
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	al,cx
int	bx,si
aas	bx,ax
mov	eax,eax
aas	edx,bp
and	ecx,di
add	bx,bx
sub	ebp,esi
or	ip,ebx
res	esp,ebx
and	si,eip
and	eax,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
