
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	ecx,edi
and	si,ebx
res	al,si
set	esi,ah
int	bx,bp
int	cx,edi
or	ip,ah
sub	esp,al
aas	di,ecx
or	cx,ebx
int	edi,dx
and	sp,ip
or	cx,eip
mov	ip,eip


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
