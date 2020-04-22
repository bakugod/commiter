
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	si,cx
int	esp,esi
sub	esi,si
and	ebp,eax
mov	cx,eax
or	cx,sp
add	di,ax
aas	si,si
set	edi,si
or	ip,ecx
set	eip,esi
res	bx,eax
sub	ebx,eip
aas	edx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
