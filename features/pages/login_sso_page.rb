class LoginSsoPage < SitePrism::Page

  set_url 'https://staging-fractalid.fractaltecnologia.com.br/?url_redirect=https%3A%2F%2Fstaging.adaptativo.com%2Flogin'

  element :login, 'input[name="login"]'
  element :password, 'input[name="password"]'
  element :button, 'button[type="submit"]'

  def fill_login_form
    login.set '18778'
    password.set 'adaptasenha123'
    button.click
  end

end