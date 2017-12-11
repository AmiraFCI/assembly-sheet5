;   – (x + y –2z + 1)

.586
.MODEL FLAT
INCLUDE io.h           
.STACK 4096
.DATA	
      
	 n1 Dword ?
	 n2 Dword ?
	 n3 Dword ?
	 n4 Dword ?
     promote1 Byte "Enter the first number",0
     promote2 Byte "Enter the second number",0
     promote3 Byte "Enter the third number",0
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
         input    promote3,string,40
         atod      string
         mov       n3,eax
		 imul      eax,2
		 mov      n4,eax
		 mov      eax,n2
		 add      eax,n1
		 sub      eax,n4
		 inc     eax
		 neg     eax
		
		
		
         dtoa      res,eax
        output    te,res

mov eax,0
ret 
MainProc ENDp
end


