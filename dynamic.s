
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	bp,edi
and	eip,eip
res	ax,ecx
sub	esi,si
and	dx,si
add	edx,ebp
aas	ecx,ip
aas	ax,ip
or	si,bp
int	esi,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
