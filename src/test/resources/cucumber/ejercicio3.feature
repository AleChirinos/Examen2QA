Feature: Project

  Scenario: create read update delete project


    Given yo uso la authenticacion basic
    When envio GET request a la /api/authentication/token.json con el body
    """
    """
    Then el codigo de respuesta deberia ser 200
    And el expected body deberia ser
    """
    {
        "TokenString": "IGNORE",
        "UserEmail": "alecita2702@gmail.com",
        "ExpirationTime": "IGNORE",
        
    }
    """
    
    And guardo el TokenString de la respuesta en TokenSTR
    
    When envio DELETE request a la /api/authentication/token.json con el body
    """
    """
    Then el codigo de respuesta deberia ser 200
    And el atributo UserEmail deberia ser alecita2702@gmail.com