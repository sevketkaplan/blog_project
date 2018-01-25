class CategoryController < ApplicationController
	def create
		@post=Post.find(params[:post_id])
		@category=@post.categories.create(params[:category].permit(:name))

	end
	
	def show
		@posts=Post.where(category_id: params[:id]).order(id: :desc)
	end

	def destroy
		@post=Post.find(params[:post_id])
		@category=@post.categories.find(params[:id])
		@category.destroy
	end
end
