
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	sp,bx
aas	di,cx
mov	ax,eax
int	di,di
int	cx,ecx
and	cx,dx
and	esp,al
aas	esp,esp
set	esi,ebx
sub	ah,ebp
aas	esp,bp
aas	ah,ebx
sub	ax,edx
int	di,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
