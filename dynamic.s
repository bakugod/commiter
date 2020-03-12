
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,di
or	ebp,edx
add	ip,dx
set	dx,edx
and	sp,si
or	edx,dx
aas	ebx,eip
add	edi,ip
mov	eax,bp
and	di,al
int	esi,al
or	di,ax
mov	eip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
