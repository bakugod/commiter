
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	si,dx
aas	ebx,cx
aas	ah,eip
aas	edi,ah
sub	ip,esp
set	al,ecx
int	eax,eip
set	esp,ip
aas	sp,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
qu $ - msg			    ;data length
section .bss
res resb 1
