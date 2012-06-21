Feature: Como usuario quiero poder definir el set de fichas

	Background: 
		Given i am on "nueva partida page"
		And the number of pairs are "28"

	Scenario: Too much pairs
		Given the textbox "cantPares"
		And i put "29"
		Then i should see "Demasiados Pares Error"

	Scenario: Not enough pairs
		Given the textbox "cantPares"
		And i put "1"
		Then i should see "Pares insuficientes Error"

	Scenario: Only numbers
		Given the textbox "cantPares"
		And i put "A"
		Then i should see "Ingresar Numeros Error"

  Scenario: OK button
    Given the textbox "cantPares"
    And i put "28"
    When i press "OK"
    Then i should go to "Partida page"



