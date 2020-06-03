
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ax,eip
int	bx,dx
aas	cx,esi
aas	ah,ip
set	cx,edi
or	ah,di
aas	edi,eip
aas	eax,ah
set	ah,di
res	al,eip
int	ecx,bx
add	ax,ip
int	eax,eip
aas	al,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
