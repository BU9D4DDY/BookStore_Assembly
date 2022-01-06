## Book Store Project

This an semester Project created concerning the college course "MICROPROCESSORS". A Simple yet Complex assembly project made using **emu8086**

This project was created using the instruction set  of  `x86` and modified based on **functional programming** and **error detection** to produce a more efficient code.

> Project Description

This a simulator for a Book Store program that has the following features:

- Purchase a subscription with many types (  Weekly - Monthly - Annually ).

- Purchase More than one subscription ( 00 - 99 ).

- Printing Out A formatted bill with the total price

- View the available books to be purchased in the offline store.

- Display information about the store and the categories of books in it.

- Option to exit the program directly.

    

### Syntax

The program has some **logos** for a better UI experience, these logos are:

- logo1 ( BOOK STORE )

```assembly
"888888b.                     888        .d8888b.  888                            ",13,
'888  "88b                    888       d88P  Y88b 888                            ',13,                 
"888  .88P                    888       Y88b.      888                            ",13,                 
'8888888K.   .d88b.   .d88b.  888  888   "Y888b.   888888 .d88b.  888d888 .d88b.  ',13,                 
'888  "Y88b d88""88b d88""88b 888 .88P      "Y88b. 888   d88""88b 888P"  d8P  Y8b ',13,    
'888    888 888  888 888  888 888888K         "888 888   888  888 888    88888888 ',13,  
'888   d88P Y88..88P Y88..88P 888 "88b  Y88b  d88P Y88b. Y88..88P 888    Y8b. ',10,13,
'8888888P"   "Y88P"   "Y88P"  888  888   "Y8888P"   "Y888 "Y88P"  888     "Y8888 ',10,13,"$"
```

- logo2 ( WELCOME )

```assembly
"                              +-+-+-+-+-+-+-+                                ",10,13,
"                              |W|E|L|C|O|M|E|                                ",10,13,
"                              +-+-+-+-+-+-+-+                                ",10,13,"$"
```

- logo3 ( WELCOME BACK )

```assembly
"                 +-+-+-+-+-+-+-+ +-+-+-+-+ +-+-+-+-+-+                    ",10,13,
"                 |W|E|L|C|O|M|E| |B|A|C|K| |A|G|A|I|N|                    ",10,13,
"                 +-+-+-+-+-+-+-+ +-+-+-+-+ +-+-+-+-+-+                    ",10,13,
"                                                                          ",3,3,3,3,3,3,3,3,3,10,13,"$"
```

- logo4 ( GOODBYE )

```assembly
"                              +-+-+-+-+-+-+-+                                ",10,13,
"                              |G|O|O|D|B|Y|E|                                ",10,13,
"                              +-+-+-+-+-+-+-+                                ",10,13,"$"  
```

Also As Mentioned This Program is Based on Functional Programming as we reduced the code by making some **MACROS** and **PROCEDURES**, and those are:

- Print Function That takes a Parameter (str) Pointing to the variable holding the data to be printed.

```assembly
macro Print str

    mov dx,offset str            
    mov ah,9                     
    int 21h
    
endm
```

- Returning function That is produced after finishing each action that the user take  *Like Purchasing A Subscription*.

![1](/_resources/1.png)

```assembly
macro Returning
    
    Print Return                 ;Return is A variable holding a message to be displayed
    call GetInput                ;the input will be saved in "al"
    
    push ax    
    call NEWLINE_LOOP            ;A Procedure to print new line for 15 times for some clean formatting
    pop ax
    
    cmp al, 'y'
    je  Start                    ;if the input that is saved in "al" is equal to "y" or "Y"
    cmp al, 'Y'                  ;The Program will go to the start and begin again
    je  Start                    
    
    ;==else==;     
    jmp ToEnd
    
endm
```

* Count Macro that is used to calculate the total price of number of subscriptions

```assembly
macro count value 

    mov al, value
    mov bl, membership_num
    mul bl
    mov result , ax
    jmp PRINT_RESULT
            
endm
```

* GetInput Procedure that is called whenever the program is performing an input request.

```assembly
GetInput proc
    mov ah, 1       ;take one char as input and save it in "al"                                        
    int 21h

    ret
    GetInput endp
```



... The Program Flow Works As  Follows, At Startup The Main Menu Will Be Displayed For The Customer Like That

![2](/_resources/2.png)

So The Customer has Four Options To Choose From ...
and Here comes the first error handling in our program, if the user entered any number rather than ( 1, 2, 3, 4 ) the program will produce an error message for the user and ask him to enter  the correct choice

![3](/_resources/3.png)

this error handling is produced using the following piece of code

```assembly
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
```

> First Choice

Now lets consider a customer wishing to purchase number of subscriptions, so he entered ( 1 ) to choose from the main menu, the program will detect that there is no error in the input and will continue to display the menu of subscriptions prices for the user

![4](/_resources/4.png)

... the user must choose the type of the membership as a number between ( 1 - 6 ), if the input is not in this range there is some error handling code to make the user input the right choice

```assembly
FIRST_CHOICE:
        
        Print membership_menu           ;display the membership prices message
    
    GET_INPUT_AGAIN:
         
        call GetInput                   ; read the user choice (What membership?)   
        
        ;== handle the user input ==;
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
```

after that the program will display a message to ask the user to enter the number of subscription he wants between ( 00 - 99 ) and calculate the total price and print out the bill and ask the user if he wants to go back to the main menu again

![5](/_resources/5.png)

```assembly
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
 
 		;====  based on the type  of subscription the user choosed ====; 
        ;==== we bass the price of the subscription to the count function ====;
        ADULT_0:
            Count adult
            
        CHILD_0:
            Count child
            
        ADULT_M:
            Count adultM
            
        CHILD_M:
            Count childM
            
        ADULT_Y:
            Count adultY
            
        CHILD_Y:
            Count childY
                
        ;=== After that we store the result produced by count macro into an array to print it ===;      
        PRINT_RESULT:
        
            Print Total_msg      
        
            mov ax, result
            mov result, 0                                       
            
            ;===== convert decimal to hex to print result =====;
            LEA SI, RES
            MOV CX,0
            MOV BX,10                              
            
            LOOP1: 
                MOV DX,0
                DIV BX              ;DX:AX/BX >> res in AX and reminder in DX
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
            
            Print RES
            
            Print NewLine
            Print NewLine
            Returning
```  
