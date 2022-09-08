// Eddy Mariana Niño Castro
// 451971
// eddy.nino@upb.edu.co

(INICIO)


            @16400 
            D=A
            @coord 
            M=D 

            @256
            D=A
            @cont 
            M=D

            @20480 
            D=A 
            @segundacoord
            M=D

            @32
            D=A 
            @contdos
            M=D

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
            @PAINTVERTICAL
            D;JEQ

            @INICIO
            0;JMP 

(PAINTVERTICAL)

            @cont
            D=M
            @PAINTHORIZONTAL
            D;JEQ

            @256
            D=A
            @coord
            A=M
            M=D

            @32
            D=A
            @coord
            M=M+D

            @cont
            M=M-1

            @PAINTVERTICAL
            0;JMP

(PAINTHORIZONTAL)

                    @contdos
                    D=M
                    @END
                    D;JEQ

                    @segundacoord
                    A=M 
                    M=-1

                    @segundacoord
                    M=M+1

                    @contdos
                    M=M-1


                    @PAINTHORIZONTAL
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

            @salto
            M=1

            @color
            M=0
            @RECT
            0;JMP

(RECT)   

            @coord 
            D=M
            @pscreen
            M=D 

            @PAINT
            0;JMP

(PAINT)
            @cont 
            D=M 
            @END
            D;JEQ 

            
            @color
            D=M
            @pscreen
            A=M 
            M=D
            
            @salto
            D=M

            @pscreen
            M=M+D 
            
            @cont 
            M=M-1

            @PAINT
            0;JMP


(END)
            @INICIO 
            0;JMP
