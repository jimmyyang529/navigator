class PostsController < ApplicationController

  def index
  end

  def show
    @post = Post.find(params[:id])
    @posts = Post.order('created_at DESC').limit(4).offset(1)
  end

  def work_case
    @posts = Post.all.order('created_at DESC')
  end

  def signup
    render layout: false
  end


  private

  def post_params
    params.require(:post).permit(:title, :body, :image, :photo, :country_id)
  end


end
