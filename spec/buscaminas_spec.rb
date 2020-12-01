require './lib/tablero.rb'
require './lib/mina.rb'

RSpec.describe Tablero do
# refactorizando
    it 'deberia devolverme el numero de filas y columnas que ingrese' do
        @tablero=Tablero.new(5,6)
        expect(@tablero.getFilas()).to eq(5)
        expect(@tablero.getColumnas()).to eq(6)
    end

    it 'deberia devolverme el contenido de la matriz en -1 que significa que no exiten minas' do    
        @tablero=Tablero.new(3,3)
        expect(@tablero.getTablero()).to eq([[-1, -1, -1], [-1, -1, -1], [-1, -1, -1]])
    end

    it 'deberia mostrarme la matriz inicial de la partida' do
        @tablero=Tablero.new(3,3)
        expect(@tablero.getTableroJugador()).to eq([[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]])
    end

    it 'deberia devolverme inicialmente las posiciones de la matriz sin minas marcadas con *' do
        @tablero=Tablero.new(3,3)
        expect(@tablero.getTableroMinas()).to eq([["0:0", "0:1", "0:2"], ["1:0", "1:1", "1:2"], ["2:0", "2:1", "2:2"]])
    end

    it 'deberia poder agregar una mina en una posicion x y' do
        @tablero=Tablero.new(2,2)
        expect(@tablero.agregarMinas(0,0)).to eq(-3)
    end

    it 'deberia poder agregar mas de una mina en distintas posiciones posicion x y' do
        @tablero=Tablero.new(4,4)
        expect(@tablero.agregarMinas(0,0)).to eq(-3)
        expect(@tablero.agregarMinas(0,1)).to eq(-3)
    end

    it 'deberia devolverme -5 si puse la mina en una posicion fuera de del tablero' do
        @tablero=Tablero.new(2,2)
        expect(@tablero.agregarMinas(3,3)).to eq(-5)
    end

    it 'deberia devolverme la cantidad de minas que tengo alrededor de la posicion ingresada' do
        @tablero=Tablero.new(4,4)
        @tablero.agregarMinas(1,1)
        @tablero.agregarMinas(1,3)
        expect(@tablero.contarMinasEnTablero(1,2)).to eq(2)
    end

    it 'deberia devolverme la matriz que en la posicion x=0 , y=0 que tiene una mina y se llena con unos' do
        @tablero=Tablero.new(2,2)
        @tablero.agregarMinas(0,0)
        @tablero.establecerNumerosEnTablero()
        expect(@tablero.getTablero()).to eq([[-3, 1], [1, 1]])  
    end

    it 'deberia marcarme el espacio diciendo que no hay mina mediante el numero -1 si toque una casilla vacia' do
        @tablero=Tablero.new(6,6)
        @tablero.agregarMinas(0,0)
        @tablero.agregarMinas(0,1)
        expect(@tablero.marcarCasillaTablero(5,5)).to eq(-1)
    end
    
    it 'deberia mostrarme false si perdi el juego tocando una mina' do
        @tablero=Tablero.new(4,4)
        @tablero.agregarMinas(2,2)
        @tablero.agregarMinas(0,0)
        @tablero.marcarCasillaTablero(0,0)
        expect(@tablero.gano()).to eq(false)
    end

    it 'deberia mostrarme true si gane el juego sin tocar una mina' do
        @tablero=Tablero.new(2,2)
        @tablero.agregarMinas(0,0)
        @tablero.marcarCasillaTablero(0,1)
        @tablero.marcarCasillaTablero(1,0)
        @tablero.marcarCasillaTablero(1,1)
        expect(@tablero.gano()).to eq(true)
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