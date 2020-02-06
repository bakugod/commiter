
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esi,ax
mov	al,edi
set	bp,ebx
sub	ecx,ebp
or	esp,ebp
set	ecx,eax
mov	cx,cx
set	edi,ecx
or	esi,ah
res	bx,esi
mov	esi,si
add	si,eip
int	bx,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
