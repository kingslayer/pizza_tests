Feature: Change password

  Background:
    Given I log in with valid credentials

  Scenario: Change password
    Given I am on the "account" page
    And I click the "Edit" link
    And I enter "Password2" in the "Change password" field
    And I enter "Password2" in the "Password confirmation" field
    And I click the "Update" button
    Then I should observe "testuser@testuser.com" on the page
    And I should change the password back to "Password1"
    

