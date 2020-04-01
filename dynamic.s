
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	esp,esi
and	sp,eip
res	eax,cx
and	esp,cx
or	eip,ah
res	dx,bx
int	eip,cx
or	edx,esi
int	dx,bp
int	ax,si
int	ebx,ebx
res	esp,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
