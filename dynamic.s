
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebx,ah
or	ecx,ecx
res	al,ecx
or	bp,dx
set	bp,sp
and	esi,bp
add	bp,eax
mov	esp,ebp
int	ax,edx
set	ebx,ip
set	sp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
