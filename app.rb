require 'sinatra'
require './config'
require './lib/buscaminas.rb'

get '/' do
    erb :homepage
end
get '/reglas' do
    erb :reglas
end
get '/Play' do
    @partida = Buscaminas.new
	@tableroHTML = @partida.getTablero
    erb :play
end