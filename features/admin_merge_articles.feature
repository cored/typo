Feature: Merge articles
  As a blog administrator
  In order two mix multiple bloggers content
  I want to be able to merge articles

  Background: 
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Foobar"
    And I press "Publish"
    Then I should be on the admin content page
    When I am on the new article page
    And I fill in "article_title" with "Foobar1"
    And I fill in "article__body_and_extended_editor" with "Foobar1"
    And I press "Publish"
    Then I should be on the admin content page
    When I follow "Log out"
    Then I should see "Successfully logged out"

  Scenario: Non admin can't see merge articles form
    Given I log in as non_admin
    When I follow "All Articles"
    And I follow "Foobar"
    Then I should not see "Merge Articles"
    When I follow "Log out" 
    Then I should see "Successfully logged out"

  Scenario: Admin can see merge articles form 
    Given I am logged into the admin panel
    When I follow "All Articles" 
    And I follow "Foobar"
    Then I should see "Merge Articles"

  Scenario: Admin can merge two articles
    Given I am logged into the admin panel 
    When I follow "All Articles"
    And I follow "Foobar"
    And I fill in "merge_with" with "4"
    And I press "Merge With This Article"
    Then I should see "Successfully merge articles"
    When I follow "Foobar Foobar1"
    Then I should see "Foobar Foobar1"

    

