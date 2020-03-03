
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	edx,esp
and	si,ecx
and	si,eax
add	eax,edi
and	bx,ebp
and	ip,ebx
or	ax,si
int	bx,ebx
aas	bx,bp
and	ebx,si
int	bp,bx
add	bx,di
aas	sp,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
