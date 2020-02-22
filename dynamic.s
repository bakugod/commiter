
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	eax,si
set	ebp,al
or	ebp,al
add	ecx,ip
res	di,ecx
mov	cx,eax
int	ecx,edx
and	ax,di
aas	di,ebp
set	ax,esi
int	ecx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
