class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id]) # busca el id del post que estamos mostrando
		@comment =@post.comments.create(params[:comment]) #crea un comentario para ese post específico y lo guarda
		redirect_to post_path(@post)
	end

	def destroy
     	@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])		
		@comment.destroy
		redirect_to post_path(@post)
  	end
end

