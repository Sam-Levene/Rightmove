class Pages::Rightmovelogin < SitePrism::Page

	def enterValidDetails
		#Input vaid data here
		iterator = "7" #Change this to repeat the test

		fill_in('email', :with => 'nodkane12+'+iterator+'@gmail.com')
		fill_in('password', :with => 'password')
		click_button('Sign in')
	end

end