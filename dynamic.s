
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	bx,edx
set	ah,di
and	edi,ecx
mov	si,esi
aas	sp,bp
aas	ebp,ebx
aas	ebp,cx
or	eax,esp
or	edi,di
int	al,ah
set	edx,ecx
sub	si,ebp
sub	al,edi
add	ebp,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
