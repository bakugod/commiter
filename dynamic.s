
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edx,esp
and	ah,edi
res	eip,ebp
mov	edi,ax
res	sp,ah
int	ip,ebx
set	sp,di
add	edx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
