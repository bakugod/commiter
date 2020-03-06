
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ax,ip
set	bp,dx
aas	ah,eip
int	ebp,dx
mov	cx,ecx
set	cx,eax
or	esi,eip
set	ip,sp
sub	ebp,ip
mov	eax,si
and	sp,esi
mov	edx,ebx
and	esi,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
