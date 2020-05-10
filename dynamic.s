
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	di,ebp
mov	eax,si
or	esi,eax
and	esi,ecx
res	ebp,bx
mov	esi,ip
and	esp,edi
mov	di,bp
mov	si,esp
int	dx,esp
int	ecx,sp
int	edx,ip
int	ip,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
