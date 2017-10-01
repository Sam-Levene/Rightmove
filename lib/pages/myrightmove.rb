class Pages::Myrightmove < SitePrism::Page

	def assertVisible
		if (page.has_content?("My Details") == false)
			throw "Page was not visible or could not be asserted"
		end
	end

	def clickLetAlerts
		page.find(:xpath, "//*[@id=\"mrTabLETTING\"]/div/a").click
	end

	def assertAlert
		if (page.has_content?("every 3 days") == false)
			throw "Page was not visible or could not be asserted"
		end
	end

	def assertLetAlerts
		if (page.has_content?("every 7 days") == false)
			throw "Page was not visible or could not be asserted"
		end
	end

end