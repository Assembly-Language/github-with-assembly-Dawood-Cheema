;Write an assembly program to find the sum of all positive values in an array.

;Dawood Saif (23-NTU-CS-1145)

include irvine32.inc
.data

myArray word -2,-1,0,1,2,3
msgSum byte "Sum of Positive Numbers:",0
msgCount byte "Total Positive Numbers:",0
sum dword 0
count dword 0

.code
main proc

mov eax,0
mov esi,offset myArray
mov ecx,lengthof myArray

positiveNumbers:
mov ax,word ptr[esi]
test ax,8000h                      ; Checking if the number is negative
jnz skipPositive                   ; Skip Addition if negative
movsx eax,word ptr [esi]           ; Add Positive numbers to eax
add sum,eax 
add count,1  

skipPositive:
add esi,type myArray               ; Moving to next Element
loop positiveNumbers
mov edx,offset msgSum              ; Loading Address of First Message
call writestring
call crlf
mov eax,sum
call writeint
call crlf 
mov edx,offset msgCount            ; Loading Address of Second Message
call writestring
call crlf
mov eax,count                      ; Dispaling the Count
call writeint

exit
main endp
end main

; So in this Task we have to calculate the sum of positive Numbers in an array For this we will first check the Positive 
; Numbers in array , then we will calculate its Sum and lastly we will also count the total positive numbers 
; in the array 