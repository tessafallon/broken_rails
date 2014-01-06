class PostsController < ApplicationController

	def index
		@posts = Posts.all
		# gives intance variable of all posts
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.find(params[:post])
		if @post.save
			redirect_to @post
		end
			render new
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
	end
	
end