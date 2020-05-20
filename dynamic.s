
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esi,eip
sub	ip,di
and	eax,ecx
set	esi,eax
and	esp,esp
or	esp,cx
or	cx,ecx
int	ah,cx
sub	eax,eip
and	si,ah
int	bx,esi


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
