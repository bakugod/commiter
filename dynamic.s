
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bx,bx
aas	al,di
set	edx,ecx
mov	esi,ah
int	dx,esp
res	esp,edi
res	al,cx
sub	sp,esi
or	ecx,ax
int	ecx,si
and	dx,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
