require 'sinatra'
require './config'
require './lib/tablero.rb'

get '/' do
    erb :homepage
end
get '/reglas' do
    erb :reglas
end
post '/juego' do
    $tablero = Tablero.new
    erb :play
end

post '/seleccionar' do
    $posX=params[:x]
    $posY=params[:y]
    $respuesta=$tablero.clic($posX,$posY)
    erb :seleccionarCasilla
end