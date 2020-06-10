
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	si,ecx
aas	esi,ip
aas	bp,di
int	ah,ax
or	esp,eax
res	edi,ecx
aas	ah,sp
or	cx,ah
or	eip,ecx
res	di,sp
and	ip,dx
and	si,dx
aas	eax,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
