@COMPONENT
Feature: Order Step 4 - Recap page pass through

  Scenario: Fill in address
    Then waitFor('/html/body/div[1]/div[1]/main/div/div/div[1]/div[2]/span[2]')
    Then def orderNumber = text('/html/body/div[1]/div[1]/main/div/div/div[1]/div[2]/span[2]')
    Then print orderNumber