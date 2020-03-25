
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	si,edi
and	ecx,esp
aas	sp,bx
mov	ecx,ah
mov	si,esp
mov	eax,bx
aas	al,esp
int	ecx,ax
aas	ip,esi
add	ax,bp
aas	cx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
