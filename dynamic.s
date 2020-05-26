
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	si,ecx
add	edi,sp
or	ebp,bx
sub	sp,edi
sub	cx,esi
and	ebp,esp
add	esi,ecx
add	al,ebx
res	ip,eax
res	bp,sp
mov	edi,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
