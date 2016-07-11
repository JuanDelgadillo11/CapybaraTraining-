#Scarlen Quinsamolle
@home_page
Feature: Verify Home Page
	
Background: Open Register Page
	Given I open the testing page
	When I click on "http://www.phptravels.net" button in main page
		Then I see "Featured Hotels" title in home page
		
Scenario: Verify Register page components
When I click on "Sign Up" option in home page
Then I should see "Sign Up" title in register page
	And I should see the following fields:
	|First Name|
	|Last Name|
	|Mobile Number|
	|Email|
	|Password|
	|Confirm Password|

Scenario: Fill in Register form
When I click on "Sign Up" option in home page
Then I should see "Sign Up" title in register page

When all fields are empty in register form
Then I should see the following messages:
|The Email is required|
|The Password field is required|
|The First name field is required|
|The Last Name field is required|

When I fill in the form:
	|first_name|Scarlen|
	|last_name||
	|mobile_number||
	|email||
	|password||
	|confirm_password||

Then I should see the following messages:
|The Email is required|
|The Password field is required|
|The Last Name field is required|

When I fill in the form:
	|first_name|Scarlen|
	|last_name|Quinsamolle|
	|mobile_number|12345678|
	|email||
	|password||
	|confirm_password||

Then I should see the following messages:
|The Email is required|
|The Password field is required|

When I fill in the form:
	|first_name|Scarlen|
	|last_name|Quinsamolle|
	|mobile_number|12345678|
	|email|s|
	|password||
	|confirm_password||

Then I should see the following messages:
|The Email field must contain a valid email address|
|The Password field is required|

When I fill in the form:
	|first_name|Scarlen|
	|last_name|Quinsamolle|
	|mobile_number|12345678|
	|email|scarlen@gmail.com|
	|password||
	|confirm_password||

Then I should see the following messages:
|The Password field is required|

When I fill in the form:
	|first_name|Scarlen|
	|last_name|Quinsamolle|
	|mobile_number|12345678|
	|email|scarlen@gmail.com|
	|password|admin123|
	|confirm_password||

Then I should see the following messages:
|Password not matching with confirm password|



