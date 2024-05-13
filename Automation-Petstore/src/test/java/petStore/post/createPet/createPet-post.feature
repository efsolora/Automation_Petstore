Feature: Add a pet to the store

  Background:
    * url "https://petstore.swagger.io/v2"
    * path "/pet"
    * def var =  { id: #(petId), name: #(petName), category: { id: 1234567, name: "string" }, photoUrls: ["string"], tags: [{ id: 1234567, name: "string" }], status: #(petStatus) }

  @Create
  Scenario Outline: Add a pet
    Given request var
    When method post
    Then status 200
    And  def IdPet = $.id
    And def petStatus = $.status
    And match $.id == "#number"
    And match $.status == "#string"

    Examples:
      | petId    | petName  | petStatus |
      | 5555555  | andres   | available |
      | 7777     | cristian | pending   |
      | 10202002 | didi     | sold      |
      | 15555    | sola     | sold      |


  Scenario Outline: Add a pet with different information invalid
    Given request { id: #(petId), name: #(petName), category: { id: #(categoryId), name: "string" }, photoUrls: ["string"], tags: [{ id: #(tagId), name: "string" }], status: #(petStatus) }
    When method post
    Then status <expectedStatus>

    Examples:
      | petId    | petName     | categoryId | tagId   | petStatus     | expectedStatus |
      | 5555555  | andres      | 1234567    | 1234567 | available     | 200            |
      | -111111  | 4324423     | 1234567    | 1234567 | pending       | 500            |
      | 10202002 | jidajwi4324 | 1234567    | 1234567 | sold          | 200            |
      | 15555    | ***##*ZZ    | 1234567    | 1234567 | sold          | 200            |
      | 55554324 |             | 1234567    | 1234567 | available     | 500            |
      | 5555     | andres      |            | 1234567 | available     | 500            |
      | 5556666  | andres      | 1234567    |         | available     | 500            |
      | 5555522  | andres      | 1234567    | 1234567 | invalidStatus | 500            |
      | 5555234  | andres      | 9876543    | 1234567 | available     | 200            |



