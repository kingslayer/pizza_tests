Then(/^I should change the email back to "(.*?)"/) do |email|
  click_link('Edit')
  fill_in('Email', :with => email)
  click_button('Update')
end

Then(/^I should change the password back to "(.*?)"/) do |password|
  click_link('Edit')
  fill_in('Password', :with => password)
  fill_in('Password confirmation', :with => password)
  click_button('Update')
end
