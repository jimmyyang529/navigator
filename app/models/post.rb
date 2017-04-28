class Post < ApplicationRecord
	
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PostsUploader

  # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  

end
