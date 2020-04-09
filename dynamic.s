
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esp,al
int	eip,ecx
set	ax,eip
set	al,bp
aas	ah,eip
res	esi,ip
set	ax,esi
or	bp,ebx
or	cx,al
int	al,dx
and	al,bx
sub	eax,ah
aas	ebx,ebx
sub	edx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
