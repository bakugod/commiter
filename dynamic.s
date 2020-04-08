
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ax,ebx
aas	eip,ip
mov	dx,cx
res	al,ecx
res	ip,esp
add	edx,ebp
add	di,bp
add	ebx,ax
int	esi,ip
add	eax,esi
and	esi,ecx
or	si,si
mov	ip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
