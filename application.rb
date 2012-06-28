require 'sinatra/base'
require './exceptions'
require './memotest'

class MyApplication < Sinatra::Base

	get '/' do
		erb :bienvenido
	end

	post '/crear_partida' do
		erb :crear_partida
	end

	post '/jugando' do
		cantFichas = params[:cantPares]
		begin
			@partida = Memotest.new Integer(cantFichas)
			rescue DemasiadosParesException
				erb :demasiados_pares_error
			rescue PocosParesException
				erb :pocos_pares_error
			rescue ArgumentError
				erb :caracteres_invalidos_error
			else
				erb :jugando
		end
	end
	run! if app_file == $0
end
