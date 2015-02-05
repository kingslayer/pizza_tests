Given(/^I observe the order ID number in the URL$/) do 
  @orderid = current_path
end

Then(/^I should find the order ID on the order history page$/) do 
  find(:xpath, "//a[@href='#{@orderid}']")
end

Then(/^I should find the new values on the order history page$/) do
  page.should have_content('Solo')
  page.should have_content('10')
end

Given(/^I observe the number of existing orders for my account$/) do
  @actual_number = page.all('tr').size
end

Then(/^the number of orders should increment by one$/) do
  new_number = page.all('tr').size
  new_number.should == @actual_number += 1
end

And(/^I confirm the removal$/) do
  page.driver.browser.switch_to.alert.accept
end

Then(/^the number of orders should decrement by one$/) do
  new_number = page.all('tr').size
  new_number.should == @actual_number -= 1
end


