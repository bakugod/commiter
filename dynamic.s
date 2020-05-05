
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebp,esp
res	al,ecx
res	ebx,sp
and	bp,bx
and	cx,bx
int	ax,ip
res	eax,ebx
sub	esp,edx
int	di,bx
aas	sp,bp
or	ax,si
aas	bp,ecx
add	ebx,sp
and	edi,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
