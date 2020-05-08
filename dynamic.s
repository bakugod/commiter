
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	eip,cx
int	si,cx
sub	bx,si
int	esi,edx
aas	ip,eip
or	dx,eip
int	si,al
res	ax,esi
or	ecx,bx
sub	eip,dx
sub	sp,di
or	sp,ip
and	cx,eax
res	edi,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
