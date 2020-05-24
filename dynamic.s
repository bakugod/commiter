
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,eip
aas	cx,ax
res	ebx,dx
and	eax,sp
sub	eax,esi
int	ebx,al
or	al,ax
or	sp,eip
mov	ip,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
