Given('I am accessing the login screen of the Adaptativo Web and click the login button') do

  @login = LoginAdaptativoPage.new
  @login.load
  @login.buttonSignin.click

end

When('I fill in the login fields') do

  @loginSso = LoginSsoPage.new
  @loginSso.fill_login_form

end

Then('I access the main page of the Adaptativo Web') do
  expect(page).to have_current_path('https://staging.adaptativo.com/agenda', url: true)
end
