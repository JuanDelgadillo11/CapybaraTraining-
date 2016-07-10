After  do |scenario|
	if(scenario.failed?)
		screenshot_name = scenario.__id__.to_s + ".png"
		page.driver.browser.save_screenshot("screenshots/#{screenshot_name}")
		embed("screenshots/#{screenshot_name}", "image/png","screenshot-failed")
	end
end
