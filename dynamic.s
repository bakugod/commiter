
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebp,esp
set	di,al
add	sp,edi
and	ip,edi
add	ecx,eax
mov	ebx,cx
set	al,di
add	edx,al
mov	ax,bp
mov	dx,esi
aas	di,di
set	cx,ecx
add	ebp,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
