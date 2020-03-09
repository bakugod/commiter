
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	eip,ah
aas	sp,al
or	ecx,eax
sub	ip,edx
sub	ip,ah
int	al,edx
int	bp,ip
res	eax,ebp
mov	si,ebp
int	bx,bx
or	edi,eip
add	si,edi
and	al,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
