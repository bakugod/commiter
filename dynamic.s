
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	bp,si
set	ecx,esi
set	ecx,ax
int	si,ebx
and	si,bx
int	sp,sp
mov	eax,ebx
res	ip,sp
and	al,esp
set	ax,eip
and	bp,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
