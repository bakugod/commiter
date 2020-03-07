
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	al,ax
or	edx,esi
aas	ah,dx
aas	esp,ip
int	edx,bp
and	di,eip
add	bp,ecx
res	cx,edi
or	eip,eip
and	ah,bx
mov	bx,bp
sub	cx,ecx
or	cx,al
sub	di,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
