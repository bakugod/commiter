
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	eip,di
or	bp,bx
int	dx,sp
aas	bx,ecx
sub	bx,edi
aas	sp,esi
and	edx,si
res	ax,cx
sub	eip,si
sub	ip,ip
set	ecx,sp
set	sp,ebx
res	ax,edx
aas	bp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
