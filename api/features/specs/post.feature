#language:pt
Funcionalidade: POST
POST é usado para criar alguma informação dentro da API. 

@post
Cenário: Cadastro de usuário
Dado que eu queira cadastrar um usuário via api
Então recebo o codigo "202"

@post_invalid_user
Cenário: Cadastro de usuário
Dado cadastre um usuário via api com formato inválido
Então recebo o codigo "400"

