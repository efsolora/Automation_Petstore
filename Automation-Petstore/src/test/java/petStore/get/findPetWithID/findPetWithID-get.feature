Feature: Find pet with ID

  Background:
    * url "https://petstore.swagger.io/v2"

  Scenario: Successfully find pet by ID
    * call read("../../post/createPet/createPet-post.feature@Create")
    * path "/pet/"+ IdPet
    When method get
    Then status 200
    And match $.id == IdPet
    And match $.status == petStatus

  Scenario Outline: Fail find pet by ID with invalid information
    * path "/pet/"+ petId
    When method get
    Then status <status>
    Examples:
      | petId | status |
      | ffff  | 404    |
      | ***+  | 404    |
