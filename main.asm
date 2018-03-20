section .text
    
	global _start
    

_start:
    
	mov edx,len ; Move length of msg to EDX reg
    
	mov ecx,msg ; Move msg to ECX reg
    
	mov ebx,1
    
	mov eax,4
    
	int 0x80

    
    
	mov eax,1
    
	int 0x80
    

section .data

msg db 'Hello World!',0xa

len equ $ - msg