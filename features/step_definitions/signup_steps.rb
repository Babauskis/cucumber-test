Given(/^I am on Discord home page/) do
  @tests.login_tests.load_home_page
end

Then(/^I open Log in page/) do
  @tests.login_tests.open_log_in
end

Then(/^I enter login data/) do
  @tests.login_tests.enter_login_data()
end

And(/^I submit login form/) do
  @tests.login_tests.submit_login_form
end

And(/^I skip welcome to Discord screen/) do
  @tests.login_tests.skip_welcome_screen
end