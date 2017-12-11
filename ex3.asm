;(2*length+ 2*width)

.586
.MODEL FLAT
INCLUDE io.h           
.STACK 4096
.DATA	
      
	 n1 Dword ?
	 n2 Dword ?
	 n3 Dword ?
     promote1 Byte "Enter the width",0
     promote2 Byte "Enter the length",0
     
     string Byte 40 Dup(?)

    te Byte "the result  ",0
    res Byte 11 Dup(?),0



.CODE
MainProc PROC
           input    promote1,string,40
           atod      string
           mov       n1,eax
          input     promote2,string,40
          atod      string
          mov       n2,eax
         
		 mov eax,n1
		 imul eax,2
		 mov  n3,eax

		 mov  eax,n2
		 imul eax,2

		 add eax,n3
         dtoa      res,eax
        output    te,res

mov eax,0
ret 
MainProc ENDp
end


