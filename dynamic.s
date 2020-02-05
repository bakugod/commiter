
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ip,eax
aas	eax,cx
int	sp,ebp
aas	ah,cx
add	ecx,cx
res	ax,ip
set	bx,ah
int	dx,esi
or	bp,ecx
or	ip,ebp
aas	esi,ebx
add	ecx,ecx
add	esi,eax
mov	ax,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
