Given(/^I log in with valid credentials$/) do
  visit('http://testurlpizza.net:8080/')
  fill_in('Email', with: "testuser@testuser.com")
  fill_in('Password', with: "Password1")
  click_button('Login')
end
