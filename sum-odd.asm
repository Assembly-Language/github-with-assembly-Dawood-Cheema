;Write an assembly program to find the sum of all odd values in an array.

; Dawood Saif (23-NTU-CS-1145)

include irvine32.inc
.data

myArray word  0,1,2,3,4,5,6,7,8,9
msgSum byte "Sum of Odd values:",0
msgCount byte "Total Odd Numbers:",0
sum dword 0
count dword 0

.code
main proc
mov eax,0
mov esi,offset myArray
mov ecx,lengthof myArray

OddNumbers:
mov ax,word ptr[esi]
test ax,1
jz skipOdd
movsx eax,word ptr [esi]
add sum,eax 
add count,1   
skipOdd:

add esi,type myArray 
loop OddNumbers

mov edx,offset msgSum
call writestring
call crlf
mov eax,sum
call writeint
call crlf 

mov edx,offset msgCount
call writestring
call crlf
mov eax,count                     
call writeint

exit
main endp
end main


; In this task we have to calculate the sum of all odd numbers in an array , for this we will see all the odd numbers 
; then we will calculate its sum , also used jump command if the numbers is even it will skip addition. Thirldly, will 
; count and display total odd numbers