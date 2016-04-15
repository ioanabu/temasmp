
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include 'emu8086.inc'
start:
CALL PTHIS
DB 13, 10, 'Introduceti 1 pentru casa, 2 pentru robotel vesel: ', 0
CALL scan_num
mov AX, CX
CMP AX, 0
JE exit
cmp ax, 2      
jae robotel
       
out 0, AL
mov AL, AH
out 1, AL

print_result:
in AL, 1
mov AH, AL
in AL, 0
CALL PTHIS
DB 13, 10, '', 0
CALL PRINT_NUM_UNS    
cmp AX, 0            ;LOOP start decrementeaza CX si testeaza daca este egal cu 0 , si daca e 0 iese  
je exit 
JMP casa       ;


exit:
HLT
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS


;;;;;;;;;;;;;;;;

jmp robotel
l equ 50
robotel: mov ah, 0 
mov al, 13h
int 10h


;latura sus cap
mov cx, 100+l
mov dx, 20
mov al, 145
a1: mov ah, 0ch
int 10h
dec cx
cmp cx, 110
ja a1

;latura jos cap
mov cx, 100+l
mov dx, 50
mov al, 145
a2: mov ah, 0ch
int 10h
dec cx
cmp cx, 110
ja a2 

; latura din stanga cap
mov cx, 100+l
mov dx, 20
mov al, 145
a3: mov ah, 0ch
int 10h
inc dx
cmp dx, 50
jb a3    
          
; latura din dreapta cap
mov cx, 60+l
mov dx, 20
mov al, 145       
a4: mov ah, 0ch
int 10h
inc dx
cmp dx, 50
jb a4

;latura sus ochi
mov cx, 90+l
mov dx, 30
mov al, 145
a22: mov ah, 0ch
int 10h
dec cx
cmp cx, 150
ja a22

;latura sus ochi
mov cx, 70+l
mov dx, 30
mov al, 145
a23: mov ah, 0ch
int 10h
dec cx
cmp cx, 140
ja a23 

;gura
mov cx, 90+l
mov dx, 40
mov al, 145
a24: mov ah, 0ch
int 10h
dec cx
cmp cx, 120
ja a24


; latura din stanga gat
mov cx, 85+l
mov dx, 50
mov al, 145
a5: mov ah, 0ch
int 10h
inc dx
cmp dx, 70
jb a5    
          
; latura din dreapta gat
mov cx, 75+l
mov dx, 50
mov al, 145       
a6: mov ah, 0ch
int 10h
inc dx
cmp dx, 70
jb a6       


;latura sus corp
mov cx, 110+l
mov dx, 20+l
mov al, 145
a7: mov ah, 0ch
int 10h
dec cx
cmp cx, 100
ja a7

;latura jos corp
mov cx, 110+l
mov dx, 60+l
mov al, 145
a8: mov ah, 0ch
int 10h
dec cx
cmp cx, 100
ja a8   

; latura din stanga corp
mov cx, 50+l
mov dx, 20+l
mov al, 145
a9: mov ah, 0ch
int 10h
inc dx
cmp dx, 110
jb a9    
          
; latura din dreapta corp
mov cx, 110+l
mov dx, 20+l
mov al, 145       
a10: mov ah, 0ch
int 10h
inc dx
cmp dx, 110
jb a10 


;latura sus mana stanga
mov cx, 50+l
mov dx, 30+l
mov al, 145
a17: mov ah, 0ch
int 10h
dec cx
cmp cx, 60
ja a17

;latura jos mana stanga
mov cx, 50+l
mov dx, 40+l
mov al, 145
a18: mov ah, 0ch
int 10h
dec cx
cmp cx, 60
ja a18

; latura din mana stanga
mov cx, 10+l
mov dx, 30+l
mov al, 145
a19: mov ah, 0ch
int 10h
inc dx
cmp dx, 90
jb a19    
 
 
;latura sus mana dreapta
mov cx, 150+l
mov dx, 30+l
mov al, 145
a20: mov ah, 0ch
int 10h
dec cx
cmp cx, 160
ja a20

;latura jos mana dreapta
mov cx, 150+l
mov dx, 40+l
mov al, 145
a21: mov ah, 0ch
int 10h
dec cx
cmp cx, 160
ja a21

          
; latura din dreapta
mov cx, 150+l
mov dx, 30+l
mov al, 45       
a25: mov ah, 0ch
int 10h
inc dx
cmp dx, 90
jb a25  

