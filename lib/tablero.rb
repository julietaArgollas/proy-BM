require './lib/mina.rb'

class Tablero
   
    attr_accessor :filas, :columnas, :tablero

    def generarTablero()
        @filas=8
        @columnas=8
        @tablero= Array.new(filas) { Array.new(columnas) {celda=Celda.new} }
    end 

    def generarTableroConMinas(posX,posY)
        if (posX.to_i == 0 && posY.to_i == 0)
            return '*'
        end
    end

    def generarTableroConEspaciosVacios(posX,posY)
        if (posX.to_i == 1 && posY.to_i == 1)
            return ' '
        end
    end
end
