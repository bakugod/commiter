
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	sp,esp
set	esi,si
sub	edi,esp
aas	eip,edi
add	ax,esi
set	di,ip
sub	bx,esp
sub	esp,ah
and	eip,al
mov	ebp,esp
aas	si,eip
res	eax,edi
and	ax,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
