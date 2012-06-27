require 'sinatra/base'

class MyApplication < Sinatra::Base

	get '/' do
		erb :bienvenido
	end

	post '/crear_partida' do
		erb :crear_partida
	end
	run! if app_file == $0
end
