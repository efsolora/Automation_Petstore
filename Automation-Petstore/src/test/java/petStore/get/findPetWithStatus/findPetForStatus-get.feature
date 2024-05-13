Feature: Find pet with Status

  Background:
    * url "https://petstore.swagger.io/v2"
    *  call read("../../put/updateNameAndStatus/updatenameandstatus-put.feature@Update")
    *  call read("../../post/createPet/createPet-post.feature@Create")
    * path "/pet/findByStatus"


  Scenario: Find pet
    * params {"status": #(petStatus)}
    When method get
    Then status 200
    And match $[*].status contains petStatus
    And match $[*].id contains IdPet

  Scenario Outline: Find pets by status
    * def specificStatus = "<statusPet>"
    * params {"status": #(specificStatus)}
    When method get
    Then status <status>
    And match $[*].status contains specificStatus

    Examples:
      | statusPet | status |
      | available | 200    |
      | pending   | 200    |
      | sold      | 200    |
      | invalid   | 500    |