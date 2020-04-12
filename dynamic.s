
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esp,edx
aas	eax,di
int	al,eax
sub	si,edi
and	si,ecx
int	edx,cx
mov	cx,si
or	edi,eax
add	eax,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
