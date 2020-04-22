
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bp,ecx
int	bp,ip
add	esi,dx
and	dx,dx
and	ebx,bp
or	cx,al
mov	esp,ecx
mov	ax,dx
res	ebp,esi
set	esi,sp
aas	eax,si
mov	sp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
