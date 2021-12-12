
.386

.MODEL FLAT

ExitProcess PROTO NEAR32 stdcall, dwExitCode:DWORD

INCLUDE debug.h
INCLUDE sqrt.h

.STACK  4096           

.DATA                   

; declare these first so that they are all on WORD boundaries

eye_x       WORD    ?
eye_y       WORD    ?
eye_z       WORD    ?

eyexprompt      BYTE    "Enter the x-coordinate of the camera eyepoint:  ", 0
eyeyprompt      BYTE    "Enter the y-coordinate of the camera eyepoint:  ", 0
eyezprompt      BYTE    "Enter the z-coordinate of the camera eyepoint:  ", 0


display         	BYTE    50 DUP (?), 0 ; the text to display in (x, y, z) format
output_u        	BYTE    "u: ", 0
output_v        	BYTE    "v: ", 0
output_n        	BYTE    "n: ", 0

eol             		BYTE    CR, LF, 0     ; end of line





.CODE          


_start:

 
			   inputW  eyexprompt, eye_x
               outputW ax

               inputW  eyeyprompt, eye_y
               outputW ax 

               inputW  eyexprompt, eye_z
               outputW ax
   
   
			   inputW  eyexprompt, eye_x
               outputW ax

               inputW  eyeyprompt, eye_y
               outputW ax 

               inputW  eyexprompt, eye_z
               outputW ax
   
			   inputW  eyexprompt, eye_x
               outputW ax

               inputW  eyeyprompt, eye_y
               outputW ax 

               inputW  eyexprompt, eye_z
               outputW ax
			   
		  


        INVOKE  ExitProcess, 0  ; exit with return code 0

PUBLIC _start                   ; make entry point public

END                             ; end of source code