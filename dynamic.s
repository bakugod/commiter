
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	eip,esi
set	bx,eax
sub	dx,dx
res	cx,eip
int	edx,ah
aas	esp,bp
res	sp,edi
int	ip,sp
or	dx,ebp
or	ah,eip
aas	ax,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
