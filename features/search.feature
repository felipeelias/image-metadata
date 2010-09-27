Feature: Searching images
  In order to spent less time finding images
  As a user
  I want find images quickly

  Background:
    Given the following images
      | image          | tag_list    |
      | little_dog.png | animal, dog |
      | big_cat.png    | animal, cat |
      | car.png        | car         |

  Scenario: Finding one image
    Given I am on the search page
    When I search for "dog"
    Then I should see images with the tag "dog"
    And I should not see images with the tag "cat"
    
  Scenario: Finding multiple images
    Given I am on the search page
    When I search for "animal"
    Then I should see images with the tag "dog"
    And I should see images with the tag "cat"
    And I should not see images with the tag "car"
