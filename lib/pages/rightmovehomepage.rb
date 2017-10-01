class Pages::Rightmovehomepage < SitePrism::Page

	set_url "http://www.rightmove.co.uk/"
	set_url_matcher /rightmove.co.uk/

	def assertVisible
		if (page.has_content?("Search properties for sale and to rent in the UK") == false)
			throw "I could not validate that we are on the Rightmove homepage"
		end
	end

	def clickLink(string)
		page.click_link(string)
	end

	def clickLogin
		page.click_link("Sign In")
	end

	def searchSalesProperty
		fill_in('searchLocation', :with => "London")
		click_button('For sale')
	end

	def searchLettingsProperty
		fill_in('searchLocation', :with => "London")
		click_button('To rent')
	end

	def invalidSalesSearch
		fill_in('searchLocation', :with => "")
		click_button('For sale')
	end

	def invalidLettingsSearch
		fill_in('searchLocation', :with => "")
		click_button('To rent')
	end
end