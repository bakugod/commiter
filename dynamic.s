
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	eip,cx
int	bx,eip
set	bx,ip
or	edi,edx
or	al,dx
or	esi,bp
int	bp,cx
set	eax,ebp
sub	al,di
sub	ip,edi
int	bp,ebp
add	esi,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
