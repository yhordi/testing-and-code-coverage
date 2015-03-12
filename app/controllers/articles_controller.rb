class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @article = Article.new
  end

  def new
  end

  def create
    article = Article.new
    article.title = params["article"][:title]
    article.body = params["article"][:body]
    article.save!
    redirect_to root_path
  end

private

def article_params
  params.require(:article).permit(:title, :body)
end

end