qFeature: Merge Articles
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

  Scenario: Admin can successfully merge articles
    And I am logged into the admin panel
    Given I am on the article page for "Foobar"
    And show me the page
    And I fill in "merge_with" with "4"
#   then the article "Foobar" should have diferent that "4"
    And I press "Merge"
    Then the article "Foobar" should have body "valerivazquez"
#    Then the article "Foobar" should have author "Joan" 

 Scenario: Non-Admin can't merge articles
    Given I am on the article page for "Foobar"
    And show me the page
    Then I should not see the "merge_with" field
