Feature: Navigation testing over Documentation Page
The goal of this testing is review that all the links are listed on documentation page, at the same way review that text information is displayed in middle pane
	Background: Open the page.
	Given I open the testing page
	
	@tcn1
	Scenario: test navigation 
	When I press the option "DOCS" in the top menu

	@tcn2
	Scenario: DOCS validation
	When I press the option "DOCS" in the top menu
	Then the following value should be displayed at the begining:
	|Documentation|
	
	@tcn3
	Scenario: DOCS validation
	When I press the option "DOCS" in the top menu
	Then the following values should be displayed in left menu:
	|Home|
	|Getting Started|