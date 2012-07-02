require './ficha_estado_adivinada'
require './ficha_estado_no_adivinada'

class Ficha

	def initialize(content)
		@estado = NoAdivinada.new
		@contenido = content
	end

	def dar_vuelta()
		return @contenido
	end

	def estado()
		return @estado.estado_de_jugada self
	end

	def adivinaron()
		@estado = Adivinada.new
	end

end
