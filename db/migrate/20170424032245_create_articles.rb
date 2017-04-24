class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
    	t.string :title
    	t.string :content
    	t.string :photo
    	t.integer :writer_id
      t.timestamps
    end
  end
end
