Feature: Images
  In order to spent less time finding images
  As a user
  I want find images quickly

  Scenario: Findind images
    Given the following images
      | image          | tags |
      | little_dog.png | dog  |
      | big_cat.png    | cat  |
    When I go to search page
    And I search for "dog"
    Then I should see images with the tag "dog" and "little_dog.png"
    And I should not see images with the tag "cat"
    
