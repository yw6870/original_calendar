class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    Post.create(post_params)
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :index
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_to do |format|
      format.js
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body).merge(user_id: current_user.id)
  end
end