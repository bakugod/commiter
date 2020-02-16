
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	edx,ecx
res	eip,edi
mov	sp,bp
aas	bp,ebp
res	eip,si
or	ip,dx
add	ip,ip
aas	edi,sp
res	edi,dx
aas	bp,edi
set	edi,edx
res	dx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
