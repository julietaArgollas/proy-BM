require 'mina'

RSpec.describe Mina do
    before { @mina = Mina.new }

    it 'deberia de inicializarce la casilla con el contenido vacio' do
        @mina.setContenido("")
        expect(@mina.getContenido).to eq("")
    end

    it 'deberia de inicializarce la casilla con el contenido 1' do
        @mina.setContenido(1)
        expect(@mina.getContenido).to eq(1)
    end

    it 'deberia de inicializarce la casilla con una mina' do
        @mina.setContenido("*")
        expect(@mina.getContenido).to eq("*")
    end

end