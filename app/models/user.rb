class User < ApplicationRecord
	has_many :post
	validates :name, presence: true
	before_create->{self.token = generate_token}
	private 
	def generate_token
		loop do
			token = SecureRamdom.hex
			return token unless User.exist?({token:token})
		end
	end
	end

