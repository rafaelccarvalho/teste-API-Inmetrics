#language: pt

Funcionalidade: Cadastrar usuário no endpoint /empregado/cadastrar
Fazer o cadastro de um usuário via API usando o verbo POST 

@post_user
Cenário: Cadastro de usuário
Dado que eu queira "cadastrar um usuário via api"
Quando eu realizar uma requisição para "post"
Então recebo o codigo "202"

@post_invalid_user
Cenário: Cadastro de usuário com dados Inválidos
Dado que eu queira "cadastrar um usuário via api com formato inválido"
Quando eu realizar uma requisição para "post invalid"
Então recebo o codigo "400"

