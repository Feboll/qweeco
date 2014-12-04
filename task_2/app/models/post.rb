class Post < ActiveRecord::Base
	has_many		:post_pictures
	belongs_to  :user
end
