
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ax,edi
int	esp,esp
set	esi,bp
and	ip,ebx
sub	ip,bp
mov	ax,di
or	ah,cx
mov	cx,cx
or	esi,ebp
int	esi,di
res	ip,dx
int	ax,bp
mov	edi,eip
or	ah,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
