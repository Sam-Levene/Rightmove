Feature: Rightmove Examples for Test

	There is a new button that has been added to Rightmove's Property Search results page with the text 'Create an alert for <location>'.
	When this button is clicked on, a property alert will be set up for the user if signed in.
	The saved property alert is visible in the users 'My Rightmove' page called 'Alerts & Searches'- this page is also new.

	
	@Scenario_01 @Passing
	Scenario: I want to access the webpage
		Given I can access the rightmove website
		Then I can see the rightmove homepage
		
	@Scenario_02 @Failing
	Scenario: I want to create an account
		Given I can access the rightmove website
		When I click on the "Create Account" link
		Then I am directed to creating an account

	@Scenario_03 @Passing
	Scenario: I want to create an account
		Given I can access the rightmove website
		When I click on the "Sign In" link
		And I click on the "Create Account" link
		Then I am directed to creating an account

	@Scenario_04 @Failing
	Scenario: Creating an account unsuccessfully
		Given I am on the Create Account page
		When I enter invalid user details
		Then I have not created an account and am not signed in

	@Scenario_05 @Passing
	Scenario: Creating an account successfully
		Given I am on the Create Account page
		When I enter valid user details
		Then I have created an account and am signed in

	@Scenario_06 @Failing
	Scenario: I want to do a sales property search
		Given I am logged in to Rightmove
		And I can access the rightmove website
		When I search for a property using an invalid requirement
		Then I will not see search results

	@Scenario_07 @Passing
	Scenario: I want to do a sales property search properly
		Given I am logged in to Rightmove
		And I can access the rightmove website
		When I search for a property using a valid requirement
		Then I will see search results

	@Scenario_08 @Passing
	Scenario: Creating an alert for the location searched
		Given I am logged in to Rightmove
		And I can access the rightmove website
		When I search for a property using a valid requirement
		And I click on the "Create Alert" link with a three day alert
		Then I have created an alert

	@Scenario_09 @Passing
	Scenario: Verifying the alert
		Given I am logged in to Rightmove
		And I visit the "My Rightmove" link
		When I click on the "Alerts & Searches" link
		Then I will see the alert I set up previously

	@Scenario_10 @Passing
	Scenario: Logging Out
		Given I am logged in to Rightmove
		And I visit the "My Rightmove" link
		When I click on the "Sign out" link
		Then I am signed out

	@Scenario_11 @Failing
	Scenario: I want to do a lettings property search
		Given I am logged in to Rightmove
		And I can access the rightmove website
		When I search for a lettings property using an invalid requirement
		Then I will not see search results

	@Scenario_12 @Passing
	Scenario: I want to do a lettings property search properly
		Given I am logged in to Rightmove
		And I can access the rightmove website
		When I search for a lettings property using a valid requirement
		Then I will see search lettings results

	@Scenario_13 @Passing
	Scenario: Creating an alert for the location searched
		Given I am logged in to Rightmove
		And I can access the rightmove website
		When I search for a lettings property using a valid requirement
		And I click on the "Create Alert" link with a seven day alert
		Then I have created a lettings alert