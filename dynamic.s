
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ecx,eax
or	esp,ecx
or	ax,eax
add	dx,ebx
res	bp,bx
or	si,esi
or	sp,esp
add	cx,eip
aas	esi,bp
int	esp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
