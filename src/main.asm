.model small

.data
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                 ;;
;;               DEFINING VARIABLES                ;;
;;                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

NewLine DB 0Dh,0Ah,"$"
                                                                                                                                                                             
Logo1: DB "888888b.                     888        .d8888b.  888                            ",0,13,                                                                   
       DB '888  "88b                    888       d88P  Y88b 888                            ',0,13,                                                                   
       DB "888  .88P                    888       Y88b.      888                            ",0,13,                                                                    
       DB '8888888K.   .d88b.   .d88b.  888  888   "Y888b.   888888 .d88b.  888d888 .d88b.  ',0,13,                                                                   
       DB '888  "Y88b d88""88b d88""88b 888 .88P      "Y88b. 888   d88""88b 888P"  d8P  Y8b ',0,13,    
       DB '888    888 888  888 888  888 888888K         "888 888   888  888 888    88888888 ',0,13,  
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

Total_msg: 
       DB 10,13,
       DB "   +-+-+-+-+",10,13,
       DB "   |B|I|L|L|",10,13,
       DB "   +-+-+-+-+",10,13,10,13,
       DB "   Your Total Bill Is:  $"
                                                                                                                                                                                                                                                                                  
membership_menu:   
       DB 10,13,10,13,
       DB "        Membership                         Price     Discount",0Dh,0Ah,0Dh,0Ah
       DB "   1- Weekly membership        Adult     30 U.S.D       0%",0Dh,0Ah
       DB "   2- Weekly membership        Child     15 U.S.D       0%",0Dh,0Ah
       DB "   3- Monthly membership       Adult     96 U.S.D      20%",0Dh,0Ah
       DB "   4- Monthly membership       Child     48 U.S.D      20%",0Dh,0Ah
       DB "   5- Annuall membership       Adult    860 U.S.D      40%",0Dh,0Ah,
       DB "   6- Annuall membership       Child    430 U.S.D      40%",0Dh,0Ah,0Dh,0Ah
       DB "   Enter the number of the membership you want:  ",'$'
                                                                                                                                                                             
membership_amount: 
       DB 0Dh,0Ah,"   How many membership do you want to buy (00-99)? ",'$'

INFO:  DB 10,13,10,13,
       DB "        BOOK NAME                          Price  ",0Dh,0Ah,0Dh,0Ah
       DB "   In Search of Lost Time               300 U.S.D",0Dh,0Ah,
       DB "   Don Quixote                          700 U.S.D",0Dh,0Ah,
       DB "   The Great Gatsby                     450 U.S.D",0Dh,0Ah,
       DB "   Moby Dick                            300 U.S.D",0Dh,0Ah,
       DB "   To Kill a Mockingbird                320 U.S.D",0Dh,0Ah,
       DB "   Things Fall Apart                    100 U.S.D",0Dh,0Ah,
       DB "   The Color Purple                     250 U.S.D",0Dh,0Ah,
       DB "   Don Quixote                          380 U.S.D",0Dh,0Ah,
       DB "   The Call of the Wild                 690 U.S.D",0Dh,0Ah,
       DB "   A Passage to India                   520 U.S.D",0Dh,0Ah,0Dh,0Ah
       DB "   You Can Purchase Any Of These Books In Our Official Store ",3,3,3,0Dh,0Ah,10,13,'$'

AboutUs:
       DB 10,13,10,13,
       DB "   +-+-+-+-+-+-+-+",10,13,
       DB "   |A|B|O|T| |U|S|",10,13,
       DB "   +-+-+-+-+-+-+-+",10,13,
       DB 0Dh,0Ah,
       DB "   We Are THE AMAZING Book Store",0Dh,0Ah
       DB "   We have textbooks, novels, biographies, and short stories",0Dh,0Ah 
       DB "   The Store opens every day from 10:00AM to 04:00PM.",0Dh,0Ah
       DB "   You Can Contanct Us Via (+2) 012345678910.",0Dh,0Ah,,0Dh,0Ah,'$'
    
Return DB "   Do You Want To Go Back ?(y/n) $"


     
adult    DD 30     ; adult Price 30 U.S.D
child    DD 15     ; child Price 15 U.S.D
adult20  DD 24     ; adult Price with 20% discount 24
child20  DD 12     ; child Price with 20% discount 12
adult40  DD 18     ; adult Price with 40% discount 18
child40  DD 9      ; child Price with 40% discount 9

membership_type  DB 0
membership_num   DD 0
result           DD 0
RES          DB 10 DUP ('$')                                                                                                                                                                           

                     
.code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                 ;;
;;               DEFINING FUNCTIONS                ;;
;;                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

macro Print str   
    mov dx,offset str
    mov ah,9
    int 21h
endm

macro Returning
    
    Print Return
    call GetInput
    cmp al, 'y'
    je  Start
    cmp al, 'Y'
    je  Start
    
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
    
    mov ax,@data
    mov ds,ax

    Print NewLine
    Print Logo1

    Start:
    
        Print NewLine
        Print Logo2
        Print NewLine
        Print menu
    
    get_choice:
      
        call GetInput                   ; read the user choice
    
        cmp al, '1'                     ; first choice
        je  FIRST_CHOICE 
        
        cmp al, '2'                     ; second choice
        je  SECOND_CHOICE
          
        cmp al, '3'                     ; third choice
        je  THIRD_CHOICE
          
        cmp al, '4'                     ;===== Exit the application =====;
        je  ToEnd
          
        ;;;;;  loop back to get_choice until the user choose  ;;;;;
        Print wrong_choice  
        jmp get_choice
          
    
    ;===== Getting a membership =====;
    FIRST_CHOICE:
        
        Print membership_menu           ;display the membership offer message
         
        call GetInput
                           ; read the user choice (What membership?)
        mov membership_type, al
        Print NewLine
       ; sub membership_type, 
       ; Print membership_type 
                ;--------------------------------------------------->2 
          
        Print membership_amount         ;display the membership_amount
        
        ; read first digit
        call GetInput                   ; Get the number of Memberships
               
       ; mov membership_num, al
       ; Print NewLine
      
        
        SUB AL, 30H  ; convert first digit from ascii to number
        MOV AH, 0
        MOV BL, 10
        MUL BL
        MOV BL, AL  
        
        
      ; read second digit 
        call GetInput    
        SUB AL, 30H ; convert second digit from ascii to number
        MOV AH, 0
        ADD AL, BL      
        mov membership_num, al 
      
          
        Print NewLine
      
        cmp membership_type, '1'
        je  ADULT_0
        cmp membership_type, '2'
        je  CHILD_0
        cmp membership_type, '3'
        je  ADULT_20
        cmp membership_type, '4'
        je  CHILD_20
        cmp membership_type, '5'
        je  ADULT_40
        cmp membership_type, '6'
        je  CHILD_40
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
        
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