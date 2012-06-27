
class Memotest

	def initialize(cantPares):
		@pares = cantPares
		@fichas = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'a', 'b']
		@set_de_fichas = []
		self.inicializarPares()
	end
	
	def inicializarPares()
	#Tengo que verificar la cantidad de fichas ingresadas por el usuario
		for ficha in @fichas
			for i in 1..2
				@set_de_fichas << ficha
			end
		end
		@set_de_fichas.shuffle()
	end
