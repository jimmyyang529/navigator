class ArticlesController < ApplicationController

  before_action :authenticate_user!

  def index
    @articles = Article.all.order('created_at DESC')
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.order('created_at DESC').limit(4).offset(1)

    @response = Response.new
    @responses = @article.responses.order('created_at desc')
  end

  def destory
  end

  private

  def article_params
    params.require(:article).permit(:title, 
                                  :content, 
                                  :photo, 
                                  :writer_id)
  end

end
