Feature: Sign in to the Adaptativo Web

  Scenario: Sign in successfully
    Given I am accessing the login screen of the Adaptativo Web and click the login button
    When I fill in the login fields
    Then I access the main page of the Adaptativo Web