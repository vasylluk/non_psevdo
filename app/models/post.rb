class Post < ApplicationRecord
	validates :title, length: { in: 1..8 }
	validates :body, length: { in: 10..500 }
	validates :title, uniqueness: true
	validates :title, presence: true
	belongs_to :user
end
