Feature: Searching images
  In order to spent less time finding images
  As a user
  I want find images quickly

  Scenario: Finding one image
    Given the following images
      | image          | tag_list |
      | little_dog.png | dog      |
      | big_cat.png    | cat      |
    When I go to search page
    And I search for "dog"
    Then I should see images with the tag "dog"
    And I should not see images with the tag "cat"
    
  Scenario: Finding multiple images
    Given the following images
      | image          | tag_list    |
      | little_dog.png | animal, dog |
      | big_cat.png    | animal, cat |
      | car.png        | car         |
    When I go to search page
    And I search for "animal"
    Then I should see images with the tag "dog"
    Then I should see images with the tag "cat"
    And I should not see images with the tag "car"
