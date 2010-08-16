require 'spec_helper'

describe ArticlesController do

  context "on GET to index" do
    let(:articles) { [ Factory(:article), Factory(:article) ] }

    before do
      Article.stubs(:all => articles)
      get :index
    end

    it "should call all on Aricle" do
      Article.should have_received(:all)
    end
    it { should respond_with(:success) }
    it { should assign_to(:articles).with(articles) }
    it { should render_template(:index) }

  end

  context "on GET to new" do
    let (:article) { Factory.build(:article) }

    before do
      Article.stubs(:new => article)
      get :new
    end

    it "should call new on Article" do
      Article.should have_received(:new)
    end
    it { should respond_with(:success) }
    it { should assign_to(:article).with(article) }
    it { should render_template(:new) }
  end

  context "on valid POST to create" do
    let (:article_attributes) do
        { :title => "example title", :body => "example body" }
    end
    let (:article) { Factory(:article, article_attributes) }

    before do
      Article.stubs(:new => article)
      article.stubs(:save => true)
      post :create, :article => article_attributes
    end

    it "should call new on Article" do
      Article.should have_received(:new)
    end
    it { should assign_to(:article).with(article) }
    it "should have saved the article" do
      article.should have_received(:save)
    end
    it { should set_the_flash.to(/Article created/i) }
    it { should redirect_to(articles_path) }
  end

  context "on valid POST to create" do
    let (:article_attributes) do
       { :title => "example title", :body => "example body" }
    end
    let (:article) { Factory(:article, article_attributes) }

    before do
      Article.stubs(:new => article)
      article.stubs(:save => false)
      post :create, :id => article.id, :article => article_attributes
    end

    it "should call new on Article" do
      Article.should have_received(:new)
    end
    it { should assign_to(:article).with(article) }
    it "should have saved the article" do
      article.should have_received(:save)
    end
    it { should_not set_the_flash }
    it { should render_template(:new) }
  end

  context "on GET to show" do
    let(:article) { Factory(:article) }

    before do
      Article.stubs(:find => article)
      get :show, :id => article.id
    end

    it "should call all on Aricle" do
      Article.should have_received(:find)
    end
    it { should respond_with(:success) }
    it { should assign_to(:article).with(article) }
    it { should render_template(:show) }

  end
end
