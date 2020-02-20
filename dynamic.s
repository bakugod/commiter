
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,ebx
and	ebx,ebp
and	ebx,ecx
set	di,esi
aas	ip,si
or	si,di
int	dx,ip
sub	ebp,ah
res	eip,di
aas	ax,ebp
aas	cx,ah
add	dx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
