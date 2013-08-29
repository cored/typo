Feature: Manage categories for admin
  As a blog administrator
  In order to manage categories 
  I want to be able to see the categories form in admin dashboard

  Background:
    Given the blog is set up 
    And I am logged into the admin panel

  Scenario: Admin can see the categories form
    When I follow "Categories"
    Then I should see "Categories"

  Scenario: Admin can create new categories
    When I follow "Categories"
    And I fill in "category_name" with "Foobar"
    And I press "Save"
    Then I should see "Category was successfully saved."

  Scenario: Admin can edit categories
    Given I have a category "Foobar"
    When I follow "Categories"
    Then I should see "Foobar"
    When I follow "Edit"
    And fill in "category_name" with "Barfoo"
    And I press "Save"
    Then I should see "Category was successfully saved."

