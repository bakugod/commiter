
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

set	ecx,esp
res	esi,al
res	al,ecx
or	eax,si
mov	ax,eip
set	sp,ax
and	sp,di
or	edi,ebp
aas	ax,esi
res	ah,ip
set	si,ebp
add	ecx,di
set	edx,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
