section mbr vstart=0x7c00

mov ax,0x0600
mov bx,0x0700
mov cx,0
mov dx,0x184f
int 0x10

mov ax,0xb800
mov gs,ax
mov byte [gs:0x00],'h'
mov byte [gs:0x02],'e'
mov byte [gs:0x04],'l'
mov byte [gs:0x06],'l'
mov byte [gs:0x08],'o'
mov byte [gs:0x0a],' '
mov byte [gs:0x0c],'w'
mov byte [gs:0x0e],'o'
mov byte [gs:0x10],'r'
mov byte [gs:0x12],'l'
mov byte [gs:0x14],'d'

jmp $

times 510-($-$$) db 0
db 0x55,0xaa