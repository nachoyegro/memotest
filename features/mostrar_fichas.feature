Feature: Como usuario quiero poder ver el estado de las fichas


Background:
     	Given I am on "the home page"
			And I press "Iniciar Partida"
			And I fill in "cantPares" with "2"
			And I press "OK"

Scenario: Muestra fichas boca abajo
			I should see "*"


Scenario: No quedan fichas por mostrar
			And I fill in "opcion1" with "1"
			And I fill in "opcion2" with "2" 
      And I press "OK"
			And I press "OK"
      And I fill in "opcion1" with "3"
			And I fill in "opcion2" with "4" 
			And I press "OK"
			And I press "OK"
			Then I should not see "*"
			
