
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ecx,esi
set	si,eip
set	ip,al
sub	ecx,ax
int	bx,ecx
set	ah,ah
res	esp,sp
aas	ebp,edx
int	dx,bp
mov	ax,esi
mov	sp,di
and	ax,ebp
int	esp,edi
or	ip,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
