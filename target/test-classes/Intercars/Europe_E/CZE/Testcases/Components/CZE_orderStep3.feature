@COMPONENT
Feature: Order Step 3 - Fill in address, set marketing consent, go to Step 4

  Scenario: Fill in address
    Then waitFor('input[data-testid=Checkout_UserDataSelection_EmailRow_Input]')
    Then karate.listen(2000)
    Then input('input[data-testid=Checkout_UserDataSelection_EmailRow_Input]', 'test@hjgjghklkl.cc')
    Then karate.listen(2000)
    Then input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Phone]', '+420111222333')
    Then click('/html/body/div[1]/div[1]/main/div/div/div[1]/section[1]/form/div[3]/div/div[1]/div[1]/span/div')
    Then click('li[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Salutation_FormSelectInput_0_SelectItem_Item]')
    And input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Firstname]', 'TEST')
    And input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Lastname]', 'TEST')
    Then click('/html/body/div[1]/div[1]/main/div/div/div[1]/section[1]/form/div[6]/div/div/input')
    Then input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Street]', 'street')
    And input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_StreetNumber]', '11')
    And input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_City]', 'city')
    And input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Zip]', '00000')

  Scenario: Set marketing consent
    Then click('span[data-testid=Checkout_UserDataSelection_MarketingConsent_marketing_CheckBox]')
    Then click('span[data-testid=Checkout_UserDataSelection_MarketingConsent_heureka_CheckBox]')

  Scenario: Go to Step 4
    Then click('button[data-testid=Checkout_UserDataSelection_ButtonBar_NextBtn_PrimaryBtn]')