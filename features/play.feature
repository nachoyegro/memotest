feature:play

scene: right move
   when i am on the play screen 
    and put 1 in the number 1 and put 5 in the number 2 and press the risk button
    then i should see 1 = a 5 = c
    
scene:  number 1 empty
     when i am on the play screen 
     and put 1 in the number 1 and nothing in the number 2 and press the risk button
     then i should see "the number 2 is empty"
     
scene:  number 2 empty
     when i am on the play screen 
     and put 5 in the number 2 and nothing in the number 1 and press the risk button
     then i should see "the number 1 is empty"
     
scene:  both numbers empty
     when i am on the play screen 
      and do not put anything on the number 1 and do not put anything on the number 2 and press the risk button
     then i should see "the 2 numbers are empty"
