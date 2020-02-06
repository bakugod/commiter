
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

aas	ebx,esp
and	ebp,eax
aas	sp,ecx
res	cx,esi
or	cx,cx
sub	edx,eip
or	bp,sp
or	cx,eax
int	edi,ip
sub	al,edx
int	cx,ebp
and	esp,di
res	eip,edi
or	ebx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
