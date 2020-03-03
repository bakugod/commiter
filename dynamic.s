
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ip,di
mov	dx,bp
set	sp,esi
and	ax,eip
sub	ip,si
mov	eax,ax
mov	esi,esp
and	di,sp
or	edx,ecx
aas	dx,edi
res	di,di
int	di,esp
set	eax,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
