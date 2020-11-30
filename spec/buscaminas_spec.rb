require './lib/tablero.rb'
require './lib/mina.rb'

RSpec.describe Tablero do
# refactorizando
    it 'deberia devolverme el numero de filas y columnas que ingrese' do
        @tablero=Tablero.new(5,6)
        expect(@tablero.getFilas()).to eq(5)
        expect(@tablero.getColumnas()).to eq(6)
    end
=begin
[

    it "verificar si una casilla del tablero contiene una mina" do
        expect( @tablero.mostrarMina(5,1)).to eq "*"
    end   

    it "verificar si una casilla del tablero contiene un espacio vacio" do
        expect( @tablero.mostrarEspacioVacio(1,1)).to eq " "
    end      
    
    it "verificar si una casilla del tablero contiene el numero 1" do
        expect( @tablero.mostrarNumero(4,0)).to eq "1"
    end  

    it "verificar si una casilla del tablero contiene el numero 2" do
        expect( @tablero.mostrarNumero(4,1)).to eq "2"
    end

    it "verificar si una casilla del tablero contiene el numero 3" do
        expect( @tablero.mostrarNumero(1,3)).to eq "3"
    end

    it 'deberia devolver "No esta en el rango" si coloco las posicion x y la posicion y en una casilla que no existe dentro del rango' do
        expect( @tablero.clic(10,10)).to eq('No esta en el rango')
    end

    it 'deberia devolver "Perdiste :(" si se ha seleccionado una casilla con bomba ' do
        expect(@tablero.recorrerTablero(3,3)).to eq('Perdiste :(')
    end 
]
=end
end