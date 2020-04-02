
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

res	di,si
or	bp,ecx
and	edi,ah
aas	di,cx
and	esi,ebp
mov	ebp,ax
aas	ebx,edi
int	esi,ebx
int	ebp,ebp
res	dx,esi
mov	al,ebp
res	edx,di
or	bp,edx
aas	ax,si


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
