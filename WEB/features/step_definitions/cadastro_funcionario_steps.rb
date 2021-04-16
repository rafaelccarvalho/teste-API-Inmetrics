Dado("que o usuário queira cadastrar um novo funcionário") do
  @funcionario_page.dados_novo_funcionario
end

Quando("o usuário realiza o cadastro") do
  click_on "Novo Funcionário"
  @funcionario_page.criar_novo_funcionario
end