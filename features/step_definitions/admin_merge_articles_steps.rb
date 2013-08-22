Given /^I log in as non_admin$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'non_admin'
  fill_in 'user_password', :with => 'password'
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end
