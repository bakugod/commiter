
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,esp
and	ip,bp
sub	eip,eip
or	ax,esp
aas	sp,ax
or	esi,eax
aas	bx,ebp
mov	ip,sp
sub	ip,sp
set	di,edi
aas	edi,si
sub	esp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
