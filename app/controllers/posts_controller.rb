class PostsController < ApplicationController
	def index
		@posts=Post.all
	end

	def show
		@post=Post.find(params[:id])
	end

	def new
		@post1=Post.new
	end

	def create
		@post=Post.new(params.require(:post).permit(:title, :content))
		if @post.save
			redirect_to posts_path,:notice=>"Sucessful created!"
		else
			render"new"
		end
	end

	def edit
		@post=Post.find(params[:id])
	end

	def update
		#@post=Post.update(params.require(:post).permit(:title, :content))
		@post=Post.find(params[:id])
		if @post.update(params.require(:post).permit(:title, :content))
			redirect_to posts_path,:notice=>"Sucessful created!"
		else
			render"edit"
		end
	end

	def destroy
		@post=Post.find(params[:id])
		@post.destroy
		redirect_to posts_path,:notice=>"Sucessful created!"
	end

end
