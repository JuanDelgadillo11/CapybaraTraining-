#Scarlen Quinsamolle
Given(/^I see "(.*?)" title in home page$/) do |subtitle|
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  expect(home_page.title.text).to include(subtitle)
end


When(/^I click on "(.*?)" option in home page$/) do |option|
  home_page.click_on_account(option)
end




