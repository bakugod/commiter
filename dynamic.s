
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esp,edx
and	ebp,dx
add	esi,esp
int	ah,ip
aas	esi,bx
int	eax,ip
int	esi,di
int	eax,edx
and	eax,esp
aas	sp,eip
sub	cx,sp
add	esp,si
sub	ah,ecx
or	edx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
