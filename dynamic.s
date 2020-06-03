
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	al,ebp
add	ecx,eax
set	ah,si
set	ecx,ecx
or	esi,edi
mov	ip,al
sub	ah,ax
and	esp,ah
aas	ebx,ecx
set	ax,eip
or	sp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
