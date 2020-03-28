
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bp,bp
add	esp,ip
res	edx,ecx
and	esi,edi
mov	ip,eax
or	sp,cx
sub	ecx,bp
sub	ax,dx
res	ebx,ebx
mov	si,al
and	ecx,sp
add	cx,di
int	eip,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
