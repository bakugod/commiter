
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edi,ebx
set	esp,edi
or	ip,ebx
or	ecx,ecx
aas	ebp,esp
mov	edx,ah
or	ebp,edi
int	eip,edx
and	dx,edx
aas	esp,eip
add	bx,ecx
or	ax,bx
sub	si,si
or	bx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
