
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	bx,edi
or	edx,ecx
add	ax,esp
res	al,ecx
or	ah,bx
sub	esi,di
or	eip,sp
sub	esp,ecx
res	eip,eax
or	ip,bx
sub	ah,ip
and	edx,al
int	ecx,al
and	sp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
