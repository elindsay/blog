class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    @comment = article.comments.new(params[:comment])

   # comment_attributes = params[:comment].merge(:article_id => params[:article_id])
   # @comment = Comment.new(comment_attributes)

    if @comment.save
      flash[:success] = "comment created"
    end
    redirect_to article_path(params[:article_id])
    #redirect_to :back
  end
end
