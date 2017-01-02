class CreativesController < ApplicationController
  layout "creative"

  	def index
		@posts = Post.all.order('created_at desc')
	end

	def show
		@post  = Post.find(params[:id])
		@posts = Post.order('created_at desc').limit(4).offset(0)
	end

private

	def post_params
		params.require(:post).permit(:title, :body)
	end
	
end
