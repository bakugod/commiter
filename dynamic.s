
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ecx,eax
res	di,eip
aas	esi,bx
set	bp,sp
aas	bp,esp
and	dx,esi
mov	cx,ecx
mov	sp,esi
sub	al,edi
set	al,ip
mov	al,ax
int	ecx,eip
int	di,esp
res	si,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
