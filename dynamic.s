
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ax,ip
or	ah,si
res	eax,di
set	cx,eip
mov	al,ax
sub	edi,bp
aas	sp,eax
add	ax,edx
add	al,edx
sub	ecx,esp
and	bp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
