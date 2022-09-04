// Eddy Mariana Niño Castro
// 451971
// eddy.nino@upb.edu.co

(INICIO)
            @KBD
            D=M 
            @67 
            D=D-A 
            @SETCL
            D;JEQ

            @KBD
            D=M 
            @84 
            D=D-A 
            @SETT
            D;JEQ

            @INICIO
            0;JMP 

(SETT)
            @16400 
            D=A
            @coord 
            M=D 

            @20480 
            D=A 
            @segundacoord
            M=D

            @256
            D=A
            @cont 
            M=D
            
            @32
            D=A 
            @contdos
            M=D

            @1
            D=A
            @saltodos
            M=D

            @32
            D=A 
            @salto
            M=D

            @256
            D=A
            @color
            M=D

            @colordos
            M=-1

            @RECT
            0;JMP

(SETCL)
            @16384 
            D=A
            @coord 
            M=D 

            @8192 
            D=A
            @cont 
            M=D

            @1
            D=A 
            @salto
            M=D

            @color
            M=0
            @RECT
            0;JMP

(RECT)                    
            @coord 
            D=M
            @pscreen
            M=D 
            @segundacoord
            D=M 
            @pscreendos
            M=D

            @PAINT
            0;JMP

(PAINT)
            @cont 
            D=M 

            @PAINTDOS
            D;JEQ 

            
            @color
            D=M
            @pscreen
            A=M 
            M=D
            
            @cont 
            M=M-1

            @salto
            D=M

            @pscreen
            M=M+D 

            @PAINT
            0;JMP

(PAINTDOS)

            @contdos 
            D=M 
            @END
            D;JEQ 


            @colordos
            D=M
            @pscreendos
            A=M
            M=D

            @contdos 
            M=M-1

            @saltodos
            D=M

            @pscreendos
            M=M+D 

            @PAINTDOS
            0;JMP

(END)
            @INICIO 
            0;JMP
