class Article < ActiveRecord::Base
  validates :title, :body, presence: true
end
