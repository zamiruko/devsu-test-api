Feature: Signup

  Background:
    * def users = read('classpath:data/users.json')

  Scenario: Crear un nuevo usuario
    Given url 'https://api.demoblaze.com/signup'
    And header Content-Type = 'application/json'
    And request users.users[0]
    When method post
    Then status 200


  Scenario: Intentar crear un usuario ya existente
    Given url 'https://api.demoblaze.com/signup'
    And header Content-Type = 'application/json'
    And request users.users[1]
    When method post
    Then status 401