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