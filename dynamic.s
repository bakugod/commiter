
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,al
sub	ip,sp
or	al,ebx
aas	ah,ip
res	ax,ah
and	si,di
add	ah,ecx
res	eip,cx
mov	esi,ebx
add	cx,si
res	al,si
sub	cx,edx
or	eip,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
