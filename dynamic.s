
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,eax
int	eip,ah
add	eax,edi
or	ecx,ebp
aas	ecx,eip
add	eip,ax
add	dx,ebx
mov	ecx,bp
or	ah,eip
and	ax,al
mov	ax,ip
int	ip,ebx
or	al,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
