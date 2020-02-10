
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ax,esi
sub	ip,eip
mov	ecx,edx
mov	esi,ip
and	dx,ebp
res	dx,eip
res	edx,ah
or	eax,esi
or	cx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
