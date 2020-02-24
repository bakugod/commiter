
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esi,si
res	sp,bp
int	edx,cx
or	ecx,dx
aas	ax,ip
and	ebp,cx
set	bx,ecx
or	al,esp
add	edi,ebp
aas	cx,eax
set	dx,edi
and	esp,ebp
int	al,ax
aas	bp,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
