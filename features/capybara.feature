@javascript
Feature: Capybara testing

  Scenario: simple capybara testing
    Given I go to the posts page
    When I am on the page
    Then I see "Posts" title
