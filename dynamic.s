
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esp,edi
or	sp,ip
or	esp,si
int	cx,dx
aas	edi,ebx
mov	ip,ax
aas	edi,edx
aas	ax,sp
add	ebx,dx
sub	eip,eip
add	bx,ax
int	al,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
