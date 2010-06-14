Feature: Add tags to images
  In order to add names to images for find them later
  As a user
  I want relate tags to images

  Scenario: Showing images with no tags
    Given the following images 
      | image          | tags       |
      | little_dog.png | animal dog |
      | big_cat.png    |            |
      | car.png        |            |
    When I go to "home page"
    Then I should see "2" images with no tags
    
