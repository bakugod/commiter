
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	bp,ecx
set	esi,eip
res	eax,eip
add	eip,ebx
res	eip,ah
aas	sp,bx
mov	al,ebx
mov	al,ebx
sub	sp,esi
set	eip,bx
and	eax,ebp
and	esp,ebx
aas	edi,ip
mov	sp,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
