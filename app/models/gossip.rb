class Gossip < ApplicationRecord
	belongs_to :user
	validates :title, length: { in: 3..14 }
	validates :content, presence: true

end
