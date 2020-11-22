require './lib/mina.rb'

class Tablero
   
    attr_accessor :filas, :columnas, :tablero, :cantidad_banderas

    def generarTablero()
        @filas=8
        @columnas=8
        @tablero= Array.new(filas) { Array.new(columnas) {celda=Celda.new} }
    end 

end
