
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	esp,di
add	eip,bp
or	ecx,si
int	edi,ax
add	al,sp
or	si,dx
aas	ax,edi
add	ip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
