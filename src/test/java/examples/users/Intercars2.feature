@smoke
Feature: sample Intercars test script


  Scenario: put some item to basket
    Given driver 'https://storefront-cz-v1-sit.cze.nonprod.ic.oxuscloud.com/cz/eshop/'
    Then waitFor('a[data-testid=ShoppingRoute_ShoppingLayout_Menu_MenuItem_Link]').click()
    Then waitFor('{^span}Koupit').click()
    Then waitForText('/html/body/div[1]/div/div[2]/div/div/div/div[2]/a/div[1]', '1').click()
    Then click('/html/body/div[1]/div/div[2]/div/div/div/div[2]/a/div[1]')
    Then waitFor('button[data-testid=Checkout_BasketOverviewWithQuote_BasketOverview_ButtonBar_NextBtn_PrimaryBtn]').click()
    Then waitFor('span[data-testid=Checkout_DeliveryPaymentSelection_DeliverySelection_AvailableDeliveries_DeliveryMethods_2_DeliveryGroup_DeliveryItem_DeliveryRow_CheckBox]').click()
    Then waitFor('span[data-testid=Checkout_DeliveryPaymentSelection_PaymentSection_0_PaymentRow_CheckBox]').click()
    Then waitFor('span[data-testid=Checkout_DeliveryPaymentSelection_PaymentSection_0_PaymentRow_CheckBox]').click()
    Then waitFor('button[data-testid=Checkout_DeliveryPaymentSelection_ButtonBar_NextBtn_PrimaryBtn]').click()
    Then input('input[data-testid=Checkout_UserDataSelection_EmailRow_Input]', 'testtest@testklkl.cc')
    Then input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Phone]', '+420111222333')
    Then click('/html/body/div[1]/div[1]/main/div/div/div[1]/section[1]/form/div[3]/div/div[1]/div[1]/span/div')
    Then click('li[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Salutation_FormSelectInput_0_SelectItem_Item]')
    Then input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Firstname]', 'TEST')
    Then input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Lastname]', 'TEST')
    Then click('/html/body/div[1]/div[1]/main/div/div/div[1]/section[1]/form/div[6]/div/div/input')
   # Then click('li[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Country_FormSelectInput_5_SelectItem_Item]')
    Then input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Street]', 'street')
    Then input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_StreetNumber]', '11')
    Then input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_City]', 'city')
    Then input('input[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Zip]', '00000')
    Then click('div[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Switch]')
    Then click('div[data-testid=Checkout_UserDataSelection_UserForm_UserForm_Switch]')
    Then click('span[data-testid=Checkout_UserDataSelection_MarketingConsent_marketing_CheckBox]')
    Then click('span[data-testid=Checkout_UserDataSelection_MarketingConsent_heureka_CheckBox]')
    Then click('button[data-testid=Checkout_UserDataSelection_ButtonBar_NextBtn_PrimaryBtn]')
    Then click('span[data-testid=Checkout_Recapitulation_GdprAreements_CheckBox]')
    Then click('button[data-testid=Checkout_Recapitulation_ButtonBar_NextBtn_PrimaryBtn]')
    Then waitFor('/html/body/div[1]/div[1]/main/div/div/div[1]/div[2]/span[2]')
    Then def orderNumber = text('/html/body/div[1]/div[1]/main/div/div/div[1]/div[2]/span[2]')
    Then print orderNumber