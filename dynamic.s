
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

add	sp,eip
aas	esi,si
add	ah,ip
and	esp,eax
mov	eip,al
res	bx,ah
int	sp,bp
mov	bp,ah
or	edi,al
aas	bp,di
mov	esp,cx
res	ax,cx
sub	bx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
