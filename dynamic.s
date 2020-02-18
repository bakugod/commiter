
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

sub	esi,ip
sub	ip,ebx
or	esi,ebx
or	ecx,bp
and	ax,edx
add	sp,ebp
res	dx,bp
aas	ah,cx
aas	al,ah
int	ebx,ebx
or	eax,di
set	edi,ax
add	edi,ebx
add	al,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
