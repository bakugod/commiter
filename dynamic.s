
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	dx,ax
mov	edx,bp
mov	bx,di
set	bp,ah
aas	sp,edi
mov	sp,ebp
mov	si,esi
res	esi,ah
set	bx,ecx
or	edx,ebp
aas	eax,esp
or	si,sp
set	ah,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
