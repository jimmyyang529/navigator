class AddColumnPhotoToPosts < ActiveRecord::Migration[5.0]
  def change

  	add_column :posts, :photo, :string

  end
end
