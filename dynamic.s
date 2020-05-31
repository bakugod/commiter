
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	sp,bp
aas	ah,ip
mov	eax,al
int	ecx,esp
add	ah,ax
add	esi,al
add	ip,dx
int	eip,eip
or	ax,di
or	edi,ip
res	ebx,ecx
or	ax,ebx
res	ebp,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
