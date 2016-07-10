Feature: Functional testing over Logon Page
As Administrator I want to review that all user, admin and supplier account are able to be logged into PHPTRAVELS page 

Background: initial state
	Given the testing page to start
    
	@tcf1
	Scenario: Successful login
	Given the "HOMEPAGE" page is selected
	When I fill the user and password values on Logon page:
		|Username|user@phptravels.com|
		|Password|demouser            |
	 And I press "Sign in" button
	Then the user should be logged as "Super Admin" in their page
	
	@tcf2
	Scenario: Successful login
	Given the "ADMINISTRATOR" page is selected
	When I fill the user and password values on Logon page:
		|Username|admin@phptravels.com|
		|Password|demoadmin           |
	 And I press "Sign in" button
	Then the user should be logged as "Super Admin" in their page
	
	@tcf3
	Scenario: Successful login
	Given the "SUPPLIER" page is selected
	When I fill the user and password values on Logon page:
		|Username|supplier@phptravels.com|
		|Password|demosupplier            |
	 And I press "Sign in" button on it
	Then the user should be logged as "Super Admin" in their page