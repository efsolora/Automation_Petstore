Feature: Update name and status pet

  Background:
    * url "https://petstore.swagger.io/v2"
    *  call read("../../post/createPet/createPet-post.feature@Create")

  @Update
  Scenario: Update name and Status
    * def var =  { "id": #(IdPet), "name": "Efrain", "category": { "id": 1234567, "name": "string" }, "photoUrls": ["string"], "tags": [{ "id": 1234567, "name": "string" }], "status": "sold" }
    * path "/pet"
    Given request var
    When method put
    Then status 200
    And def petStatus = $.status
    And def response = response
    And match $.name == "Efrain"
    And match $.status == "sold"

  Scenario Outline: Update pet with different scenarios
    * def var = { "id": #(Id), "name": #(petName), "status": #(petStatus) }
    * path "/pet"
    Given request var
    When method put
    Then status <expectedStatus>

    Examples:
      | Id                                | petName     | petStatus | expectedStatus |
      | 123456789012345678901234567890123 |             | avaliable | 500            |
      | 1234567890123456789012345         | Efrain      | pending   | 500            |
      | 5555555                           | NuevoNombre | sold      | 200            |
      | yuiyuiyiu                         | efrain      | sold      | 500            |
      |                                   | 789789      | available | 500            |
      | -111111                           | efrain      | 343242    | 200            |
