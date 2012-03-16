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

  Scenario: Calculate Minus
    Given I launch the app
    Then I peform calculation:
    | input_1 | button | input_2 | output |
    | 40      | -      | 30      | 10     |
    | 9       | -      | 5       | 4      |
    | 40      | -      | 0       | 40     |
    | 56789   | -      | 12345   | 44444  |

  Scenario: Calculate Multiply
    Given I launch the app
    Then I peform calculation:
    | input_1 | button | input_2 | output |
    | 20      | x      | 30      | 600    |
    | 2       | x      | 5       | 10     |
    | 0       | x      | 40      | 0      |
    | 12345   | x      | 12      | 148140 |

  Scenario: Calculate Divide
    Given I launch the app
    Then I peform calculation:
    | input_1 | button | input_2 | output |
    | 20      | ÷      | 4       | 5      |
    | 5       | ÷      | 2       | 2.5    |
    | 40      | ÷      | 40      | 1      |
    | 12000   | ÷      | 6       | 2000   |
    | 12000   | ÷      | 0       | ERR    |
