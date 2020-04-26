
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	dx,esp
mov	dx,ebp
set	esp,ah
res	edi,ah
set	ebx,eax
or	ax,ip
int	ip,eax
and	si,ebx
aas	bp,dx
mov	sp,bp
mov	ip,si
sub	al,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
