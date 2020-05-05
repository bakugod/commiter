
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ah,eip
int	ip,ebp
sub	ecx,di
add	bx,edx
sub	bp,bx
or	eax,edi
int	edx,ecx
res	edi,ebx
set	esi,dx
res	ip,esi
or	ah,cx
or	eax,edi
aas	sp,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
