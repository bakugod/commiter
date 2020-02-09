
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ax,ip
add	di,esi
aas	ip,eax
sub	edi,ip
int	ecx,dx
mov	esi,ax
res	ebp,ecx
or	ebx,esp
and	ecx,al
or	ecx,eax
mov	cx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
