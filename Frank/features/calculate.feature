@wip
Feature: 
  As a student
  I want to calculate arithmetic with Calculator
  So I can save my time

  Scenario: Calculate Sum
    Given I launch the app
    Then I peform calculation:
    | input_1 | button | input_2 | output |
    | 20      | +      | 30      | 50     |
    | 2       | +      | 5       | 7      |
    | 0       | +      | 40      | 40     |
    | 12345   | +      | 56789   | 69134  |
  