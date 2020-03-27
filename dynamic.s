
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ecx,al
or	ax,eax
res	ax,ebp
aas	sp,ecx
mov	eip,di
int	al,eax
aas	bp,sp
mov	ebp,ebx
set	ebp,bp
aas	bx,di
mov	edx,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
