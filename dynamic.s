
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ip,eax
int	eax,esp
add	esi,eax
set	eax,ecx
res	sp,cx
aas	ebp,cx
int	ax,ip
mov	esp,bx
mov	al,al
add	eax,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
