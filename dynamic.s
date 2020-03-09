
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebx,dx
int	esp,ah
res	esi,dx
and	sp,ebp
set	ecx,ecx
res	ebx,edi
add	esp,ebp
res	eax,dx
or	ip,ip
int	si,ip
aas	dx,eip
res	al,edi
set	dx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
