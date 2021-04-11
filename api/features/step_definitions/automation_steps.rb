
Dado("que eu queira solicitar um usuário cadastrado") do
  @result = HTTParty.get(@uri_base + @get, :basic_auth => @auth)
end

Dado("que eu queira solicitar a lista de todos os usuários cadastrados") do
  @result = HTTParty.get(@uri_base + @get_all, :basic_auth => @auth)
end

Dado("que eu queira cadastrar um usuário via api") do
  @result = HTTParty.post(@uri_base + @post, :basic_auth => @auth, body: @payload_page.create_valid_user, :headers => @headers)
end

Dado("cadastre um usuário via api com formato inválido") do
  @result = HTTParty.post(@uri_base + @post, :basic_auth => @auth, body: @payload_page.create_invalid_user, :headers => @headers)
end

Dado("que eu queira alterar um usuário cadastrado") do
  @result = HTTParty.put(@uri_base + @put, :basic_auth => @auth, body: @payload_page.edit_user, :headers => @headers)
end

Então("recebo o codigo {string}") do |codigo_de_retorno|
  expect(@result.response.code).to eql codigo_de_retorno
end