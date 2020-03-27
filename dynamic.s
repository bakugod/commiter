
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	ax,bp
and	esp,ah
and	edx,edi
add	al,si
mov	al,di
int	al,bp
int	esi,ecx
mov	edx,bx
or	ax,ebx
sub	ah,eax
and	cx,edx
aas	di,ecx
int	eax,dx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
