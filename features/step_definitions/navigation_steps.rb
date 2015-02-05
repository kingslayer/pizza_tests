Given(/^I enter "(.*?)" in the "(.*?)" field$/) do |value,field|
  fill_in(field, :with => value)
end

Given(/^I check the "(.*?)" box$/) do |box|
  check(box)
end

Then(/^I should (?:find|see|observe) "(.*?)" on the page$/) do |text|
  page.should have_content(text)
end

Given(/^I (?:visit|am on) the "(.*?)" page$/) do |page|
  visit("http://intent-pizza.internal.intentmedia.net:8080/#{page}")
end

And(/^I click the "(.*?)" link$/) do |linktext|
  click_link(linktext)
end

And(/^I click "(.*?)" next to an order$/) do |linktext|
  first(:link, linktext).click
end

And(/^I click the "(.*?)" button$/) do |button|
  click_button(button)
end

