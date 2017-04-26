class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order('created_at DESC')
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.order('created_at DESC').limit(4).offset(1)
  end

  private

  def post_params
    params.require(:article).permit(:title, :content, :photo, :image, :writer_id)
  end

end
