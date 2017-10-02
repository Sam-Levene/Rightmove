class Pages::Rightmovecreateaccount < SitePrism::Page

	set_url "https://www.rightmove.co.uk/register.html"
	set_url_matcher /rightmove.co.uk\/register.html/

	def assertVisible
		if (page.has_content?("Save searches, properties and alerts with a Rightmove account.") == false)
			throw "I could not validate that we are on the Rightmove homepage"
		end
	end

	def enterInvalidDetails
		#Input invaid data here
		fill_in('title', :with => '')
		fill_in('firstName', :with => '')
		fill_in('lastName', :with => '')
		fill_in('email', :with => '')
		fill_in('password1', :with => '')
		fill_in('password2', :with => '')
		page.find(:xpath, "//*[@id=\"registration\"]/div[6]/div").click
		click_button('Create Account')
	end

	def enterValidDetails
		#Input vaid data here
		iterator = "1" #Change this to repeat the test
		
		#Change these details so that it is your own details
		fill_in('title', :with => 'Mr')
		fill_in('firstName', :with => 'Joe')
		fill_in('lastName', :with => 'Bloggs')
		fill_in('email', :with => 'joe.bloggs+'+iterator+'@gmail.com')
		fill_in('password1', :with => 'password')
		fill_in('password2', :with => 'password')
		page.find(:xpath, "//*[@id=\"registration\"]/div[6]/div").click
		click_button('Create Account')
	end
end
