class Article < ActiveRecord::Base

  def index
    @articles = articles.all
  end

end
