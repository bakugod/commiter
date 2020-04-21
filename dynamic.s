
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	sp,sp
mov	di,bp
add	eip,eax
add	ecx,bx
mov	edi,edi
mov	bx,si
res	si,ah
and	eax,sp
mov	esp,ax
add	ebp,ah
int	ah,esp
add	bx,si
add	al,sp
int	ebx,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
