require 'spec_helper'

describe CommentsController do

  context "on POST to create" do
   # let(:article) { Factory(:article) }
   # let(:comment) { Factory(:comment, :article_id => article.id) }

      before do
        @article = Factory(:article) 
        @comment = Factory(:comment, :article_id => @article.id)
        Article.stubs(:find => @article)
        @article.comments.stubs(:new => @comment)
       # Comment.stubs(:new => comment)
       # comment.stubs(:save => true)
        post :create, :article_id => @article.id, :comment => {}
      end

      it { should assign_to(:comment).with(@comment) }

    end
end
