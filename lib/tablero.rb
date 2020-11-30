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
        @tjugagor = Array.new(filas){ Array.new(columnas) {' '}}
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
        return @tjugagor
    end

    def getTablero()
        return @tablero
    end

    def getTableroMinas()
        return @tableroMinas
    end

    def agregarMinas(posX,posY)
        if((@filas-1)*(@columnas-1)) == @contadorMinas
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

    #########################    
    def mostrarMina(posX,posY)
        if (posX.to_i == 5 && posY.to_i == 1 || posX.to_i == 3 && posY.to_i == 2 || posX.to_i == 2 && posY.to_i == 3 || posX.to_i == 3 && posY.to_i == 3 || posX.to_i == 0 && posY.to_i == 4 || posX.to_i == 2 && posY.to_i == 4 || posX.to_i == 3 && posY.to_i == 5 || posX.to_i == 5 && posY.to_i == 5 || posX.to_i == 0 && posY.to_i == 8 || posX.to_i == 5 && posY.to_i == 8)
            return '*'
        end
    end

    def mostrarEspacioVacio(posX,posY)
        if (posX.to_i == 0 && posY.to_i == 0 || posX.to_i == 1 && posY.to_i == 0 || posX.to_i == 2 && posY.to_i == 0 || posX.to_i == 3 && posY.to_i == 0 || posX.to_i == 7 && posY.to_i == 0 || posX.to_i == 8 && posY.to_i == 0 || posX.to_i == 7 && posY.to_i == 1 || posX.to_i == 7 && posY.to_i == 2 || posX.to_i == 7 && posY.to_i == 3 || posX.to_i == 7 && posY.to_i == 4 || posX.to_i == 7 && posY.to_i == 5 || posX.to_i == 7 && posY.to_i == 6 || posX.to_i == 7 && posY.to_i == 7 || posX.to_i == 7 && posY.to_i == 8 || posX.to_i == 8 && posY.to_i == 1 || posX.to_i == 8 && posY.to_i == 2 || posX.to_i == 8 && posY.to_i == 3 || posX.to_i == 8 && posY.to_i == 4 || posX.to_i == 8 && posY.to_i == 5 || posX.to_i == 8 && posY.to_i == 6 || posX.to_i == 8 && posY.to_i == 7 || posX.to_i == 8 && posY.to_i == 8 || posX.to_i == 0 && posY.to_i == 1 || posX.to_i == 1 && posY.to_i == 1 || posX.to_i == 0 && posY.to_i == 2 || posX.to_i == 5 && posY.to_i == 3 || posX.to_i == 6 && posY.to_i == 3 || posX.to_i == 0 && posY.to_i == 6 || posX.to_i == 1 && posY.to_i == 6 || posX.to_i == 2 && posY.to_i == 7 || posX.to_i == 3 && posY.to_i == 7 || posX.to_i == 2 && posY.to_i == 8 || posX.to_i == 3 && posY.to_i == 8)
            return ' '
        end
    end
    
    def mostrarNumero(posX, posY)
        if (posX.to_i == 4 && posY.to_i == 0 || posX.to_i == 5 && posY.to_i == 0 || posX.to_i == 6 && posY.to_i == 0 || posX.to_i == 2 && posY.to_i == 1 || posX.to_i == 3 && posY.to_i == 1 || posX.to_i == 6 && posY.to_i == 1 || posX.to_i == 1 && posY.to_i == 2 ||  posX.to_i == 5 && posY.to_i == 2 ||  posX.to_i == 6 && posY.to_i == 2 || posX.to_i == 0 && posY.to_i == 3 || posX.to_i == 5 && posY.to_i == 4 || posX.to_i == 6 && posY.to_i == 4 || posX.to_i == 0 && posY.to_i == 5 || posX.to_i == 6 && posY.to_i == 5 || posX.to_i == 2 && posY.to_i == 6 || posX.to_i == 3 && posY.to_i == 6 || posX.to_i == 5 && posY.to_i == 6 || posX.to_i == 6 && posY.to_i == 6 || posX.to_i == 0 && posY.to_i == 7 || posX.to_i == 1 && posY.to_i == 7 || posX.to_i == 4 && posY.to_i == 7 || posX.to_i == 5 && posY.to_i == 7 || posX.to_i == 6 && posY.to_i == 7 || posX.to_i == 1 && posY.to_i == 8 || posX.to_i == 4 && posY.to_i == 8 || posX.to_i == 6 && posY.to_i == 8)
            respuesta= '1'
        end

        if (posX.to_i == 4 && posY.to_i == 1 || posX.to_i == 4 && posY.to_i == 3 || posX.to_i == 1 && posY.to_i == 5 || posX.to_i == 2 && posY.to_i == 5 || posX.to_i == 4 && posY.to_i == 5 || posX.to_i == 4 && posY.to_i == 6)
            respuesta= '2'
        end

        if (posX.to_i == 2 && posY.to_i == 2 || posX.to_i == 4 && posY.to_i == 2 || posX.to_i == 1 && posY.to_i == 3 || posX.to_i == 1 && posY.to_i == 4 || posX.to_i == 4 && posY.to_i == 4)
            respuesta= '3'
        end

        if (posX.to_i == 3 && posY.to_i==4)
            respuesta= '4'
        end

        return respuesta
    end

    def clic(posX, posY)
        if (posX.to_i > 9 || posY.to_i > 9)
            respuesta = 'No esta en el rango'
        else
            if mostrarMina(posX, posY) == '*'
                respuesta = '*'
            else
                if mostrarEspacioVacio(posX, posY) == '.'
                    respuesta = '.'
                else
                    respuesta = mostrarNumero(posX, posY)
                end
            end
        end
    
        return respuesta
    end

    def colocarCaracter(posX,posY,mina)
        @tablero[posX.to_i][posY.to_i] = mina
    end

    def devuelveResultado(respuesta)
        if (respuesta==false)
            return 'Perdiste :('
        else
            return 'Ganaste :)'
        end
    end

    def recorrerTablero(posX,posY)
        if (mostrarMina(posX,posY)=='*')
            respuestas=devuelveResultado(false)
        end
        return respuestas
    end
end
