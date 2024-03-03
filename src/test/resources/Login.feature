Feature: Login

  Background:
    * def users = read('classpath:data/users.json')

  Scenario: Usuario y password correcto en login
    Given url 'https://api.demoblaze.com/login'
    And header Content-Type = 'application/json'
    And request users.users[0]
    When method post
    Then status 200

  Scenario: Usuario y password incorrecto en login
    Given url 'https://api.demoblaze.com/login'
    And header Content-Type = 'application/json'
    And request users.users[1]
    When method post
    Then status 401
