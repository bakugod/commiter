
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bp,si
int	ebp,sp
set	ip,al
or	ax,eip
mov	bp,edx
and	ecx,al
and	si,eax
aas	cx,ebp
or	edi,ip
int	sp,si
aas	bp,esi
and	esi,cx
res	si,bx
res	dx,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
