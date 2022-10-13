@smoke
Feature: F09_CheckCart | user could add Item To the cart and Validate Whenever That added Successfully
  Scenario Outline: users could use login functionality to add to cart
    Given user go to login page
    When user login with valid <Email> and <password>
    And user press on login button

    Examples:
      |Email|password|
      |test@example.com|P@ssw0rd|

      Scenario Outline:user could search by product Serial Number and add the specified Searched item
      To the cart and check the Cart
        Given I search for <sku>
        And verify item by it's Serial <sku>
        And user add the item to the Cart

        Examples:
      |sku|
      |"SCI_FAITH"|
      |"APPLE_CAM"|
      |"SF_PRO_11"|
