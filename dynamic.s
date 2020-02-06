
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ecx,ah
add	sp,eax
sub	cx,esi
sub	dx,edx
sub	ip,esi
add	ecx,bp
or	esi,al
add	dx,ip
int	ax,al
int	ebp,bp
aas	cx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
