@SMOKE @CZE @SIT @UAT @REF
Feature: Order with Courier and COD

  Scenario: Complete order; Item: Tire; Delivery method: Courier; Payment method: COD
    # Go to homepage
    Given driver urlEshopHomepage
    Then input('body', Key.ESCAPE)
    # Add "Tire" to basket
    Then call read('Components/CZE_addTireToCart.feature')
    # Go to Delivery method and Payment method selection (go to Step 2)
    Then waitFor('button[data-testid=Checkout_BasketOverviewWithQuote_BasketOverview_ButtonBar_NextBtn_PrimaryBtn]').click()
    # Select Delivery method - Courier
    Then waitFor('span[data-testid=Checkout_DeliveryPaymentSelection_DeliverySelection_AvailableDeliveries_DeliveryMethods_2_DeliveryGroup_DeliveryItem_DeliveryRow_CheckBox]').click()
    # Select Payment method - COD
    Then waitFor('span[data-testid=Checkout_DeliveryPaymentSelection_PaymentSection_0_PaymentRow_CheckBox]').click()
    Then waitFor('span[data-testid=Checkout_DeliveryPaymentSelection_PaymentSection_0_PaymentRow_CheckBox]').click()
    # Go to Step 3
    Then waitFor('button[data-testid=Checkout_DeliveryPaymentSelection_ButtonBar_NextBtn_PrimaryBtn]').click()
    # Insert and confirm user information data (Step 3)
    Then call read('Components/CZE_orderStep3.feature')
    # Pass Recap page (Step 4)
    Then call read('Components/CZE_orderStep4.feature')
    # Check Thank you page
    Then call read('Components/CZE_orderThankYou.feature')