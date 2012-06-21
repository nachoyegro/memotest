Feature: Como usuario quiero poder iniciar una partida


  Scenario: Bienvenido
    Given i am on "the home page"
    Then i should see "Bienvenido"

  Scenario: Crear Partida
    Given i am on "the home page"
		When i press "crear nueva partida"
		Then i should be on "nueva partida page"
   


