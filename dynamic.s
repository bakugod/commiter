
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	sp,ax
mov	esi,ebp
res	ah,ebx
mov	edx,ip
aas	bp,eax
or	ip,eip
mov	cx,bp
aas	si,sp
res	edx,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
