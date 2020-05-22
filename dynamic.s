
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	di,edi
aas	al,edx
and	ip,eip
aas	ax,edx
mov	di,ebx
sub	ip,eax
mov	eip,ecx
aas	esi,ax
aas	cx,sp
sub	bp,ecx
add	sp,ax
mov	si,dx
mov	esp,ip
res	sp,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
