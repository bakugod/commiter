
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	edi,al
mov	sp,eax
sub	si,bp
set	ecx,al
res	edx,ax
sub	al,dx
and	di,al
and	ebx,si
and	esp,sp
aas	si,ecx
or	bp,ax
res	ecx,al
res	sp,esp
set	ax,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
