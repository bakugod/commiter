
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,sp
or	ip,ip
add	esp,ebp
mov	ah,eax
add	ax,ip
int	cx,ah
mov	cx,ecx
aas	ebp,esi
int	cx,di
or	ip,al
aas	eip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
