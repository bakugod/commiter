
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebx,eip
aas	esp,ecx
add	ecx,esp
set	edx,si
and	ebp,bp
set	al,ah
add	ebp,ah
add	ah,si
set	sp,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
