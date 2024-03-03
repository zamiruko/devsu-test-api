Feature: Signup

  Scenario: Crear un nuevo usuario
    Given url 'https://api.demoblaze.com/signup'
    And request { username: 'newuser', password: 'newpass' }
    When method post
    Then status 200

  Scenario: Intentar crear un usuario ya existente
    Given url 'https://api.demoblaze.com/signup'
    And request { username: 'newuser', password: 'newpass' }
    When method post
    Then status 401
