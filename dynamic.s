
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esi,ebp
or	ecx,bp
sub	al,esp
res	ebp,cx
int	sp,si
int	ip,bx
aas	si,eax
add	esi,sp
sub	ax,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
