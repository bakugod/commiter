
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,ecx
or	edi,bx
mov	sp,di
mov	ax,cx
add	di,ebx
res	ecx,edx
aas	ah,ebp
add	ah,eip
res	bp,eip
aas	ax,si
aas	bx,edi
or	edx,cx
mov	eip,ebx
and	eax,al


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
