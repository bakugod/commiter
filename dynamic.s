
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	sp,cx
set	bp,edx
int	al,eip
mov	di,edx
aas	bp,di
int	ebx,cx
or	cx,bp
add	ax,ebx
aas	eip,esi
mov	di,ecx
aas	eax,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