; latura din stanga picior 1
mov cx, 60+l
mov dx, 60+l
mov al, 145
a11: mov ah, 0ch
int 10h
inc dx
cmp dx, 140
jb a11    
          
; latura din dreapta picior 1
mov cx, 70+l
mov dx, 60+l
mov al, 145       
a12: mov ah, 0ch
int 10h
inc dx
cmp dx, 140
jb a12

; latura din stanga picior 2
mov cx, 90+l
mov dx, 60+l
mov al, 145
a13: mov ah, 0ch
int 10h
inc dx
cmp dx, 140
jb a13    
          
; latura din dreapta picior 2
mov cx, 100+l
mov dx, 60+l
mov al, 145       
a14: mov ah, 0ch
int 10h
inc dx
cmp dx, 140
jb a14

;latura jos picior 1
mov cx, 70+l
mov dx, 90+l
mov al, 145
a15: mov ah, 0ch
int 10h
dec cx
cmp cx, 108
ja a15   

;latura jos picior 2
mov cx, 100+l
mov dx, 90+l
mov al, 145
a16: mov ah, 0ch
int 10h
dec cx
cmp cx, 138
ja a16 

;avertizare sonora
mov ah, 02
mov dx, 07h
int 21h  


jmp start

;;;;;;;;;CASA;;;;;;;;;;

jmp casa
w equ 50 ; dimensiune dreptunghi
h equ 50
casa: mov ah, 0
mov al, 13h ; trecere in mod grafic 320x200
int 10h



; afisare latura sus
mov cx, 100+w ;axa ox
mov dx, 50+h  ;axa oy 
mov al, 97 ;culoarea
u2: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 70 ;compara pentreu oprire la 100
ja u2       



    
; latura din stanga dreptunghi
mov cx, 70
mov dx, 50+h
mov al, 97
u5: mov ah, 0ch
int 10h
inc dx
cmp dx, 160
jb u5    
          
; latura din dreapta dreptunghi
mov cx, 100+w
mov dx, 50+h
mov al, 97       
u6: mov ah, 0ch
int 10h
inc dx
cmp dx, 160
jb u6    

 ;latura de jos dreptnghi   
mov cx, 100+w
mov dx, 160
mov al, 97
u7: mov ah, 0ch
int 10h
dec cx
cmp cx, 70
ja u7    
         
; latura din stanga triunghi
mov cx, 70
mov dx, 50+h
mov al, 97
u3: mov ah, 0ch
int 10h
dec dx 
dec dx
inc cx
inc cx
cmp dx, 61 
ja u3      

; latura din dreapta triunghi
mov cx, 100+w
mov dx, 50+h
mov al, 97 
u4: mov ah, 0ch
int 10h
dec dx
dec dx
dec cx 
dec cx
cmp dx, 61
ja u4                
         
    



;acoperis sus
mov cx, 60+w ;axa ox
mov dx, 60  ;axa oy 
mov al, 97 ;culoarea
u8: mov ah, 0ch ;deseneaza
int 10h
dec dx
;dec dx
inc cx
inc cx
cmp dx, 25 ;compara pentreu oprire la 100
ja u8       


;acoperis jos
mov cx, 100+w ;axa ox
mov dx, 50+h  ;axa oy 
mov al, 97 ;culoarea
u9: mov ah, 0ch ;deseneaza
int 10h
dec dx 
inc cx
inc cx
cmp dx, 60 ;compara pentreu oprire la 100
ja u9  

; latura din dreapta acoperis
mov cx, 180+w
mov dx, 10+h
mov al, 97 
u10: mov ah, 0ch
int 10h
dec dx
dec dx 
dec cx
dec cx 
dec cx
cmp dx, 25
ja u10    



;dreptunghi jos
mov cx, 100+w ;axa ox
mov dx, 110+h  ;axa oy 
mov al, 97 ;culoarea
u11: mov ah, 0ch ;deseneaza
int 10h
dec dx 
;dec dx
inc cx
inc cx
cmp dx, 120 ;compara pentreu oprire la 100
ja u11  
 
; latura din dreapta casa
mov cx, 180+w
mov dx, 10+h
mov al, 97       
u12: mov ah, 0ch
int 10h
inc dx
cmp dx, 122
jb u12 
 
