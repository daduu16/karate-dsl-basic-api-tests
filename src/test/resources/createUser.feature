Feature: Create User With List - Petstore

  Background:
    * url baseUrl
    * header Content-Type = 'application/json'
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  Scenario Outline: Create multiple users

    Given path 'user/createWithList'
    And request
    """
    [
      {
        "id": <id>,
        "username": "<username>",
        "firstName": "<firstName>",
        "lastName": "<lastName>",
        "email": "<email>",
        "password": "<password>",
        "phone": "<phone>",
        "userStatus": 1
      }
    ]
    """
    When method POST
    Then status 200

    Examples:
      | id | username | firstName | lastName | email        | password | phone      |
      | 2  | Bekir16  | test      | user     | qa1@test.com | 123456   | 1111111111 |
      | 3  | Kamran1  | demo      | user     | qa2@test.com | 123456   | 2222222222 |





