class Rightmovewebsite

	def rightmove_homepage
		Pages::Rightmovehomepage.new
	end

	def rightmove_create_account
		Pages::Rightmovecreateaccount.new
	end

	def my_rightmove
		Pages::Myrightmove.new
	end

	def rightmove_login
		Pages::Rightmovelogin.new
	end

	def rightmove_filter
		Pages::Rightmovefilter.new
	end

	def rightmove_results
		Pages::Rightmoveresults.new
	end
end