class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:success] = 'Article created'
      redirect_to articles_path
    else
      render :action => 'new'
    end
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    #redirect_to :root
  end

  def edit
    @article = Article.find(params[:id])
  end

end
