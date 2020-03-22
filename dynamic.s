
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,eax
sub	cx,ah
or	ip,esi
mov	ecx,ebp
sub	esp,bp
and	ebp,esi
sub	cx,sp
or	bx,al
or	edi,bx
res	eip,ebp
mov	bx,ax
int	esi,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
