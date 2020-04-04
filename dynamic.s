
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bx,ax
res	sp,esp
and	edx,si
add	al,si
set	cx,esi
and	si,esi
or	edi,si
res	si,di
int	sp,ah
int	ax,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
