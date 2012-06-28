Feature: Como usuario quiero poder definir el set de fichas

	Scenario: Label
		Given I am on "the home page"
		And I press "Iniciar Partida"
		Then I should see "Cree una partida nueva"

	Scenario: Too much pairs
		Given I am on "the home page"
		And I press "Iniciar Partida"
		When I fill in "cantPares" with "29"
		And I press "OK"
		Then I should see "Demasiados Pares Error"

	Scenario: Not enough pairs
		Given I am on "the home page"
		And I press "Iniciar Partida"
		When I fill in "cantPares" with "1"
		And I press "OK"
		Then I should see "Pares insuficientes Error"

	Scenario: Only numbers
		Given I am on "the home page"
		And I press "Iniciar Partida"
		When I fill in "cantPares" with "'A'"
		And I press "OK"
		Then I should see "Ingresar Numeros Error"

  Scenario: OK button
		Given I am on "the home page"
		And I press "Iniciar Partida"
    When I fill in "cantPares" with "28"
    And I press "OK"
    Then I should be on "play page"



