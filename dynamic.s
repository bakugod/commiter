
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,eax
or	ip,ax
or	ah,eax
and	eax,bx
set	ecx,ebp
add	esi,si
int	esi,bp
sub	ip,cx
int	cx,al
add	edi,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
