
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	edx,eax
sub	edx,cx
or	ip,ebp
add	eax,eip
add	eax,edi
sub	ecx,eax
sub	si,si
int	ebp,bp
sub	sp,edi
add	si,esp
and	ebx,cx
aas	ax,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
