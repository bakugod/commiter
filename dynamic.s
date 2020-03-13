
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	edi,eip
res	si,ecx
set	ah,si
sub	ah,ecx
add	ah,bp
res	bp,ebp
set	esp,eip
res	sp,esi
or	eip,ebx
or	ip,esp
add	esp,di
sub	di,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
