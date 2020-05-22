
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	al,edi
res	ebp,cx
or	esi,ecx
or	esp,ecx
add	ah,esp
and	eax,esi
sub	esi,ip
aas	ax,eax
int	ax,esp
sub	eax,bp
or	ax,bx
res	esp,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
