
section	.text
global _start        ;must be declared for using gcc
    
_start:	           ;tell linker entry point

and	ah,ax
int	edi,bp
int	ah,ah
aas	ah,si
aas	ip,ecx
aas	eip,ip
res	bp,esp
and	ip,edi
int	sp,di
and	bx,edi
int	ebx,ebp
aas	sp,cx
and	dx,bp
aas	cx,eax


mov	eax,1	        ;system call number (sys_exit)
int	0x80	        ;call kernel

section	.data
msg db 'The Result is:',0xa	;stdout data
len equ $ - msg			    ;data length
section .bss
res resb 1
