
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	si,cx
int	si,al
mov	esp,si
or	eip,sp
and	esi,bp
or	ip,al
add	sp,cx
aas	al,edi
set	ip,bp
or	di,di
or	ah,esi
int	ecx,ah
aas	ecx,di
aas	dx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
