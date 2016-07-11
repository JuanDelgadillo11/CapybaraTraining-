# Scarlen Quinsamolle
@join_now
Feature: Verify Join Now Form

Background: Open Join Now page
	Given I open the testing page
	And I click on "Join Now!" button in main page

Scenario: Verify Components in Join Now page
When I see "Register Create an account with us . . ." title in join now
Then I should see the following menus:
|Home|
|Announcements|
|Knowledgebase|
|Network Status|
|Contact Us|

 	And I should see "Already Registered?" title in the left side

And I should see the following labels in the form:
	|First Name|
	|Last Name|
	|Company Name|
	|Email Address|
	|Password|
	|Confirm Password|
	|Address 1|
	|Address 2|
	|City|
	|State/Region|
	|Zip Code|
	|Country|
	|Phone Number|
	|How did you find us?|
	|Mobile Number|

Scenario: Fill in Join Now Form and valite error messages
When I fill in the form and the captcha code is invalid:
	|first_name|Scarlen|
	|last_name|Quinsamolle|
	|company_name|Home|
	|email_address|scarlen@gmail.com|
	|password|scarlen123|
	|confirm_password|scarlen123|
	|address1|address1|
	|address2|address2|
	|city|Cochabamba|
	|state_region|Sacaba|
	|zip_code|591|
	|country|Bolivia|
	|phone_number|12345678|
	|fins_us|Google|
	|mobile_number|12345678|
	|captcha|4B1TW|
Then I should see the following errors message:
	|The characters you entered didn't match the image shown. Please try again.|


When I fill in the form and the phone number is invalid:
	|first_name|Scarlen|
	|last_name|Quinsamolle|
	|company_name|Home|
	|email_address|scarlen@gmail.com|
	|password|scarlen123|
	|confirm_password|scarlen123|
	|address1|address1|
	|address2|address2|
	|city|Cochabamba|
	|state_region|Sacaba|
	|zip_code|591|
	|country|Bolivia|
	|phone_number|0|
	|fins_us|Google|
	|mobile_number|12345678|
	|captcha|4B1TW|
Then I should see the following errors message:
	|You did not enter your phone number|
	|The characters you entered didn't match the image shown. Please try again.|

