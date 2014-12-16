module ApplicationHelper

	@@last_sunday

	def resetUsers
		User.find_each do |u|
  		u.comment = ""
  		u.attending = 0
  		u.save
  	end

  	def dateCheck
		today = Time.now
		next_sunday = Time.now.end_of_week
	
		puts today
		puts next_sunday
		puts @@last_sunday

		if today > @@last_sunday
			@@last_sunday = next_sunday
			resetUsers
		end
	end

	helper_method :dateCheck
	helper_method :resetUsers

end

end
