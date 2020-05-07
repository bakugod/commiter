
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edx,bp
aas	edi,eax
mov	si,ah
set	ip,edi
set	dx,esp
aas	eip,ecx
mov	al,ax
set	ip,ip
aas	edi,ah
or	ebx,bx
int	esi,bx
sub	di,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
