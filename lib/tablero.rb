require './lib/mina.rb'

class Tablero
   
    attr_accessor :filas, :columnas, :tablero

    def initialize()
        @tablero= Array.new(9) { Array.new(9) { ' ' } }
    end

    def get()
        return @tablero
    end

    def mostrarMina(posX,posY)
        if (posX.to_i == 0 && posY.to_i == 0)
            return '*'
        end
    end

    def mostrarEspacioVacio(posX,posY)
        if (posX.to_i == 1 && posY.to_i == 1)
            return ' '
        end
    end
    
    def mostrarNumero(posX, posY)
        if (posX.to_i == 0 && posY.to_i==1)
            respuesta= '1'
        end

        if (posX.to_i == 2 && posY.to_i==1)
            respuesta= '2'
        end

        if (posX.to_i == 3 && posY.to_i==1)
            respuesta= '3'
        end

        return respuesta
    end


end
