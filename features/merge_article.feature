Feature: Merge Articles
  As a blog administrator
  In order to avoid multiple similar articles
  I want to be able to merge two articles


  Background:
    Given the blog is set up
    And the following articles exist
    | title    | body	| id | author   |	
    | Foobar   | valeri | 3  | Joan     |
    | Foobar2  | vazquez| 4  | Pedro    |
    | Tool1    | body1  | 5  | Jose     |
    | Tool2    | body2  | 6  | Maria    |
    And the following comments exist
    | title            | body             | author   | id | article_id |
    | Tool1-Com1-title | Tool1-Com1-Body  | Tool1    | 2  | 5          |
    | Tool2-Com1-title | Tool2-Com1-Body  | Tool2    | 3  | 6          |


  Scenario: Admin can successfully merge articles
    And I am logged into the admin panel
    Given I am on the article page for "Tool1"
    And show me the page
    And I fill in "merge_with" with "6"
    And I press "Merge"
    Then the article "Tool2" should have body "body1 body2"
    Then the article "Tool2" should have author "Maria"
    Then the article "Tool2" should have title "Tool2"

  Scenario: Admin can successfully merge articles with comments
    And I am logged into the admin panel
    Given I am on the article page for "Tool1"
    And show me the page
    And I fill in "merge_with" with "6"
    And I press "Merge"
    Then the article "Tool2" should have comment with body "Tool2-Com1-Body"

 Scenario: Non-Admin can't merge articles
    Given I am on the article page for "Foobar"
    And show me the page
    Then I should not see the "merge_with" field
