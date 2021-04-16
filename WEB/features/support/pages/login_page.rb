class LoginPage < SitePrism::Page
  set_url "/accounts/login"

  element :username_field, "input[name=username]"
  element :password_field, "input[name=pass]"
  element :confirm_password_field, "input[name=confirmpass]"
  element :cadastrar_button, ".login100-form-btn"
  element :entre_button, ".login100-form-btn"
  element :alerta, ".alert"

  def go
    visit "/accounts/login/"
  end

  def dados_do_usuario
    $usuario = Faker::Name.name
    $senha = Faker::Internet.password
    $confirma_senha = $senha
  end

  def preencher_dados_usuario
    username_field.set $usuario
    password_field.set $senha
    confirm_password_field.set $confirma_senha
    entre_button.click
  end

  def login_usuario
    username_field.set $usuario
    password_field.set $senha
    entre_button.click
  end

  def login_usuario_valido(usuario, senha)
    username_field.set usuario
    password_field.set senha
    entre_button.click
  end

  def dados_usuario_errados(usuario, senha, confirma_senha)
    username_field.set usuario
    password_field.set senha
    confirm_password_field.set confirma_senha
    entre_button.click
  end

  def texto_alerta
     alerta.text
  end
end