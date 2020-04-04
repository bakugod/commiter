
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	sp,edx
set	ax,esi
sub	eip,si
or	ecx,ax
sub	al,ip
int	di,ah
add	ah,ah
int	dx,esi
or	ecx,ip
aas	di,ah
sub	edx,cx
aas	dx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
