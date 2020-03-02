
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,sp
int	cx,ip
aas	di,eip
res	dx,esp
res	dx,cx
sub	sp,bx
sub	esi,dx
or	edx,edi
aas	sp,ip
or	eip,dx
res	bp,ah
res	al,ecx
int	di,sp
sub	ip,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
