
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,cx
or	esi,ah
res	eax,al
mov	sp,si
and	al,sp
or	cx,eip
and	ecx,esp
res	al,sp
and	eip,eip
aas	bx,ebx
add	bx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
