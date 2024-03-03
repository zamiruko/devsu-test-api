Feature: Login

  Scenario: Usuario y password correcto en login
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'validuser', password: 'validpass' }
    When method post
    Then status 200

  Scenario: Usuario y password incorrecto en login
    Given url 'https://api.demoblaze.com/login'
    And request { username: 'validuser', password: 'invalidpass' }
    When method post
    Then status 401
