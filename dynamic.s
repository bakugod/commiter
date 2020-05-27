
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,ax
sub	ax,dx
and	ebp,eip
and	ebx,ebp
sub	ebx,ah
mov	cx,edx
mov	bp,si
or	esi,eax
res	bp,si
sub	ip,ah
add	si,ebp
or	eip,eax
sub	ecx,ecx
int	eax,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
