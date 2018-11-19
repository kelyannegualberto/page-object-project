class FirstAccess < SitePrism::Page
  set_url '/first-access'

  element :fieldRegistration, 'input[name="registration"]'
  element :fieldBirthday, '#birthday'
  element :fieldFirstName, 'input[name="first_name"]'
  element :fieldLastName, 'input[name="last_name"]'
  element :buttonContinue, 'button[class="css-7ff73c e13qjkp60"]'

  element :password, 'input[name="password"]'
  element :confirmPassword, 'input[name="confirm_password"]'
  element :selectQuestion, 'span[class="css-1uvvha"]'
  element :phraseAnswer, 'input[name="phrase_answer"]'
  element :termConfirmation, '#termsOfUseConfirmation'
  element :secretAnswer, '#secretAnswerConfirmation'
  element :buttonSave, 'button[class="css-7ff73c e13qjkp60"]'

  def fill_basic_form(registration, birthday, firstName, lastName)
    fieldRegistration.set registration
    fieldBirthday.set birthday
    fieldFirstName.set firstName
    fieldLastName.set lastName
    buttonContinue.click
  end

  def fill_second_form
    password.set 'adaptasenha123'
    confirmPassword.set 'adaptasenha123'
    #select 'Qual sua cor favorita?', from: selectQuestion
    phraseAnswer.set 'teste'
    termConfirmation.click
    secretAnswer.click
    buttonSave.click
    sleep(2)
  end
end
