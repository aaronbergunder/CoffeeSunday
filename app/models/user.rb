class User < ActiveRecord::Base

	def gravatar_url
		stripped_email = email.strip
		downcase_email = stripped_email.downcase
		hash = Digest::MD5.hexdigest(downcase_email)
		"http://gravatar.com/avatar/#{hash}?s=60&d=identicon"	
	end

end
