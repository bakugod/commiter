
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esp,bx
set	di,bp
set	eax,bp
or	sp,ebp
mov	si,ecx
or	si,al
res	edx,esp
sub	ebx,si
set	ebx,ebx
aas	sp,edx
sub	bp,edi
set	ebp,ip
sub	di,di
res	edx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
