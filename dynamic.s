
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edx,sp
aas	ebx,edx
sub	esp,bp
set	al,dx
set	ebp,al
set	ebx,ecx
aas	eip,ah
res	si,eax
sub	eip,esp
add	al,ebx
res	sp,di
sub	ax,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
