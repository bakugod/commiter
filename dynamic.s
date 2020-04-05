
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,esp
aas	bx,esi
mov	ebp,esi
aas	edx,ip
and	ip,ecx
or	si,di
int	eax,dx
or	esp,esi
and	sp,cx
set	edx,bp
and	bx,al
mov	al,ah
and	si,ah
or	bp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
