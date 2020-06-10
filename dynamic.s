
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	cx,ebp
mov	ip,eip
and	eip,edi
or	esi,bp
and	ebp,di
or	esi,edx
mov	eax,edi
sub	ah,esi
sub	dx,ecx
int	ah,di
res	edx,ah
and	ebx,ebp
aas	ip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
