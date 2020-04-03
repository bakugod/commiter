
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	al,eip
int	edi,ebx
set	esi,si
aas	ah,di
add	ax,edx
aas	edx,ecx
and	di,ax
set	ebp,ecx
add	esi,eax
int	ecx,edi
add	edx,edi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
