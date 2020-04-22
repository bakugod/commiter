
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eax,ip
add	edx,ebx
set	sp,cx
set	bp,dx
or	edi,esp
aas	di,ip
mov	eip,cx
set	ah,ebp
int	edx,ecx
set	ah,di
mov	ecx,ah
or	ip,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
