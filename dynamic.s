
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	edi,edi
and	ah,sp
set	ax,edx
or	al,edi
sub	edi,esp
aas	edx,cx
or	ebx,eip
aas	ecx,di
res	sp,esi
or	edx,di
sub	sp,si
sub	eip,ebp
sub	eax,esp
res	eax,ecx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
