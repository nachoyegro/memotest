Feature: Como usuario quiero poder ganar una partida

Background:
     	Given I am on "the home page"
			And I press "Iniciar Partida"
			And I fill in "cantPares" with "2"
			And I press "OK"

			
Scenario: Partida ganada

			And I fill in "opcion1" with "1"
			And I fill in "opcion2" with "2" 
      When I press "OK"
			And I press "OK"
      And I fill in "opcion1" with "3"
			And I fill in "opcion2" with "4" 
      When I press "OK"
			Then I should see "Ganaste"
      
