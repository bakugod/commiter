
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	sp,ebp
int	dx,al
aas	sp,edx
aas	ah,esi
res	ecx,edi
aas	edx,eip
aas	ip,ecx
aas	eip,di
int	edx,bp
sub	eax,edx
res	ebp,edx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
