;sum
;ave
.586
.MODEL FLAT
INCLUDE io.h           
.STACK 4096
.DATA	
      
	 n1 Dword ?
	 n2 Dword ?
	n3 Dword ?
	n4 dword ?
	sum dword ?
	ave dword ?

     prompt1 Byte "Enter the 1st num",0
     prompt2 Byte "Enter the 2nd num",0
	  prompt3 Byte "Enter the 3rd num",0
	   prompt4 Byte "Enter the 4th num",0
     
    inp Byte 40 Dup(?)
	res Byte 40 Dup(?)
	res2 Byte 40 Dup(?)
	 
	 aver byte "the average is",0
	sumr Byte "the sum  ",0
   



.CODE
MainProc PROC
input prompt1,inp,40
atod inp
mov n1,eax

input prompt2,inp,40
atod inp
mov n2,eax


 input prompt3,inp,40
 atod inp
mov n3,eax

 input prompt4,inp,40
 atod inp
 mov n4,eax
 mov eax,n1
 add eax,n2
 add eax,n3
 add eax,n4

 dtoa res,eax
output sumr,res


;ave
 mov sum,eax
mov eax,sum
mov ecx,4
cdq
idiv ecx
mov ave,eax




dtoa res2,ave
output aver,res2


mov eax,0
ret 
MainProc ENDp
end


