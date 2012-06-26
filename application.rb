require 'sinatra/base'

class MyApplication < Sinatra::Base

	get '/' do
		erb :bienvenido
	end

	post '/crear_partida' do
		erb :crear_partida
	end

end
