Feature: SampleTest
  As a User
  I want to validate the following scenarioes for given application

@SC_01
  Scenario : Verify the right count of values appear on the Screen
    Given I open the "http://abc.com"
    When  The page load successfully
    Then I should see the total count of the values is "5"

@SC_02
  Scenario : Verify the values on the screen are  greater than 0
    Given I am on the page
    When  The values are present
    Then I should see all the values are greater than zero

@SC_03
 Scenario : Verify the total balance is correct based on the values listed on the screen
    Given I am on the page
    When  The values are present
    Then I should see the total value are equal to sum of the listed values

@SC_04
 Scenario : Verify the values are formatted as currencies
    Given I am on the page
    When  The values are present
    Then I should see values are formatted as currencies

@SC_05
 Scenario : Verify the total balance matches the sum of the values
    Given I am on the page
    When  The values are present
    Then I should see the total value are equal to sum of the listed values

