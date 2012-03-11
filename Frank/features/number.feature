Feature: 
  As a student
  I want to input numbers to calculator
  So I can calculate

  Scenario: Default Number
    Given I launch the app
    Then I see "0" on the display
    
  Scenario: Input Number
    Given I launch the app
    When I press "1" button
    Then I see "1" on the display
    When I press "2" button
    Then I see "12" on the display
    When I press "3" button
    When I press "4" button
    When I press "5" button
    When I press "6" button
    When I press "7" button
    When I press "8" button
    Then I see "12345678" on the display
    
  @wip
  Scenario: Max number length is 8
    Given I launch the app
    When I press "1" button
    When I press "2" button
    When I press "3" button
    When I press "4" button
    When I press "5" button
    When I press "6" button
    When I press "7" button
    When I press "8" button
    When I press "9" button
    Then I see "12345678" on the display
    
  
