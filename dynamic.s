
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	cx,edi
or	sp,eax
mov	edx,bx
and	ah,dx
int	edi,eip
int	eax,ax
sub	esi,si
and	ah,esi
or	eax,ecx
or	eax,bp
and	eax,bp
aas	si,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
