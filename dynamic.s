
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,si
and	dx,sp
int	ip,al
or	eax,eax
or	ecx,ah
add	ip,ax
or	edx,eax
res	al,ah
sub	eip,bp
int	edi,si
add	esp,ax
mov	dx,eip
add	di,ecx
int	cx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
