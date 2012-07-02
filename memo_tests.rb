require 'test/unit'
require './memotest'
require './exceptions'


class TestMemoTest < Test::Unit::TestCase

	def setup
		@memotest = Memotest.new 3
		@set_de_fichas = [Ficha.new('a'), Ficha.new('a'), Ficha.new('b'), Ficha.new('b'), Ficha.new('c'), Ficha.new('c')]
		@memotest.set_fichas_default(@set_de_fichas.dup)

	end

  def test_crear_partida_set_cantidad_correcta_de_pares
		#act
		memotest = Memotest.new 10 #Inicializo el juego con 10 pares
    # arrange 
		esperado = 20 #Tendria que tener 20 fichas
		actual = memotest.cant_fichas
		#assert
    assert_equal(esperado, actual)
  end

	def test_se_mezcla_set_de_fichas
		@memotest.iniciar_partida() #Se mezclan las fichas
		actual = @memotest.get_fichas
		assert_not_equal(actual, @set_de_fichas)
	end

	def test_adivino_fichas
		assert (@memotest.arriesgar 1, 2), "Esto es verdadero"
	end

	def test_no_adivino_fichas
		assert not(@memotest.arriesgar 1, 4), "Esto es Falso"
	end


	def test_no_adivino_y_no_saco_fichas
		@memotest.arriesgar 1, 4 # NO adivino
		
		expected = 6 #Espero que queden todas las fichas
		actual = @memotest.get_fichas.size
		assert_equal(actual, expected)

	end

	def test_lanza_excepcion_muchos_pares
		assert_raise(DemasiadosParesException) { Memotest.new 29 }
	end

	def test_lanza_excepcion_pocos_pares
		assert_raise(PocosParesException) { Memotest.new 1 }
	end

	def test_lanza_excepcion_si_no_ingreso_numeros
		assert_raise(CaracteresInvalidosException) { Memotest.new 'b' }
	end


end
