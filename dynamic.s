
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ip,esi
add	ebx,al
sub	di,esp
and	al,ecx
aas	edi,ax
or	ebx,bx
set	si,si
and	sp,al
sub	edx,ax
or	di,di
res	si,ebx
add	bx,eax
and	ebp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
