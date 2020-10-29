class User < ApplicationRecord
	has_secure_password
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates :age, presence: true
	validates :password, presence: true, length:{minimum: 6}
	belongs_to :city
	has_many :gossips

end
