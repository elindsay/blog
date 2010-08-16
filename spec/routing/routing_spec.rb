require 'spec/spec_helper'

describe "routing to articles" do
  it "routes /articles to articles#index" do
    { :get => "/"}.should route_to(:controller => "articles",
                                           :action => "index")
  end
  it "routes /articles/new to articles#new" do
    { :get => "articles/new" }.should route_to(:controller => "articles",
                                               :action => "new")
  end
  it "routes /articles/create to articles#create" do
    { :post => "/articles" }.should route_to(:controller => "articles",
                                             :action => "create")
  end
  it "routes /articles/abc/show to articles#show" do
    { :get => "/articles/abc" }.should route_to(:controller => "articles",
                                                :action => "show",
                                                :id => "abc")
  end
end

describe "routing to comments" do
  it "routes /articles/abc/comments/new to comments#new" do
    { :get => "/articles/abc/comments/new" }.should route_to(:controller => "comments",
                                                             :action => "new",
                                                             :article_id => "abc")
  end
end
