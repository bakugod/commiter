
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,esi
sub	ecx,eax
res	eax,edi
and	al,ecx
aas	sp,edi
add	eax,si
add	ebp,cx
and	al,di
set	ecx,di
set	sp,eax
and	cx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
