Before do
  page.current_window.resize_to(1440, 900)

  @login_page = LoginPage.new
  @cadastro_page = CadastroPage.new
  @funcionario_page = FuncionarioPage.new
end