
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eip,si
set	dx,di
res	eip,ah
add	ah,eax
res	ecx,si
res	cx,bp
int	ebp,edx
add	si,esi
add	sp,eax
or	edx,bp
res	edi,ah
set	ah,al
aas	esi,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
