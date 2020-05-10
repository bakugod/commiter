
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

or	ax,di
int	al,di
add	ax,si
or	ecx,esi
set	cx,edx
int	bp,eax
or	ecx,ecx
aas	esp,si
int	eip,esi
mov	edx,ebp
or	ip,di
sub	ah,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
