Feature: Add a pet to the store

  Background:
    * url 'https://petstore.swagger.io/v2'
    * path '/pet'
    * request {"id": #(id),"name": #(name),"status": "#(status)"}

  Scenario Outline: Add a pet
    When method post
    Then status #(status2)
    And match $
    Examples:
      | id | name | status |status2 |
      | id | name | status |        |
      | id | name | status |        |
      | id | name | status |        |
      | id | name | status |        |
      | id | name | status |        |
