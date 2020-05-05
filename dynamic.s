
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ebp,edi
mov	si,si
set	esi,esp
or	eax,cx
aas	eax,sp
aas	edx,ah
sub	ecx,cx
or	ip,sp
res	al,ebx
mov	ebp,di
set	eax,ip
or	dx,esi
int	edx,sp
set	edi,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
