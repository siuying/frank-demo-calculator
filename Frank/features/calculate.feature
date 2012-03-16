@wip
Feature: 
  As a student
  I want to calculate arithmetic with Calculator
  So I can save my time

  Scenario: Calculate Sum
    Given I launch the app
    When I press "1" button
    And I press "+" button
    And I press "1" button
    And I press "=" button
    Then I see "2" on the display