Feature: Images
  In order to spent less time finding images
  As a user
  I want find images quickly

  Scenario: Findind images
    Given I am on the home page
    When I search for "people"
    Then I should see only images with the tag "people"
    
