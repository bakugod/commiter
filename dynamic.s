
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	edx,di
aas	al,al
or	bx,ebp
res	cx,bp
int	eip,eax
or	eax,esp
set	sp,bx
aas	ah,ip
aas	edx,ecx
mov	ecx,ebp
mov	di,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
