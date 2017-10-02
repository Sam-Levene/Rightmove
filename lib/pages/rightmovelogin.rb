class Pages::Rightmovelogin < SitePrism::Page

	def enterValidDetails
		#Input vaid data here
		iterator = "1" #Change this to repeat the test
		
		fill_in('email', :with => 'joe.bloggs+'+iterator+'@gmail.com')
		fill_in('password', :with => 'password')
		click_button('Sign in')
	end

end
