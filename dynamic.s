
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	cx,esi
int	bx,edx
and	ebp,ah
or	ecx,si
sub	sp,edx
res	ip,ecx
int	di,bp
and	ip,eip
and	ah,ip
or	bx,cx
or	sp,bx
and	esi,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
