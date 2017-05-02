class Writer < ApplicationRecord

	validates :name, presence: true, length: { minimum: 1 }
  validates :Introduction, presence: true
  validates :experience, presence: true
  validates :photo, presence: true



	mount_uploader :photo, PostsUploader

	has_many :articles

end
