
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ah,cx
add	sp,di
int	esi,esp
sub	esi,cx
or	sp,bp
int	bp,edi
and	edi,esi
int	ecx,bp
int	ebx,edi
add	edi,ecx
int	esi,ip
sub	esp,eip
set	si,esp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
