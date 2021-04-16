class FuncionarioPage < SitePrism::Page
  set_url "/empregados"

  element :enviar_btn, ".cadastrar-form-btn"
  element :criar_nome, "#inputNome"
  element :criar_cargo, "#inputCargo"
  element :criar_cpf, "#cpf"
  element :criar_salario, "#dinheiro"
  element :select_sexo, "#slctSexo"
  element :admissao, "#inputAdmissao"
  
  def go
    visit "/empregados"
  end

  def dados_novo_funcionario
    $nome_funcionario = Faker::Name.name
    $cargo_funcionario = "QA"
    $cpf_funcionario = Faker::CPF.pretty
    $salario_funcionario = "450000"
    $data_admissao = "01032021"
  end

  def criar_novo_funcionario
    criar_nome.set $nome_funcionario
    criar_cargo.set $cargo_funcionario
    criar_cpf.set $cpf_funcionario
    criar_salario.set $salario_funcionario
    list = select_sexo.all('option')
    list.drop(1).sample.select_option
    $contrato = ['CLT', 'PJ']
    ctt = $contrato.sample
    choose(ctt)
    admissao.set $data_admissao
    enviar_btn.click
  end
end