Feature: Como usuario quiero poder definir las 2 opciones que elijo


Scenario: right move
      Given i am on "play page"
      And i put "1" in the textfield "Primero" 
      And i put "5" in the textfield "Segundo" 
      When i press "risk"
      Then i should see "1 = a" "5 = c"
    
scene:  Segundo empty
      Given i am on "play page" 
      And i put "1" in the textfield "Primero"
      And i put " " in the textfield "Segundo"
      Then i should see "the number 2 is empty"
     
scene:  Primero empty
      Given i am on "play page" 
      And i put "5" in the textfield "Segundo" 
      And i put " " in the textfield "Primero"
      Then i should see "the number 1 is empty"
     
scene:  both numbers empty
      Given i am on "play page" 
      And i put " " in the textfield "Primero"
      And i put " " in the textfield "Segundo"
      Then i should see "both numbers are empty"
