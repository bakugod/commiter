
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	cx,esp
res	al,al
res	ebp,ebx
res	sp,al
res	ebp,eax
sub	sp,ip
set	esp,di
or	di,di
sub	ebp,esi
sub	ip,ebp
set	ecx,di
res	ecx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
