class User < ApplicationRecord
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :age, presence: true
	has_many :gossips

end
