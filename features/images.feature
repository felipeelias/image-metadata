Feature: Add tags to images
  In order to add names to images for find them later
  As a user
  I want relate tags to images

  Background:
    Given the following images
      | image          | tag_list    |
      | little_dog.png | animal, dog |

  Scenario: Showing edit page
    Given I am on the images page
    When I follow "little_dog.png"
    Then I should see "little_dog.png"
    And the "image_tag_list" field should contain "animal, dog"

  Scenario: Editing an image
    Given I am on the images page
    When I follow "little_dog.png"
    And I fill in "image_tag_list" with "crazy, animal, dog"
    And I press "Save changes"
    Then the "little_dog.png" image should have tags "animal, dog, crazy"
  
  @javascript
  Scenario: Adding tags with edit in place
    Given I am on the images page
    When I edit tags from "animal, dog" to "animal, dog, crazy"
    And I should see "animal, dog, crazy" within "span.tags"
    
