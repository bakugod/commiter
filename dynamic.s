
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	sp,si
and	sp,ebp
and	bp,ebp
int	ax,bp
int	ecx,edi
aas	cx,bp
sub	esp,ebx
int	eax,eax
or	bx,eax
or	edi,ah
res	sp,esp
sub	si,ebp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
