module NavigationHelpers
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'
    when /the sign up page/i
      sign_up_path
    when /the sign in page/i
      sign_in_path
    when /the password reset request page/i
      new_password_path
    when /the new article page/i
      new_article_path
    when /the articles index page/i
      articles_path
    when /the "(.+)" articles page/i
      article = Article.find_by_title($1)
      article_path(article.id)

    # Add more page name => path mappings here

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
