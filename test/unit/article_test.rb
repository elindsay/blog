require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  context "got an article" do
    setup { @article = Article.new(:title => 'title', :body => 'body') }

    should "be valid" do
      assert_valid @post
    end

    #should validate_presence_of :title, :body
  end
end
