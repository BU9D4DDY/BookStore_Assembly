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
;;;;;;;;;;;;;;;;;;  MAIN Function  ;;;;;;;;;;;;;;;;;;

main proc
    
    mov ax,@data
    mov ds,ax

    Print NewLine
    Print Logo1
    Print Logo2
    
main endp
jmp ToEnd

ToEnd:
    Print GoodBye
    .exit
    end main

