.model small

.data
                                                 

;dmsg0 db '                                                                                     $'
dmsg1 db "    ____              __      _____ __",10,13,"$"                 
dmsg2 db "   / __ )____  ____  / /__   / ___// /_____  ________",10,13,"$" 
dmsg3 db "  / __  / __ \/ __ \/ //_/   \__ \/ __/ __ \/ ___/ _ \",10,13,"$"
dmsg4 db " / /_/ / /_/ / /_/ / ,<     ___/ / /_/ /_/ / /  /  __/",10,13,"$"
dmsg5 db "/_____/\____/\____/_/|_|   /____/\__/\____/_/   \___/",10,13,"$" 
;dmsg6 db '                                                   $'  
;dmsg7 db '888   d88P Y88..88P Y88..88P 888 "88b      Y88b  d88P Y88b. Y88..88P 888    Y8b.$'  
;dmsg8 db '8888888P"   "Y88P"   "Y88P"  888  888       "Y8888P"   "Y888 "Y88P"  888     "Y8888$'  
;dmsg9 db '                                                                                     $'  



.code

macro printString str   
  mov ah,9
  lea dx,str
  int 21h
endm


main proc
    
    mov ax,@data
    mov ds,ax
    
    ;PRINT dmsg0
    printString dmsg1
    printString dmsg2
    printString dmsg3
    printString dmsg4
    printString dmsg5
    ;printString dmsg6
    ;printString dmsg7
    ;PRINT dmsg8
    ;PRINT dmsg9
    
    
    
endp
jmp ToEnd



ToEnd:
.exit
end main