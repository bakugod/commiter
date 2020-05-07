
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,ebp
or	ip,dx
or	ax,edi
mov	ah,ebx
or	sp,si
mov	esp,sp
sub	edi,eax
mov	eax,edi
set	ip,ebp
and	esp,ip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
