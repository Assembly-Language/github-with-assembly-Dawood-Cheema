;Write an assembly program to find the sum of all even values in an array.

; Dawood Saif (23-NTU-CS-1145)


include irvine32.inc
.data

myArray word  0,1,2,3,4,5,6,7,8,9
msgSum byte "Sum of Even values:",0
msgCount byte "Total Even Numbers:",0
sum dword 0
count dword 0

.code
main proc

mov eax,0
mov esi,offset myArray
mov ecx,lengthof myArray

EvenNumbers:
mov ax,word ptr[esi]
test ax,1                         ; Checking if number is Odd
jnz skipEven
movsx eax,word ptr [esi]
add sum,eax 
add count,1                       ; Increment the count of positive numbers 
            
skipEven:
add esi,type myArray              ; Move to the next element
loop EvenNumbers                  ; Terminate the loop 
mov edx,offset msgSum
call writestring
call crlf
mov eax,sum
call writeint
call crlf 
mov edx,offset msgCount
call writestring
call crlf
mov eax,count                     ; Displaying the count
call writeint

exit
main endp
end main


; In this task we have to calculate the sum of all even numbers in an array , for this we will see all the even numbers 
; then we will calculate its sum , also used jump command if the numbers is odd it will skip addition. Thirldly, will 
; count and display total even numbers 