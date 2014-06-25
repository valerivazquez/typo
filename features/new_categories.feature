Feature: New Categories
  As a blog administrator
  In order to management the categories of my blog
  I want to be able to Add/Edit categories of my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully go to categories page
    When  I follow "Categories"
    Then I should be on the new categories page
