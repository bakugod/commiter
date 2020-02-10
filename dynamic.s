
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ax,eip
res	al,ah
and	sp,cx
int	bp,ebx
set	esp,ip
int	ecx,eax
set	bp,ecx
set	al,ebp
res	esp,edi
set	ebp,eip
and	eax,ebp
aas	ebp,si
res	esi,sp
aas	ecx,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
