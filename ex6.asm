.586
.MODEL FLAT
  INCLUDE io.h
.STACK 4096
.DATA
     pan dword ?
     nic dword ?
     dim dword ?
     qu dword ?
     fif dword ?
     doll dword ?
     p1 BYtE "Enter the number of pannny",0
     p2 BYtE  "Enter the number of nicckels",0
     p3 BYtE  "Enter the number of dim",0
     p4 BYtE  "Enter the number of Quarters",0
     p5 BYtE  "Enter the number of fiffty-cent",0
     p6 BYtE "Enter the number of dollllar coins",0
    string dd 40 DUP(?)
   result BYTE "the total value of coins",0
  result3 BYTE "the cent is:",0
  result1 dd 11 DUP(?)
  result2 dd 11 DUP(?)
.CODE
MainProc PROC
   input p1,string,40
   atod string
   mov pan,eax
   input p2,string,40
   atod string
   mov nic,eax
   input p3,string,40
   atod string
   mov dim,eax
   input p4,string,40
   atod string
   mov qu,eax
   input p5,string,40
   atod string
   mov fif,eax
  input p6,string,40
  atod string
  mov doll,eax
     




   mov ebx,pan
   imul ebx,1
  mov eax,ebx
   mov ebx,nic
   imul ebx,5
   add eax,ebx
   mov ebx,dim
   imul ebx,10
   add eax,ebx
   mov ebx,qu
   imul ebx,25
   add eax,ebx
   mov ebx,fif
   imul ebx,50
   add eax,ebx
   mov ebx,doll
   imul ebx,100
   add eax,ebx
  mov ebx,100
  cdq
  div ebx
  dtoa result1 ,eax
  output result,result1
  dtoa result2 ,edx
  output result3,result2
   mov eax,0
   ret
  MainProc ENDP
   END

