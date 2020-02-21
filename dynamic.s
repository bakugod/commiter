
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ebx,edx
add	si,edi
sub	ebp,cx
or	ax,ip
aas	ah,bp
aas	edi,di
and	sp,bp
mov	di,sp
set	esp,eax
add	al,esi
int	ebp,ah
sub	ax,esp
or	eax,si
set	esp,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
