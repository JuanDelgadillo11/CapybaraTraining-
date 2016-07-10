Feature: UI testing over Admin Page
As Administrator I want to review that correct name is displayed when admin is logged, all the action links are listed on left menu and that links to open related pages are listed on left menu too

Background: 
	Given the testing page to start
    
	@tcui1
	Scenario: Account is displayed in Dashboard 
	Given the "ADMINISTRATOR" page is selected
	When I fill the user and password values on Logon page:
		|Username|admin@phptravels.com|
		|Password|demoadmin           |
	 And I press "Sign in" button
	Then the user should be logged as "Super Admin" in their respective page
	 And account should be displayed in Dashboard panel
			
	@tcui2
	Scenario: Action links are listed on left menu
	Given the "ADMINISTRATOR" page is selected
	When I fill the user and password values on Logon page:
		|Username|admin@phptravels.com|
		|Password|demoadmin           |
	 And I press "Sign in" button
	 Then the following options should be listed:
	  |Frontend|
	  |Accounts|
	  |General |
	  |CMS     |
	  |Tours   |
	  |Blog    |
	  |Cars    |
	  |Hotels  |
	  |Offers  |
	  |Coupons |
	
	@tcui3
	Scenario: Related pages are listed on left menu
	Given the "ADMINISTRATOR" page
	When I fill the user and password values:
		|Username|admin@phptravels.com|
		|Password|demoadmin           |
	And I press "Sign in" button
	Then the following options should be listed:
	 |Updates   |
	 |Coupons   |
	 |Locations |
	 |Newsletter|
	 |Bookings  |
	 
	@tcui4
	Scenario: Action links are listed on left menu using other way
	Given the administratror is logged
	Then the following options should be listed:
	  |Frontend|
	  |Accounts|
	  |General |
	  |CMS     |
	  |Tours   |
	  |Blog    |
	  |Cars    |
	  |Hotels  |
	  |Offers  |
	  |Coupons | 