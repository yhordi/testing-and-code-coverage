require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:blog_no_title) { Article.new(body: 'hello') }
  let(:blog_no_body) { Article.new(title: 'yep') }
  let(:blog) { Article.new(title: 'everything is great', body: "it's true")}
  # blog_no_title = Article.new(body: 'hello')
  describe 'validations' do
    context 'will raise an error ' do
      it 'when the title field is empty' do
        blog_no_title.save
        expect(blog_no_title.errors[:title]).to include("can't be blank")
      end
      it 'when the body field is empty' do
        blog_no_body.save
        expect(blog_no_body.errors[:body]).to include("can't be blank")
      end
    end
    it 'saves the article when the fields are not blank' do
      expect{blog.save}.to change{Article.count}.by(1)
    end
  end
end
