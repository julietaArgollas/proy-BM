class Tablero
   
    def initialize(filas,columnas)
        @sinMina = -1
        @filas = filas
        @columnas = columnas
        @tablero = Array.new(filas){ Array.new(columnas) {@sinMina}}
    end

    def getFilas()
        return @filas
    end

    def getColumnas()
        return @columnas
    end

    def getTablero()
        return @tablero
    end

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
