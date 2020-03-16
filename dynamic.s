
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edx,al
aas	eax,edi
sub	si,di
and	si,eip
or	ax,ecx
aas	eax,eax
aas	edx,ebp
or	ebx,ah
int	ah,ebp
or	sp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
