
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	ebx,ip
aas	ebp,si
int	bp,edx
mov	di,sp
sub	sp,esi
sub	cx,si
aas	al,ebp
add	bp,ax
add	ah,al
sub	ah,esi
mov	di,ah
add	ip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
