
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

mov	esp,ax
and	sp,eax
set	ip,cx
mov	si,sp
mov	ax,edi
int	di,bp
add	ecx,eax
and	al,ah
mov	cx,edx
aas	esi,edx
set	al,ecx
aas	edi,esp
mov	ecx,esp
aas	sp,ah


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
