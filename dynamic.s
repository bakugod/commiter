
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,esp
res	ebp,ebx
add	esp,ecx
aas	edi,ebp
and	ecx,esi
res	cx,edi
mov	eip,eip
add	edi,bx
or	esp,eax
add	ebp,ah
int	ah,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
