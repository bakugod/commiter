
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esp,si
mov	ebp,ecx
mov	edx,ax
int	al,ip
mov	al,ecx
aas	ecx,dx
sub	bp,si
add	ah,esp
set	bx,bp
add	eax,edi
res	esp,di
or	al,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
