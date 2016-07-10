Feature: Functional testing over Admin Page
This feature is going to review the functionality of the admin page reviewing that is possible create a new adming with different privileges, that is not posible to create two users with the same data
Background: 
	Given the testing page to start	
		
	@tcs1	
	Scenario Outline: add Admin
	Given the administratror is logged
	When I select "Accounts" option 
	 And I press on "Admins" link
	Then "Admins Management" should be displayed in the midle pane
	 And if user press "Add" button
	 And fill the First Name with "<First_Name>"
	 And fill the Last Name with "<Last_Name>"
	 And fill the Email with "<Email>"
	 And fill the Password with "<Password>"
	 And fill the Mobile Number with "<Mobile_Number>"
	 And select the Country equal to "<Country>"
	 And fill the Address one with "<Address_1>"
	 And fill the Address two with "<Address_2>"
	 And select the Status equal to "<Status>"
	 And check the following Add permissions:
	  |Tours|
	 And check the following Edit permissions:
	  |Tours|
	 And check the following Remove permissions:
	  |Hotels|
	 And press Submit button
	 And new Admin should be created and listed on Admins Management
	
	Examples: 
	|First_Name|Last_Name|Email|Password|Mobile_Number|Country|Address_1|Address_2|Status|
	|Pepito|Perez|pepitoperez@test.com|Control123|12345678|Bolivia|Dir1|Dir2|Enabled|
	
	@tcs2	
	Scenario Outline: add Admin
	Given the administratror is logged
	When I select "Accounts" option 
	 And I press on "Suppliers" link
	Then "Suppliers Management" should be displayed in the midle pane
	 And if user press "Add" button
	 And fill the First Name with "<First_Name>"
	 And fill the Last Name with "<Last_Name>"
	 And fill the Email with "<Email>"
	 And fill the Password with "<Password>"
	 And fill the Mobile Number with "<Mobile_Number>"
	 And select the Country equal to "<Country>"
	 And fill the Address one with "<Address_1>"
	 And fill the Address two with "<Address_2>"
	 And select the Status equal to "<Status>"
	 And check the following Add permissions:
	  |Tours|
	 And check the following Edit permissions:
	  |Tours|
	 And check the following Remove permissions:
	  |Hotels|
	 And press Submit button
	 And new Admin should be created and listed on Admins Management
	
	Examples: 
	|First_Name|Last_Name|Email|Password|Mobile_Number|Country|Address_1|Address_2|Status|
	|Juan|Perez|juanperez@test.com|Control123|12345678|Bolivia|Dir1|Dir2|Enabled|
	
		