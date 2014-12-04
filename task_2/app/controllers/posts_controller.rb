class PostsController < ApplicationController
	def new
		@post = Post.new		
	end
	def create
		post = Post.create(params[:post].permit!)
		current_user.posts << post
		redirect_to(root_path)
	end
	def destroy
		post = Post.find(params[:id])
		post.destroy
		redirect_to(user_index_path)
	end
end
