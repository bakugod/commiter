
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	ebp,edx
sub	bx,esp
sub	cx,ax
and	cx,ecx
aas	si,ecx
add	ax,ip
mov	bx,eax
int	esp,ah
and	sp,edi
and	si,si
sub	eax,esi
or	al,al
aas	eax,sp
res	edx,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
