
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ecx,si
or	esp,edi
and	ebp,bx
mov	cx,cx
or	ebp,si
sub	ebp,ecx
or	al,sp
sub	edx,ebx
mov	esp,bx
aas	ebx,eax
and	sp,edi
int	esp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
