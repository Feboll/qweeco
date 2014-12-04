class CreatePostPictures < ActiveRecord::Migration
  def change
    create_table :post_pictures do |t|
    	
    	t.boolean	:main_picture, :default => false
    	t.integer :post_id

    	t.index		:post_id
    	t.index		:main_picture

      t.timestamps
    end
  end
end
