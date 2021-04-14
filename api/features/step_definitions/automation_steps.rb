Dado('que eu queira {string}') do |string|
  #lógica no step a seguir
end

Quando('eu realizar uma requisição para {string}') do |verbo|
  @result = @api_test.requisicao(verbo)
end

Então("recebo o codigo {string}") do |codigo_de_retorno|
  expect(@result.response.code).to eql codigo_de_retorno
end