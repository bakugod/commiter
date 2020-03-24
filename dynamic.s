
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	bp,di
and	ebx,eip
or	bx,si
aas	cx,ecx
set	eax,eip
aas	sp,edi
aas	esi,ax
res	esi,esi
and	ip,ecx
set	edi,al
int	esi,bx
aas	ebx,ebp
sub	ebx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
