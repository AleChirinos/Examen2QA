Feature: Project

  Scenario: create read update delete project


    Given Quiero crear un usario
    When envio POST request a la /api/user.json con el body
    """
    {
      "Email":"alechirinos6@api.com",
      "Password":"12345",
      "FullName":"Alejandra Chirinos"
    }
    """
    Then el codigo de respuesta deberia ser 200
    And el expected body deberia ser
    """
    {
        "Id": "IGNORE",
        "Email": "alechirinos6@api.com",
        "FullName": "Alejandra Chirinos",
        "TimeZone":"IGNORE",
        "IsProUser": false,
        "DefaultProjectId": "IGNORE",
        "AddItemMoreExpanded": false,
        "EditDueDateMoreExpanded":  "IGNORE",
        "ListSortType": 0,
        "FirstDayOfWeek": "IGNORE",
        "NewTaskDueDate": "IGNORE"
    }
    """
    
    And guardo el Id de la respuesta en ID_USR
    
    Given con el nuevo usuario yo uso la authenticacion basica
    
    When envio PUT request a la /api/user/0.json con el body
    """
    {
      "Email":"newAleChirinos6@api.com"
    }
    """
    Then el codigo de respuesta deberia ser 200
    
    And el atributo Email deberia ser newAleChirinos6@api.com
    
    