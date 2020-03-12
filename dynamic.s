
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	edx,ip
set	esi,eip
set	ecx,ebp
or	al,edi
set	sp,ax
sub	di,esp
aas	dx,ah
res	eax,ip
mov	si,ip
aas	ebx,ip
set	esp,di
int	eip,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
