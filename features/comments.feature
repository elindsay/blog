Feature: Add Comments

  Scenario: Adding a comment
    Given an article exists with the title "Title"
    And the "Title" article has a "comment example" comment
    When I am on the "Title" articles page
    And I fill in "Leave Comment" with "I agree!"
    And I press "Comment"
    Then I should see "comment created"
    And I should see "I agree!"
