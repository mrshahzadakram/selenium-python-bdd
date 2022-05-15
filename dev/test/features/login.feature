Feature: OpenHRM Login

Background:
  Given the OpenHRM home page is displayed

  @login_correct_credentials
  Scenario: Basic OpenHRM Login
    When the user enters username "Admin"
    And the user enters password "admin123"
    And the user clicks on login button
    Then Home page is displayed

  @login_empty_credentials
  Scenario: OpenHRM Login with empy username and password
    When the user clicks on login button
    Then Credentials error for empty field is displayed

  @Login_wrong_credentials
  Scenario: Login with wrong username and password
    When the user enters username "123"
    And the user enters password "123"
    And the user clicks on login button
    Then Credentials error is displayed

  @Login_wrong_username
  Scenario: Login with wrong username and correct password
    When the user enters username "ad"
    And the user enters password "admin123"
    And the user clicks on login button
    Then Credentials error is displayed

  @Login_wrong_password
  Scenario: Login with correct username and wrong password
   When the user enters username "admin"
   And the user enters password "123"
   And the user clicks on login button
   Then Credentials error is displayed

  @Login_Forgot_password_link
  Scenario: The user is able to click on Forgot password
    When the user clicks on the forgot password link
    Then the "Forgot Your Password?" text is shown on the home page
