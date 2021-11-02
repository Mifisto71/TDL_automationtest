Given(/^I am on the registration form$/) do
  @pages.registration_form.visit
  expect(@pages.registration_form.contains_section?('CREATE ACCOUNT')).to eq(true)
end
  
When ('I fill the first name input field with {string}') do |first_name|
   @pages.registration_form.enter_first_name(first_name)
end

When ('I fill the last name input field with {string}') do |last_name|
  @pages.registration_form.enter_last_name(last_name)
end

When ('I fill the email input field with input') do 
  email=Time.now.strftime('%H%M%S%L')+'@email.com'
  @pages.registration_form.enter_email(email)
end

When ('I fill the address input field with {string}') do |address|
  @pages.registration_form.enter_address(address)
end

When ('I fill the city input field with {string}') do |city|
  @pages.registration_form.enter_city(city)
end

When ('I fill the zip code input field with {string}') do |zip_code|
  @pages.registration_form.enter_zip_code(zip_code)
end

When ('I fill the login input field with input') do 
  login=Time.now.strftime('%H%M%S%L')
  @pages.registration_form.enter_login_name(login)
end

When ('I fill the password input field with {string}') do |password|
  @pages.registration_form.enter_password(password)
  @pages.registration_form.enter_password_confirm(password)
end

When ('I choose country {string}') do |country|
  @pages.registration_form.select_country(country)
end

When ('I choose region {string}') do |country|
  @pages.registration_form.select_region(country)
end
When ('I select privacy policy checkbox') do
  @pages.registration_form.select_policy_checkbox
end

When ('I press continue button') do
  @pages.registration_form.continue_button_click
end

Then('I should see account created message') do
  expect(@pages.registration_form.contains_section?('YOUR ACCOUNT HAS BEEN CREATED')).to eq(true)
end