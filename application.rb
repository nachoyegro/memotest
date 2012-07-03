require 'sinatra/base'
require './exceptions'
require './memotest'

class MyApplication < Sinatra::Base
	
	configure do
		enable :sessions
	end

	get '/' do
		erb :bienvenido
	end

	post '/crear_partida' do
		erb :crear_partida
	end

	post '/jugando' do
		cantFichas = params[:cantPares]
		begin
			 if session[:memotest].nil?
			  partida = Memotest.new Integer(cantFichas)
			  session[:memotest] = partida #Guardo la partida en la sesion
			 else
			  partida = session[:memotest]
			 end
			rescue DemasiadosParesException
				erb :demasiados_pares_error
			rescue PocosParesException
				erb :pocos_pares_error
			rescue ArgumentError
				erb :caracteres_invalidos_error
			else
				@pares = partida.get_fichas
        @faltan=partida.get_pares
				erb :jugando
		end
	end


	post '/resultado' do
		partida = session[:memotest]
		opcion1 = params[:opcion1]
		opcion2 = params[:opcion2]
		partida.arriesgar(opcion1, opcion2)#Arriesgo las opciones
		params[:opcion1] = opcion1
		params[:opcion2] = opcion2
		params[:resultado1] = partida.get_fichas[Integer(opcion1) - 1].dar_vuelta
		params[:resultado2] = partida.get_fichas[Integer(opcion2) - 1].dar_vuelta
		session[:memotest] = partida
		@pares =partida.get_fichas
		@falta= partida.get_pares
		
		  erb :resultado
		
	end

	
	run! if app_file == $0
end
