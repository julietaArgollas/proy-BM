require 'bomba'

RSpec.describe Bomba do
    before { @bomba = Bomba.new }

    it 'deberia de inicializarce la casilla con el contenido vacio' do
        expect(@bomba.getContenido).to eq("")
    end
end