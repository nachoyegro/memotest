require './exceptions'
require './ficha'

class Memotest

	def initialize(cantPares)
		if not cantPares.is_a? Integer
			raise CaracteresInvalidosException.new
		end
		@pares = cantPares
		@fichas = [Ficha.new('a'), Ficha.new('b'), Ficha.new('c'), Ficha.new('d'), Ficha.new('e'), Ficha.new('f'), Ficha.new('g'), Ficha.new('h'), Ficha.new('i'), Ficha.new('j'), Ficha.new('k'), Ficha.new('l'), Ficha.new('m'), Ficha.new('n'), Ficha.new('o'), Ficha.new('p'), Ficha.new('q'), Ficha.new('r'), Ficha.new('s'), Ficha.new('t'), Ficha.new('u'), Ficha.new('v'), Ficha.new('w'), Ficha.new('x'), Ficha.new('y'), Ficha.new('z'), Ficha.new('a'), Ficha.new('b')] #28 letras
		@set_de_fichas = []
		self.inicializar_pares()
		@intento1 = nil
		@intento2 = nil
		@ganaste=false
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
	
	def get_pares
	  return @pares
	end

	def arriesgar(intent1, intent2)
		retornable = false
		x = Integer(intent1)
		y = Integer(intent2)
		@intento1 = @set_de_fichas[x - 1]
		@intento2 = @set_de_fichas[y - 1]
		if @intento1.dar_vuelta == @intento2.dar_vuelta 
			@set_de_fichas[x - 1].adivinaron
			@set_de_fichas[y - 1].adivinaron
			@pares -=1
			retornable = true
		end
		if @pares == 0
		  @ganaste=true
		end
		return retornable
	end
end

			
