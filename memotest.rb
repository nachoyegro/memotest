require './exceptions'

class Memotest

	def initialize(cantPares)
		if not cantPares.is_a? Integer
			raise CaracteresInvalidosException.new
		end
		@pares = cantPares
		@fichas = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'a', 'b'] #28 letras
		@set_de_fichas = []
		self.inicializar_pares()
		@intento1 = nil
		@intento2 = nil
	end

	def inicializar_pares()
		if @pares > 28 
			raise DemasiadosParesException.new
		else 
				if @pares < 2
					raise PocosParesException.new
				end
		end
		for nro_par in 0..@pares-1
			for i in 1..2
				@set_de_fichas << @fichas[nro_par]
			end
		end
	end

	#Metodo para testear
	def set_fichas_default(fichas)
		@set_de_fichas = fichas
	end


	def iniciar_partida()
		@set_de_fichas.shuffle!
	end

	def cant_fichas()
		return @set_de_fichas.size
	end

	def get_fichas()
		return @set_de_fichas
	end

	def get_intento1
		return @intento1
	end
	
	def get_intento2
		return @intento2
	end

	def arriesgar(intent1, intent2)
		retornable = false
		x = Integer(intent1)
		y = Integer(intent2)
		@intento1 = @set_de_fichas[x]
		@intento2 = @set_de_fichas[y]
		if @intento1 == @intento2
			retornable = true
			@set_de_fichas.delete_at x
			@set_de_fichas.delete_at y
		end
		return retornable
	end
end

			
