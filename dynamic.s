
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	si,bp
or	dx,ah
or	bp,al
sub	esp,ecx
set	si,di
res	dx,ebp
int	dx,ip
res	sp,ip
mov	sp,edx
int	esi,ip
mov	edx,ebx
int	ecx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
