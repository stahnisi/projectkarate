@COMPONENT
Feature: Order Step 4 - Recap page pass through

  Scenario: Fill in address
    Then click('span[data-testid=Checkout_Recapitulation_GdprAreements_CheckBox]')
    Then click('button[data-testid=Checkout_Recapitulation_ButtonBar_NextBtn_PrimaryBtn]')