Feature: Make use of common USD dollar denominations
  In order to create correct change
  As a user
  I want to ensure use of all common USD denominations
 
  Scenario Outline: all usd denominations
  Given I have started the program
  Then available for use should be all current usd <bills> and <coins>
  
  Scenarios: all current USD bills
  |bills|
  |1|
  |2|
  |5|
  |10|
  |20|
  |50|
  |100|

  Scenarios: all current USD coins
  |coins|
  |50|
  |25|
  |10|
  |5|
  |1|
  
