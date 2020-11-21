require 'bomba'

RSpec.describe Bomba do
    before { @bomba = Bomba.new }

    it 'deberia de inicializarce la casilla con el contenido vacio' do
        @bomba.setContenido("")
        expect(@bomba.getContenido).to eq("")
    end

    it 'deberia de inicializarce la casilla con el contenido 1' do
        @bomba.setContenido(1)
        expect(@bomba.getContenido).to eq(1)
    end

end