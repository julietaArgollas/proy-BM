require './lib/mina.rb'

class Tablero
   
    attr_accessor :filas, :columnas, :tablero

    def generarTablero()
        @filas=8
        @columnas=8
        @tablero= Array.new(filas) { Array.new(columnas) {mina=Mina.new} }
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
            return '1'
        end
    end


end
