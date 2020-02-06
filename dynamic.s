
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ebx,ax
res	cx,edi
or	di,si
or	ax,ebx
mov	esp,edi
aas	edi,sp
int	si,bp
res	eip,dx
or	sp,ebx
and	ecx,ah
and	bx,eip
set	esp,cx
and	bp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
