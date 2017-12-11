.586
.MODEL FLAT
  INCLUDE io.h
.STACK 4096
.DATA
  gr1 dd ?
  gr2 dd ?
  gr3 dd ?
  gr4 dd ?
  we1 dd ?
  we2 dd ?
  we3 dd ?
  we4 dd ?

  p1 BYTE "Enter the grade1",0
  p2 BYTE "Enter the weight1",0
  p3 BYTE "Enter the grade2",0
  p4 BYTE "Enter the weight2",0
  p5 BYTE "Enter the grade3",0
  p6 BYTE "Enter the weight3",0
  p7 BYTE "Enter the grade4",0
  p8 BYTE "Enter the weight4",0
  string DD 40 DUP(?)
  resultable BYTE "the weighted sum is",0
  resultable1 BYTE "the  sum of weights is",0
  resultable2 BYTE "the weighted of average is",0
  result DD 11 DUP(?)
  result1 DD 11 DUP(?)
.CODE
_MainProc PROC
  input p1,string,40
  atod string
  mov gr1,eax
  input p2,string,40
  atod string
  mov we1,eax
  input p3,string,40
  atod string
  mov gr2,eax
  input p4,string,40
  atod string
  mov we2,eax
  input p5,string,40
  atod string
  mov gr3,eax
  input p6,string,40
  atod string
  mov we3,eax
  input p7,string,40
  atod string
  mov gr4,eax
  input p8,string,40
  atod string
  mov we4,eax
  


  mov eax,gr1
  imul eax,we1
  mov ebx,gr2
  imul ebx,we2
  add eax,ebx
  mov ebx,gr3
 imul ebx,we3
  add eax,ebx
  mov ebx,gr4
  imul ebx,we4
  add eax,ebx
  dtoa result,eax
  output resultable,result


mov eax,we1
add eax,we2
add eax,we3
add eax,we4
dtoa result1,eax
output resultable1,result1



atod result1
mov ebx,eax
atod result
cdq
idiv ebx
dtoa result,eax
output resultable2,result
mov eax,0
ret
_MainProc ENDP
END





