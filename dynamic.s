
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,ebp
and	esi,si
int	ebx,eax
mov	bx,sp
or	eax,sp
and	eip,esi
sub	ah,ecx
and	esp,esp
sub	ax,eip
or	ebp,edx
aas	ebp,ebx
or	ax,edx
set	bx,eax
set	si,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
