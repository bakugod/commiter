
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ip,ebx
or	ebp,di
sub	dx,esi
sub	si,eip
mov	eip,si
res	ax,esi
int	esp,ebp
or	si,di
and	edi,cx
res	ah,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
