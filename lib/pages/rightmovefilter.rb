class Pages::Rightmovefilter < SitePrism::Page

	def filterProperty
		select('Within 15 miles', :from => 'radius')
		select('250,000', :from => 'maxPrice')
		click_button('Find properties')
	end

	def filterLetProperty
		select('Within 15 miles', :from => 'radius')
		select('1,000 PCM', :from => 'maxPrice')
		click_button('Find properties')
	end

end