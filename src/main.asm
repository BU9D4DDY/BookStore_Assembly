.model small

.data
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                 ;;
;;               DEFINING VARIABLES                ;;
;;                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

NewLine DB 13,10,"$"
                                                                                                                                                                             
Logo1: DB "888888b.                     888        .d8888b.  888                            ",13,                                                                   
       DB '888  "88b                    888       d88P  Y88b 888                            ',13,                                                                   
       DB "888  .88P                    888       Y88b.      888                            ",13,                                                                    
       DB '8888888K.   .d88b.   .d88b.  888  888   "Y888b.   888888 .d88b.  888d888 .d88b.  ',13,                                                                   
       DB '888  "Y88b d88""88b d88""88b 888 .88P      "Y88b. 888   d88""88b 888P"  d8P  Y8b ',13,    
       DB '888    888 888  888 888  888 888888K         "888 888   888  888 888    88888888 ',13,  
       DB '888   d88P Y88..88P Y88..88P 888 "88b  Y88b  d88P Y88b. Y88..88P 888    Y8b. ',10,13,
       DB '8888888P"   "Y88P"   "Y88P"  888  888   "Y8888P"   "Y888 "Y88P"  888     "Y8888 ',10,13,"$"
                                                                                                                                                                             
                                                                                                                                                                             
Logo2: DB "                              +-+-+-+-+-+-+-+",10,13,
       DB "                              |W|E|L|C|O|M|E|",10,13,
       DB "                              +-+-+-+-+-+-+-+",10,13,
       DB "                                   ",3,3,3,3,3,10,13,"$"
       
GoodBye: 
       DB 10,13,
       DB "                              +-+-+-+-+-+-+-+",10,13,
       DB "                              |G|O|O|D|B|Y|E|",10,13,
       DB "                              +-+-+-+-+-+-+-+",10,13,
       DB "                                   ",3,3,3,3,3,10,13,"$"                                                                                                                                                                             

menu:  DB "   1- Get a membership",0Dh,0Ah
       DB "   2- Check Prices and Special offers",0Dh,0Ah 
       DB "   3- About Us",0Dh,0Ah
       DB "   4- Exit the application",0Dh,0Ah,
       DB 10,13,"   Please Enter A Choice Between ( 1 - 4 ) ..... ",'$'
 
wrong_choice DB 10,13,"   Please Enter A Choice Between ( 1 - 4 ) ..... ",'$'

wrong_choice2 DB 10,13,"   Wrong Choice Please Enter A Choice Between ( 1 - 6 ) ..... ",'$'

Total_msg: 
       DB 10,13,
       DB "   +-+-+-+-+",10,13,
       DB "   |B|I|L|L|",10,13,
       DB "   +-+-+-+-+",10,13,10,13,
       DB "   Your Total Bill Is:  $"
                                                                                                                                                                                                                                                                                  
membership_menu:   
       DB 10,13,10,13,
       DB "        Membership                         Price",0Dh,0Ah,0Dh,0Ah
       DB "   1- Weekly membership        Adult     20 U.S.D",0Dh,0Ah
       DB "   2- Weekly membership        Child     10 U.S.D",0Dh,0Ah
       DB "   3- Monthly membership       Adult     35 U.S.D",0Dh,0Ah
       DB "   4- Monthly membership       Child     20 U.S.D",0Dh,0Ah
       DB "   5- Annual membership        Adult     99 U.S.D",0Dh,0Ah,
       DB "   6- Annual membership        Child     80 U.S.D",0Dh,0Ah,0Dh,0Ah
       DB "   Enter the Type of the membership you want:  ",'$'
                                                                                                                                                                             
membership_amount: 
       DB 0Dh,0Ah,"   How many membership do you want to buy (00-99)? ",'$'

INFO:  DB 10,13,10,13,
       
       DB "       BOOK NAME                          Price  ",0Dh,0Ah,0Dh,0Ah
       DB "   Things Fall Apart                   100 U.S.D",0Dh,0Ah,       
       DB "   Moby Dick                           250 U.S.D",0Dh,0Ah,
       DB "   A Passage to India                  300 U.S.D",0Dh,0Ah,
       DB "   To Kill a Mockingbird               300 U.S.D",0Dh,0Ah,
       DB "   In Search of Lost Time              320 U.S.D",0Dh,0Ah,
       DB "   The Color Purple                    380 U.S.D",0Dh,0Ah,
       DB "   War and Peace                       450 U.S.D",0Dh,0Ah,
       DB "   The Great Gatsby                    520 U.S.D",0Dh,0Ah,
       DB "   The Call of the Wild                690 U.S.D",0Dh,0Ah,
       DB "   Don Quixote                         700 U.S.D",0Dh,0Ah,0Dh,0Ah
       DB "   You Can Purchase Any Of These Books In Our Official Store ",3,3,3,0Dh,0Ah,10,13,'$'

AboutUs:
       DB 10,13,10,13,
       DB "   +-+-+-+-+-+-+-+",10,13,
       DB "   |A|B|O|T| |U|S|",10,13,
       DB "   +-+-+-+-+-+-+-+",10,13,
       DB 0Dh,0Ah,
       DB "   We Are THE AMAZING Book Store",0Dh,0Ah
       DB "   We have Textbooks, Novels, Biographies, and Short Stories",0Dh,0Ah 
       DB "   The Store opens every day from 10:00AM to 04:00PM.",0Dh,0Ah
       DB "   You Can Contanct Us Via (+2) 012345678910.",0Dh,0Ah,,0Dh,0Ah,'$'
         
Return DB "   Do You Want To Go Back ?(y/n) $"



