@registration_form
Feature: As a visitor I want to be able to create an account in automation test store
  Background:
    Given I am on the registration form

  Scenario: Registration form positive test case
    When I fill the first name input field with "Bobuks"
    When I fill the last name input field with "Zuzek"
    When I fill the email input field with input
    When I fill the address input field with "Warsaw Uly street 77"
    When I fill the city input field with "Warsaw"
    When I fill the zip code input field with "727-lpp"
    When I fill the login input field with input
    When I fill the password input field with "zzrot21"
    When I choose country "Poland"
    When I choose region "Mazowieckie"
    When I select privacy policy checkbox
    When I press continue button
    Then I should see account created message