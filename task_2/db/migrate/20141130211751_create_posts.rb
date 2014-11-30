class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string			:title
    	t.text				:description
    	t.string			:country
    	t.string			:city
    	t.string			:place
    	t.string			:street
    	t.string			:house
    	t.string			:apartment
    	t.string			:area
    	t.string			:price
    	
      t.timestamps
    end
  end
end
