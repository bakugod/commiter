
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ah,edi
mov	dx,sp
add	ecx,eip
and	ebp,esp
or	si,ah
or	sp,al
res	dx,dx
or	edx,esi
or	ip,ebx
res	ecx,cx
or	eax,ax
res	si,ax
and	ip,ip
or	al,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
