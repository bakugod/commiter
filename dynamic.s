
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,eax
int	ax,eip
mov	eax,esi
aas	edi,cx
and	ip,esp
and	dx,esp
res	edi,eip
set	ip,di
add	ecx,ebp
res	bp,ebx
or	eax,esp
or	edi,cx
int	edi,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
