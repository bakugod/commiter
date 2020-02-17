
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edx,ecx
or	al,ax
set	ax,bp
res	ip,si
aas	eax,sp
and	si,cx
set	ecx,ax
add	ax,di
res	ip,esi
aas	edx,eip
aas	cx,eip
mov	ah,eax
or	ebx,ebx
res	eip,ebx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
