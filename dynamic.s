
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	bp,eip
or	al,dx
set	dx,ip
res	eax,si
mov	si,si
res	di,ah
add	di,eax
int	sp,ip
mov	edx,ecx
or	eip,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
