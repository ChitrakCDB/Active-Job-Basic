class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])  
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      SendNotificationsJob.set(wait: 10.seconds).perform_later(@article)
      flash[:notice] = "successfully Created Book"
      redirect_to article_path(@article)
    
    else
      flash[:errors] = @article.errors.full_messages
      redirect_to new_article_path
    end
  end

  private
  def article_params
    params.require(:article).permit(:title,:description)
  end
end
