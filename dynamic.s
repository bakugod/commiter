
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edx,si
set	esp,ip
aas	si,esi
int	dx,ecx
aas	ecx,ebx
aas	dx,edx
int	ecx,sp
set	ebx,cx
or	eax,eax
int	edx,ebp
or	bp,esp
int	eip,edi
set	sp,bp
int	edi,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
