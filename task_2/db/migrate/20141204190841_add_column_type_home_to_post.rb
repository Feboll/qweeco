class AddColumnTypeHomeToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :type_home, :string
  end
end
