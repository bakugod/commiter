
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	esi,bp
and	ebx,ecx
sub	esi,cx
int	sp,ip
and	edx,bp
res	eax,sp
int	bp,edx
set	al,ebp
set	cx,ip
sub	esi,ecx
or	ax,ebp
mov	si,sp
and	al,ebx
set	esp,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
