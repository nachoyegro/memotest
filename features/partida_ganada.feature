Feature: Como usuario quiero poder ganar una partida

Scenario: Todavia quedan pares por adivinar
        
     	Given I am on "the home page"
			And I press "Iniciar Partida"
			And I fill in "cantPares" with "2"
			And I press "OK"
      And I fill in "opcion1" with "1"
			And I fill in "opcion2" with "3" 
      When I press "OK"
      Then I should see "1 = a" 
			And I should see "3 = b"
			Then I should see "cantPares" equals to "2"
			
Scenario: Adivine todos los pares

     	Given I am on "the home page"
			And I press "Iniciar Partida"
			And I fill in "cantPares" with "2"
			And I press "OK"
      And I fill in "opcion1" with "1"
			And I fill in "opcion2" with "2" 
      When I press "OK"
      Then I should see "1 = a" 
			And I should see "2 = a"
			Then I should see "cantPares" equals to "1"
			And I press "OK"
      And I fill in "opcion1" with "3"
			And I fill in "opcion2" with "4" 
      When I press "OK"
      Then I should see "3 = b" 
			And I should see "4 = b"
			Then I should see "cantPares" equals to "0"
			Then I should see "Ganaste"
      
