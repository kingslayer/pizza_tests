Feature: Order a pizza
  
Background: 
  Given I log in with valid credentials
  And I click the "Order a pizza" link
  And I enter "Party" in the "Name" field
  And I enter "14" in the "Size" field
  And I click the "Create" button
  And I observe the order ID number in the URL

  Scenario: Complete an order
    Given I click the "Add toppings" link    
    And I enter "Sausage" in the "Name" field
    And I check the "Double order" box
    And I click the "Create" button 
    And I click the "Order this pizza" link
    Then I should find the order ID on the order history page
    
  Scenario: Edit an order
    Given I click the "All orders" link
    And I click "Edit" next to an order
    And I enter "Solo" in the "Name" field
    And I enter "10" in the "Size" field
    And I click the "Update" button
    Then I should find the new values on the order history page

  Scenario: Remove an order
    Given I click the "All orders" link
    And I observe the number of existing orders for my account
    And I click "Remove" next to an order
    And I confirm the removal
    Then the number of orders should decrement by one
