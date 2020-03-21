
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	edi,bx
res	esp,esi
or	ip,cx
or	esi,esi
or	sp,si
res	esp,ah
int	si,eip
int	eip,si
add	eip,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
