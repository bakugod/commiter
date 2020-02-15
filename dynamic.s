
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

int	eax,ip
add	ebp,di
aas	edx,bp
add	ax,esi
res	ecx,cx
res	si,si
mov	ip,ax
or	ebp,eax
mov	dx,ah
and	di,esp
int	dx,ah
and	ip,cx
int	si,cx


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
