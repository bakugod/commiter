
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edx,esp
set	ecx,al
or	ah,di
set	ax,si
set	ecx,ah
mov	esi,cx
int	bp,sp
mov	cx,eip
res	edx,edx
or	al,edi
add	sp,eip
and	esi,ebp
add	ax,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
