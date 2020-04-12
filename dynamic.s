
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	al,edx
mov	sp,al
sub	cx,cx
or	si,esi
set	bp,ecx
mov	edx,ecx
add	eax,bp
set	ip,ax
sub	cx,di
res	di,esi
sub	di,ebp
aas	esi,eax
aas	ecx,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
