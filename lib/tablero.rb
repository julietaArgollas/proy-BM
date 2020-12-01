class Tablero
   
    def initialize(filas,columnas)
        @sinMina = -1
        @tableroLleno = -2
        @mina = -3
        @mismaPosicion = -4
        @estaFueraDelTablero = -5
        @contadorCasillas = 0
        @contadorMinas = 0
        @filas = filas
        @columnas = columnas
        @tablero = Array.new(filas){ Array.new(columnas) {@sinMina}}
        @tjugador = Array.new(filas){ Array.new(columnas) {' '}}
        @tableroMinas = Array.new(filas){ Array.new(columnas) {' '}}
        for i in 0..filas-1
            for j in 0..columnas-1
                @tableroMinas[i][j]=i.to_s+":"+j.to_s 
            end
        end
    end

    def getFilas()
        return @filas
    end

    def getColumnas()
        return @columnas
    end

    def getTableroJugador()
        return @tjugador
    end

    def getTablero()
        return @tablero
    end

    def getTableroMinas()
        return @tableroMinas
    end

    def agregarMinas(posX,posY)
        if((@filas*@columnas-1)) == @contadorMinas
            return @tableroLleno
        else
            if((posX>=0 && posX<@columnas) && (posY>=0 && posY<@filas))   
                if @tablero[posX][posY] != @mina
                    @tablero[posX][posY] = @mina
                    @tableroMinas[posX][posY]='*'
                    @contadorMinas=@contadorMinas+1
                return @mina
                else
                    return @mismaPosicion
                end
            else
                return @estaFueraDelTablero
            end 
        end
    end

    def contarMinasEnTablero(x,y)
        nMinas = 0 
        for i in x-1..x+1 
            for j in y-1..y+1 
                if (i >= 0 && i < @filas) && (j >= 0 && j < @columnas) 
                    if @tablero[i][j] == @mina 
                        nMinas=nMinas+1 
                    end
                end
            end
        end
        return nMinas
    end
    #establece numeros en el tablero dependiendo la cantidad de minas que hay al rededor
    def establecerNumerosEnTablero()
        for i in  0..@filas-1
            for j in 0..@columnas-1
                if @tablero[i][j] == @sinMina
                    @tablero[i][j] = contarMinasEnTablero(i,j)
                end
            end
        end
    end

    def marcarCasillaTablero(posX,posY) 
        if((posX>=0 && posX<@columnas) && (posY>=0 && posY<@filas))   
            if @tablero[posX][posY] == @mina
                return @mina
            else
                if @tjugador[posX][posY] == ' '
                    @contadorCasillas=@contadorCasillas+1
                    @tjugador[posX][posY]=@tablero[posX][posY]
                    return @sinMina
                else
                    return @mismaPosicion
                end
            end 
        else
            return @estaFueraDelTablero
        end
    end

    def gano()
        if ((@filas*@columnas-1)) == @contadorCasillas
            return true
        else
            return false
        end
    end
    ##################
end
