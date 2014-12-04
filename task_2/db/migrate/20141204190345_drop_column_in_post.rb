class DropColumnInPost < ActiveRecord::Migration
  def change
  	remove_column :posts, :title
  end
end
