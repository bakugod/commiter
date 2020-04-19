
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ebx,eip
and	ip,eax
int	esi,edi
add	si,cx
mov	cx,ecx
add	di,cx
mov	bp,eax
and	eip,ah
mov	sp,edx
sub	ax,sp
or	ax,di
aas	edi,ebp
mov	edx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
