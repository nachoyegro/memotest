Feature: Como usuario quiero poder saber la cantidad de pares que me faltan para ganar

Background:
     	Given I am on "the home page"
			And I press "Iniciar Partida"
			And I fill in "cantPares" with "2"
			And I press "OK"
	

Scenario: Todavia quedan pares por adivinar
        
      And I fill in "opcion1" with "1"
			And I fill in "opcion2" with "3" 
      When I press "OK"
      Then I should see "1 = a" 
			And I should see "3 = b"
			Then I should see "Pares restantes: 2"


Scenario: No quedan pares restantes

			And I fill in "opcion1" with "1"
			And I fill in "opcion2" with "2" 
      When I press "OK"
      Then I should see "1 = a" 
			And I should see "2 = a"
			Then I should see "Pares restantes: 1"
			And I press "OK"
      And I fill in "opcion1" with "3"
			And I fill in "opcion2" with "4" 
      When I press "OK"
      Then I should see "3 = b" 
			And I should see "4 = b"
			Then I should see "Pares restantes: 0"
