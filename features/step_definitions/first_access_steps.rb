Given('I am accessing the login screen of the Adaptativo Web and click the first access button') do
  @loginPage = LoginAdaptativoPage.new
  @loginPage.load
  @loginPage.buttonFirstAccess.click
  sleep(2)
end

When('I fill the basics fields') do |basicsFields|
  @firstAccessPage = FirstAccess.new

  basicsFields.hashes.each do |field|
    @registration = field[:registration].to_i
    @birthday = field[:birthday].to_i
    @firstName = field[:firstName].to_s
    @lastName = field[:lastName].to_s
  end

  @firstAccessPage.fill_basic_form(@registration, @birthday, @firstName, @lastName)

end

When('I fill the second form and click on the button save information') do
  @firstAccessPage.fill_second_form
end

Then('I see the home page of Adaptativo') do
end