adult    DB 20      ; WEEKLY Adult Price 20 U.S.D  
child    DB 10      ; WEEKLY hild Price 10 U.S.D
adultM   DB 35      ; Monthly Adult subscription
childM   DB 20      ; Monthly Child subscription
adultY   DB 99      ; Annual Adult subscription
childY   DB 80      ; Annual Child subscription


membership_type  DB 0
membership_num   DB 0
result           DD 0
RES              DB 5 DUP ('$')    ;Declare all as end of string for recognition in printing
                                                                                                                                                                          

                     
.code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                 ;;
;;               DEFINING FUNCTIONS                ;;
;;                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

macro Print str   
    mov dx,offset str            ;any data in DX will be printed using the following instructions
    mov ah,9                     ;instruction to print a string         (9h) for string , (2h) for character, 
    int 21h                      ;interupt and don't run any other instruction till the previous finish
endm


macro Returning
    
    Print Return
    call GetInput                ;the input will be saved in "al"
    
    push ax    
                                 ;print new line for 15 times for a clean formatting
    call NEWLINE_LOOP
       
    pop ax
    
    cmp al, 'y'
    je  Start                    ;if the input that is saved in "al" is equal to "y" or "Y"
    cmp al, 'Y'                  ;The Program will go to the start and begin again
    je  Start                    ;(je) jump if equal ----- (jmp)  jump
    
    ;==else==;     
    jmp ToEnd
    
endm

macro count value 

    mov al, value
    mov bl, membership_num
    mul bl
    mov result , ax
    jmp PRINT_RESULT
    
        
endm    

;;;;;;;;;;;;;;;;;;  MAIN Function  ;;;;;;;;;;;;;;;;;;

main proc
    
    mov ax,@data                        ;pointing the data segment to the beggining of the data initialized above
    mov ds,ax                           ;>> can be reblaced by (.STARTUP)

    Print NewLine
    Print Logo1                         ;Printing The BOOK STORE Logo

    Start:
    
        Print NewLine
        Print Logo2                     ;Printing The WELCOME Logo
        Print NewLine
        Print menu
    
    ;===== Getting The Menu Choise =====;
    get_choice:
      
        call GetInput                   ; read the user choice  <saved as ascii code>
    
        cmp al, '1'                     ; first choice
        je  FIRST_CHOICE 
        
        cmp al, '2'                     ; second choice > Viewing info about the books
        je  SECOND_CHOICE
          
        cmp al, '3'                     ; third choice  > Viewing AboutUS
        je  THIRD_CHOICE
          
        cmp al, '4'                     ; Exit the application
        je  ToEnd
          
        ;;;;;  loop back to get_choice until the user choice is correct  ;;;;;
        Print wrong_choice  
        jmp get_choice
          
    
    ;===== Getting a membership =====;
    FIRST_CHOICE:
        
        Print membership_menu           ;display the membership prices message
    
    GET_INPUT_AGAIN:
         
        call GetInput                   ; read the user choice (What membership?)   
        
        ;== check input if in range (1-6) ==;
        cmp al, '0'
        je check1failed        
        
        cmp al, '6'
        jle CONTINUED
        
    check1failed:
        
        Print NewLine                   
        Print wrong_choice2  
        jmp GET_INPUT_AGAIN       ;  loop back to get_choice until the user choice is correct  ;
        
    CONTINUED:
        
        mov membership_type, al
        Print NewLine
        
        Print membership_amount         ;display the membership_amount
        
        ;===== First digit =====;
        call GetInput                   ; Get the number of Memberships      
        
        SUB AL, 30H                     ; converting first digit from ascii to number
        MOV AH, 0
        MOV BL, 10
        MUL BL
        MOV BL, AL  
        
        ;===== Second digit =====;
        call GetInput    
        
        SUB AL, 30H                     ; convert second digit from ascii to number
        MOV AH, 0
        ADD AL, BL      
        mov membership_num, al 
      
        Print NewLine
        
        ;===== Comparing Which Membership Triggered =====;
        cmp membership_type, '1'
        je  ADULT_0
        cmp membership_type, '2'
        je  CHILD_0
        cmp membership_type, '3'
        je  ADULT_M
        cmp membership_type, '4'
        je  CHILD_M
        cmp membership_type, '5'
        je  ADULT_Y
        cmp membership_type, '6'
        je  CHILD_Y
 
     
        ADULT_0:
            Count adult
            
        CHILD_0:
            Count child
            
        ADULT_20:
            Count adult20
            
        CHILD_20:
            Count child20
            
        ADULT_40:
            Count adult40
            
        CHILD_40:
            Count child40
                
                
        PRINT_RESULT:
            Print Total_msg      
            mov ax, result
            mov result, 0
            ; convert decimal to hex to print result
            LEA SI, RES
            MOV CX,0
            MOV BX,10
          LOOP1: 
            MOV DX,0
            DIV BX
            ADD DL,30H
            PUSH DX
            INC CX
            CMP AX,9
            JG LOOP1
            ADD AL,30H
            MOV [SI],AL
          LOOP2: 
            POP AX
            INC SI
            MOV [SI],AL
            LOOP LOOP2
         
            LEA DX,RES
            MOV AH,9
            INT 21H
            ;printing new line
            Print NewLine
            Print NewLine
            Returning
                
    
    ;===== Checking Prices And Offers =====; 
    SECOND_CHOICE:
        Print INFO
        Returning
      
    
    ;===== Viewing The About =====;
    THIRD_CHOICE:
        Print AboutUs
        Returning
        
                
    main endp
jmp ToEnd


;;;;;;;;;  Reading User Input  ;;;;;;;;;;;;

GetInput proc
    mov ah, 1                                         
    int 21h

    ret
    GetInput endp

;;;;;;;;;  Ending The Program  ;;;;;;;;;;;;

ToEnd:
    Print GoodBye
    .exit
    end main
            