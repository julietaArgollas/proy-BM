require 'sinatra'
require './config'
require './lib/tablero.rb'

get '/' do
    erb :inicio
end
get '/reglas' do
    erb :reglas
end
post '/juego' do
    erb :jugar
end
post '/principiante' do
    $tablero = Tablero.new(9,9)
    erb :colocarMinas
end
post '/personalizado' do
    erb :personalizado
end

post '/marcarMinas' do
    @posX=params[:x].to_i
    @posY=params[:y].to_i
    @res=$tablero.agregarMinas(@posX,@posY)
    erb :colocarMinas
end 

post '/comenzarJuego' do
    $tablero.establecerNumerosEnTablero()
    erb :tablero
end

post '/marcar' do
    @posX=params[:x].to_i
    @posY=params[:y].to_i
    @res=$tablero.marcarCasillaTablero(@posX,@posY)
    
    if @res==-3
        erb :finDelJuego
    else
        if $tablero.gano
            erb :gano
        else
            erb :tablero
        end
    end
end

post '/volverAjugar' do
    erb :jugar
end

get '/personalizado' do
    @filas = params[:filas].to_i
    @columnas = params[:columnas].to_i
    $tablero = Tablero.new(@filas,@columnas)
    erb :colocarMinas
end