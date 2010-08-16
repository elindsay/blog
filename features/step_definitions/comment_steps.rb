Given /^an article exists with the title "([^\"]*)"$/ do |title|
  Factory(:article, :title => title)
end

Given /^the "([^\"]*)" article has a "([^\"]*)" comment$/ do |article_title, comment_text|
  article = Article.find_by_title(article_title)
  Factory(:comment, :article_id => article.id, :body => comment_text)
end
