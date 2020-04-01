@COMPONENT
Feature: Add tire to shopping cart

  Scenario: Fill in address
    # Close cookies bar
    Then waitFor('/html/body/div[1]/div[2]/div[2]/button').click()
    # Click on "Tires"
    Then waitFor('a[data-testid=ShoppingRoute_ShoppingLayout_Menu_MenuItem_Link]').click()
    # Click on "Buy" button
    Then waitFor('{^span}Koupit').click()
    # Wait until the item is added to cart
    Then waitForText('/html/body/div[1]/div/div[2]/div/div/div/div[2]/a/div[1]', '1').click()
    Then click('/html/body/div[1]/div/div[2]/div/div/div/div[2]/a/div[1]')