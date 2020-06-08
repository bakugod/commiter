
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	ax,esp
aas	ip,di
and	ah,esi
mov	cx,ecx
mov	ah,cx
add	eax,edi
and	eip,ebp
or	ebp,eip
sub	ip,edi
res	si,edx
mov	ecx,eax
mov	edi,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
