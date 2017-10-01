class Pages::Rightmoveresults < SitePrism::Page

	def assertVisible
		if (page.has_content?("Properties For Sale") == false)
			throw "I could not validate that we are on the Rightmove results page"
		end
	end

	def assertLetVisible
		if (page.has_content?("Properties To Rent") == false)
			throw "I could not validate that we are on the Rightmove results page"
		end
	end

	def clickAlert
		page.find(:xpath, "//*[@id=\"searchTitle\"]/div/div").click
		page.find(:xpath, "//*[@id=\"saveSearch-offsetWrapper\"]/div[2]/div[2]/div[1]/div").click
		page.find(:xpath, "//*[@id=\"saveSearch-offsetWrapper\"]/div[2]/div[2]/div[1]/ul/li[2]").click
		page.find(:xpath, "//*[@id=\"saveSearch-offsetWrapper\"]/div[2]/div[2]/a").click
	end

	def clickSevenAlert
		page.find(:xpath, "//*[@id=\"searchTitle\"]/div/div").click
		page.find(:xpath, "//*[@id=\"saveSearch-offsetWrapper\"]/div[2]/div[2]/div[1]/div").click
		page.find(:xpath, "//*[@id=\"saveSearch-offsetWrapper\"]/div[2]/div[2]/div[1]/ul/li[3]").click
		page.find(:xpath, "//*[@id=\"saveSearch-offsetWrapper\"]/div[2]/div[2]/a").click
	end

	def clickMyRightMove
		click_link("My Rightmove")
	end
end