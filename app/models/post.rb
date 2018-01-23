class Post < ApplicationRecord
	belongs_to :user
	belongs_to :category
	scope :published, ->{ where.not(published_at: nil)}
	scope :unpublished, ->{where(published_at: nil)}
	
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length:{minimum:5}
	validates :body, presence: true
end
