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
    erb :principiante
end
post '/personalizado' do
    erb :personalizado
end

post '/seleccionar' do
    $posX=params[:x]
    $posY=params[:y]
    $respuesta=$tablero.clic($posX,$posY)
    erb :seleccionarCasilla
end