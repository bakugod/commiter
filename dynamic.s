
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ip,eax
or	bx,di
mov	eip,eax
add	ecx,esi
or	ip,ax
and	eip,esi
or	ebp,ebx
int	si,eip
set	si,edx
or	bx,di
set	ecx,al
or	ebp,eip
or	ecx,edx
int	esi,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
