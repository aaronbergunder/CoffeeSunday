module UsersHelper

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
	
		if today > @@last_sunday
			@@last_sunday = next_sunday
			resetUsers
		end
	end

end
end
