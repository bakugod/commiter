
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ip,esi
int	ax,eax
aas	esp,al
sub	dx,ah
int	ax,ah
sub	ecx,esp
set	si,bx
and	bx,si
and	edx,di
and	edi,si
or	sp,ah
int	dx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
