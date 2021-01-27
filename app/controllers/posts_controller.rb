class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
    @post = Post.new
  end

  def create
    Post.create(post_params)
    @posts = Post.all.order("created_at DESC")
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    @posts = Post.all.order("created_at DESC")
    respond_to do |format|
      format.js
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body).merge(user_id: current_user.id)
  end
end