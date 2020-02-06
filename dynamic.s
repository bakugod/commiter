
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,esp
or	edx,ebp
int	edi,eip
aas	al,esi
aas	di,edx
res	ecx,esp
int	si,eax
or	bp,bx
sub	sp,sp
aas	di,ip
res	bx,ip
res	esi,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
