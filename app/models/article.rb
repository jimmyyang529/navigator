class Article < ApplicationRecord

	validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PostsUploader

	belongs_to :writer

end
