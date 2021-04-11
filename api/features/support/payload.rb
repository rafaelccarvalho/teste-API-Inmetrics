  class PayloadCreate
  def create_valid_user
    {
      "admissao": "02/10/#{Faker::Number.between(from: 2000, to: 2020)}",
      "cargo": FFaker::JobBR.title,
      "comissao": "#{Faker::Number.number(digits: 1)}.000,00",
      "cpf": Faker::CPF.pretty,
      "departamentoId": 1,
      "nome": FFaker::NameBR.name,
      "salario": "#{Faker::Number.number(digits: 1)}.000,00",
      "sexo": ["m", "f", "i"].sample,
      "tipoContratacao": ["pj", "clt"].sample,
    }.to_json
  end

  def create_invalid_user
    {
      "admissao": "2/10/#{Faker::Number.between(from: 2000, to: 2020)}",

    }.to_json
  end

  def edit_user
    {
      "admissao": "02/10/#{Faker::Number.between(from: 2000, to: 2020)}",
      "cargo": FFaker::JobBR.title,
      "comissao": "#{Faker::Number.number(digits: 1)}.000,00",
      "cpf": Faker::CPF.pretty,
      "departamentoId": 1,
      "nome": "#{FFaker::NameBR.name} alterado",
      "salario": "#{Faker::Number.number(digits: 1)}.000,00",
      "sexo": ["m", "f", "i"].sample,
      "tipoContratacao": ["pj", "clt"].sample,

    }.to_json
  end
end