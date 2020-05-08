
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,sp
set	bp,esi
and	eip,al
mov	eip,ax
aas	edi,eax
or	ip,edi
and	ebp,ecx
int	esp,ip
int	sp,eax
or	ebp,esi
and	esp,sp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
