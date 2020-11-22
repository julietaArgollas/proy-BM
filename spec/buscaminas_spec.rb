require './lib/tablero.rb'
require './lib/mina.rb'

RSpec.describe Tablero do

    before { @tablero = Tablero.new()
             @mina=Mina.new        
            }

    it "verificar tam de tablero estatico 8x8" do

        @tablero.filas=8
        @tablero.columnas=8

        expect(@tablero.filas).to eq 8
        expect(@tablero.columnas).to eq 8        
    end

    it "verificar si una casilla del tablero contiene una mina" do
        @tablero.filas=8
        @tablero.columnas=8
        expect( @tablero.mostrarMina(0,0)).to eq "*"
    end   

    it "verificar si una casilla del tablero contiene un espacio vacio" do
       
        expect( @tablero.mostrarEspacioVacio(1,1)).to eq " "
    end      
    
    it "verificar si una casilla del tablero contiene un numero" do
        
        expect( @tablero.mostrarNumero(0,1)).to eq "1"
    end  
end