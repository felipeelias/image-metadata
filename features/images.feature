Feature: Add tags to images
  In order to add names to images for find them later
  As a user
  I want relate tags to images

  Background:
    Given the following images
      | image          | tags       |
      | little_dog.png | animal dog |
      | big_cat.png    |            |
      | car.png        |            |

  Scenario: Showing edit page
    Given I am on the images page
    When I follow "little_dog.png"
    Then I should see "little_dog.png"
    And the "image_tag_names" field should contain "animal dog"
