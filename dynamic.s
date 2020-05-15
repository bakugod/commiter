
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,ah
aas	eip,ecx
sub	eax,ecx
mov	bp,ax
aas	al,ecx
mov	ecx,esi
and	eax,ebx
int	ecx,esp
sub	dx,di
sub	al,eip
set	sp,ebp
sub	cx,cx
add	esi,al
add	ah,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
