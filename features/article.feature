Feature: Create an article
  A user can create an article

  Scenario: User creates an article
    When I go to the new article page
    And I fill in "Title" with "My title"
    And I fill in "Body" with "Blog blog blog"
    And I press "Save"
    Then I should see "Article created"
    And I should be on the articles index page
    And I should see "My title"
