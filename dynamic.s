
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	esi,ecx
or	sp,eip
res	al,esi
sub	ax,sp
or	bp,ebx
int	ip,di
res	ax,cx
mov	cx,bx
res	ax,eip
mov	ecx,edi
add	ah,dx
int	bx,di
int	ip,di


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
