
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ip,di
int	sp,al
int	dx,bp
set	ax,edi
sub	ax,bx
and	dx,ebp
aas	edi,bp
res	bp,ecx
sub	esp,ax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
