
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	sp,ecx
sub	esi,si
sub	esi,ah
res	ebp,edi
mov	al,al
int	esi,bp
res	ebx,ebx
res	edi,esp
res	eax,si
set	ebp,dx
set	bp,eip
set	cx,bp


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
