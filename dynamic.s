
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ecx,edx
or	di,bp
int	cx,ah
add	ah,ax
or	edx,bp
mov	bp,eip
aas	sp,edx
and	eip,eax
and	ecx,ecx
sub	ip,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
