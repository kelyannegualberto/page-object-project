Feature: First access of the student

  @first_access
  Scenario: Accomplish first access successfully
    Given I am accessing the login screen of the Adaptativo Web and click the first access button
    When I fill the basics fields
      |registration|birthday|firstName|lastName|
      |424808      |22092001|larissa  |morais  |
    And I fill the second form and click on the button save information
    Then I see the home page of Adaptativo


