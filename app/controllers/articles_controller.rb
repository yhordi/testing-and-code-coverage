class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @article = Article.new
  end

  def new
  end

  def create
  end

end