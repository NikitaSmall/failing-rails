Feature: Test different types of errors

  Scenario: Successfull test
    Given this test with variable "1"
    When I want to pass it
    Then The result equal to "1"

  Scenario: Failing test
    Given this test with variable "1"
    When I want to pass it
    Then The result equal to "2"

  Scenario: Long test
    Given this test tooks too long
    Then I want to pass it
