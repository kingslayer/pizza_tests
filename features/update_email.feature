Feature: Account management

  Background:
    Given I log in with valid credentials

  Scenario: Update email
    Given I am on the "account" page
    And I click the "Edit" link
    And I enter "testuser1@testuser.com" in the "Email" field
    When I click the "Update" button
    Then I should observe "testuser1@testuser.com" on the page
    Then I should change the email back to "testuser@testuser.com"
