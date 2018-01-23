class CategoryController < ApplicationController
	def create
		@post=Post.find(params[:post_id])
		@category=@post.categories.create(params[:category].permit(:name))

	end
	def destroy
		@post=Post.find(params[:post_id])
		@category=@post.categories.find(params[:id])
		@category.destroy

	end
end
