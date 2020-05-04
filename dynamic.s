
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	sp,edi
set	edx,sp
and	edi,bp
aas	ecx,ebx
and	edi,eax
or	esi,dx
mov	ax,si
set	eip,ah
mov	al,edx
res	ip,cx
mov	si,si
res	esi,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
