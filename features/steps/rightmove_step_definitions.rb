Given("I can access the rightmove website") do
  @rightmove_website = Rightmovewebsite.new
  @rightmove_website.rightmove_homepage.load
end

Then("I can see the rightmove homepage") do
  @rightmove_website.rightmove_homepage.assertVisible
end

When("I click on the {string} link") do |string|
  @rightmove_website.rightmove_homepage.clickLink(string)
end

Then("I am directed to creating an account") do
  @rightmove_website.rightmove_create_account.assertVisible
end

Given("I am on the Create Account page") do
  @rightmove_website = Rightmovewebsite.new
  @rightmove_website.rightmove_create_account.load
  @rightmove_website.rightmove_create_account.assertVisible
end

When("I enter invalid user details") do
  @rightmove_website.rightmove_create_account.enterInvalidDetails
end

Then("I have not created an account and am not signed in") do
  
end

When("I enter valid user details") do
  @rightmove_website.rightmove_create_account.enterValidDetails
end

Then("I have created an account and am signed in") do
  @rightmove_website.my_rightmove.assertVisible
end

Given("I am logged in to Rightmove") do
  @rightmove_website = Rightmovewebsite.new
  @rightmove_website.rightmove_homepage.load
  @rightmove_website.rightmove_homepage.clickLogin
  @rightmove_website.rightmove_login.enterValidDetails
  @rightmove_website.rightmove_homepage.assertVisible
end

When("I search for a property using an invalid requirement") do
  @rightmove_website.rightmove_homepage.invalidSalesSearch
end

Then("I will not see search results") do
  
end

When("I search for a property using a valid requirement") do
  @rightmove_website.rightmove_homepage.searchSalesProperty
  @rightmove_website.rightmove_filter.filterProperty
end

Then("I will see search results") do
  @rightmove_website.rightmove_results.assertVisible
end

When("I click on the {string} link with a three day alert") do |string|
  @rightmove_website.rightmove_results.clickAlert
end

Then("I have created an alert") do
  @rightmove_website.rightmove_results.clickMyRightMove
  @rightmove_website.my_rightmove.assertAlert
end

Given("I visit the {string} link") do |string|
  @rightmove_website.rightmove_homepage.clickLink(string)
end

Then("I will see the alert I set up previously") do
  @rightmove_website.my_rightmove.assertAlert
end

Then("I am signed out") do
  @rightmove_website.rightmove_homepage.assertVisible
end

When("I search for a lettings property using an invalid requirement") do
  @rightmove_website.rightmove_homepage.invalidLettingsSearch
end

When("I search for a lettings property using a valid requirement") do
  @rightmove_website.rightmove_homepage.searchLettingsProperty
  @rightmove_website.rightmove_filter.filterLetProperty
end

Then("I will see search lettings results") do
  @rightmove_website.rightmove_results.assertLetVisible
end

When("I click on the {string} link with a seven day alert") do |string|
  @rightmove_website.rightmove_results.clickSevenAlert
end

Then("I have created a lettings alert") do
  @rightmove_website.rightmove_results.clickMyRightMove
  @rightmove_website.my_rightmove.clickLetAlerts
  @rightmove_website.my_rightmove.assertLetAlerts
end