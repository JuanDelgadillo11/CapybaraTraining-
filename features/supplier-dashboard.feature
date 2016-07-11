# Author: Ariel Mattos
Feature: Supplier dashboard

@tcn
Scenario: The supplier dashboard should be displayed when the supplier logs in to the application
	Given that my user account is member of the Suppliers role
	When I log in to the application as a Supplier
	Then the /supplier page is displayed

@tcuie
Scenario: The supplier full name should be displayed in his dashboard page
	Given that my user account is member of the Suppliers role
	When I log in to the application as a Supplier
	Then my full name is displayed in the left navigation bar

@tcui
Scenario: A search bar should be displayed in the supplier dashboard page
 	Given that my user account is member of the Suppliers role
 	When I log in to the application as a Supplier
	Then a search bar with the placeholder text "Search" is displayed in the left navigation bar

@tcf
Scenario Outline: A menu option for a service should be displayed in the left navigation bar when rights to manage the service are granted to the supplier
	Given that I am a <Service> supplier who has rights to <Permission> such services
	When I log in to the application as a Supplier
	Then the menu "<Option>" option is displayed in the left navigation bar

	Examples: Permissions for Tours services
		|Service|Permission|Option|
		|Tours  |Add       |Tours |
		|Tours  |Edit      |Tours |
		|Tours  |Remove    |Tours |

	Examples: Permissions for Cars services
		|Service|Permission|Option|
		|Cars   |Add       |Cars  |
		|Cars   |Edit      |Cars  |
		|Cars   |Remove    |Cars  |

	Examples: Permissions for Hotels services
		|Service|Permission|Option|
		|Hotels |Add       |Hotels|
		|Hotels |Edit      |Hotels|
		|Hotels |Remove    |Hotels|

@tcf
Scenario Outline: Tours menu option should be displayed when the collapsible menu option "Tours" is expanded
	Given that I am a <Service> supplier
	And I log in to the application as a Supplier
	When I expand the menu option "<Menu>"
	Then the submenu option "<Submenu>" is displayed in the left navigation bar

	Examples: Options for Tours services
		|Service|Menu |Submenu|
		|Tours  |Tours|Tours  |
 		|Tours  |Tours|Extras |

	Examples: Options for Cars services
		|Service|Menu |Submenu|
		|Cars   |Cars | Cars  |
		|Cars   |Cars |Extras |

	Examples: Options for Hotels services
		|Service|Menu  |Submenu      |
		|Hotels |Hotels|Manage Hotels|
		|Hotels |Hotels|Add Room     |
		|Hotels |Hotels|Manage Rooms |
		|Hotels |Hotels|Extras       |

@tcui
Scenario Outline: User related options should be displayed in the dropdown menu of the application bar
 	Given that my user account is member of the Suppliers role
 	And I log in to the application as a Supplier
	When I select the action overflow menu in the application bar
	Then the "<Option>" option is displayed

	Examples: Options for a supplier in the action overflow menu
		|Option    |
		|My Profile|
		|Log Out   |
		|Help      |	

@tcf
Scenario Outline: Options in the action overflow menu of the application bar
 	Given that my user account is member of the Suppliers role
 	And I log in to the application as a Supplier
	And I select the action overflow menu in the application bar
	When I select the option "<Option>" in the action overflow menu
	Then the <Page> page is displayed

	Examples:
		|Option    |Page               |
		|My Profile|/supplier/profile/ |
		|Log Out   |/supplier          |