; latura din stanga usa
mov cx, 50+w
mov dx, 70+h
mov al, 60       
u13: mov ah, 0ch
int 10h
inc dx
cmp dx,160 
jb u13
       
; latura din dreapta usa
mov cx, 70+w
mov dx, 70+h
mov al, 60       
u14: mov ah, 0ch
int 10h
inc dx
cmp dx,160 
jb u14     

;usa sus
mov cx, 70+w ;axa ox
mov dx, 70+h  ;axa oy 
mov al, 60 ;culoarea
u15: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 100 ;compara pentreu oprire la 100
ja u15  

;clanta
mov cx, 70+w ;axa ox
mov dx, 90+h  ;axa oy 
mov al, 7 ;culoarea
u30: mov ah, 0ch ;deseneaza
int 10h
dec cx
cmp cx, 110 ;compara pentreu oprire la 100
ja u30     

;fereastra jos
mov cx, 150+w ;axa ox
mov dx, 60+h  ;axa oy 
mov al, 165 ;culoarea
u16: mov ah, 0ch ;deseneaza
int 10h
dec dx
inc cx
inc cx
cmp dx, 100 ;compara pentreu oprire la 100
ja u16      

;fereastra sus
mov cx, 150+w ;axa ox
mov dx, 40+h  ;axa oy 
mov al, 165 ;culoarea
u21: mov ah, 0ch ;deseneaza
int 10h
dec dx
inc cx
inc cx
cmp dx, 80 ;compara pentreu oprire la 100
ja u21     

; fereastra stanga
mov cx, 150+w
mov dx, 40+h
mov al, 165       
u18: mov ah, 0ch
int 10h
inc dx

cmp dx,110 
jb u18
         
; fereastra dreapta
mov cx, 170+w
mov dx, 30+h
mov al, 165      
u19: mov ah, 0ch
int 10h
inc dx
cmp dx,102 
jb u19      


;fereastra mijloc ox
mov cx, 150+w ;axa ox
mov dx, 50+h  ;axa oy 
mov al, 145 ;culoarea
u17: mov ah, 0ch ;deseneaza
int 10h
dec dx
inc cx
inc cx
cmp dx, 90 ;compara pentreu oprire la 100
ja u17 


       

; fereastra mijloc
mov cx, 160+w
mov dx, 35+h
mov al, 145       
u20: mov ah, 0ch
int 10h
inc dx
cmp dx,105 
jb u20    

     
;fereastra jos
mov cx, 120+w ;axa ox
mov dx, 75+h  ;axa oy 
mov al, 165 ;culoarea
u24: mov ah, 0ch ;deseneaza
int 10h
dec dx
inc cx
inc cx
cmp dx, 115 ;compara pentreu oprire la 115
ja u24      

;fereastra sus
mov cx, 120+w ;axa ox
mov dx, 55+h  ;axa oy 
mov al, 165 ;culoarea
u25: mov ah, 0ch ;deseneaza
int 10h
dec dx
inc cx
inc cx
cmp dx, 94 ;compara pentreu oprire la 94
ja u25   

; fereastra stanga
mov cx, 120+w
mov dx, 54+h
mov al, 165       
u26: mov ah, 0ch
int 10h
inc dx

cmp dx,125 
jb u26
         
; fereastra dreapta
mov cx, 140+w
mov dx, 45+h
mov al, 165     
u27: mov ah, 0ch
int 10h
inc dx
cmp dx,117 
jb u27      


;fereastra mijloc oy
mov cx, 120+w ;axa ox
mov dx, 65+h  ;axa oy 
mov al, 145 ;culoarea
u28: mov ah, 0ch ;deseneaza
int 10h
dec dx
inc cx
inc cx
cmp dx, 105 ;compara pentreu oprire la 105
ja u28 




; fereastra mijloc ox
mov cx, 130+w
mov dx, 50+h
mov al, 145       
u29: mov ah, 0ch
int 10h
inc dx
cmp dx,120 
jb u29
   
;avertizare sonora
mov ah, 02
mov dx, 07h
int 21h

;avertizare sonora
mov ah, 02
mov dx, 07h
int 21h     
 

jmp start


;asteptare apasare tasta

mov ah,00
int 16h

ret




