
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,ah
mov	di,eax
add	edi,ecx
and	eax,ebx
add	ebp,si
res	ebp,sp
int	ebx,edx
res	eip,sp
res	dx,ecx
and	ebx,ip
add	eip,ip
mov	sp,eip
res	sp,di
mov	edi,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
