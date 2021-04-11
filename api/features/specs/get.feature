#language:pt

Funcionalidade: GET
GET é usado para buscar retorno de alguma informação dentro da API.

@get
Cenário: Listar um usuário cadastrado
Dado que eu queira solicitar um usuário cadastrado
Então recebo o codigo "202"

@get_all
Cenário: Listar todos os usuários cadastrados
Dado que eu queira solicitar a lista de todos os usuários cadastrados
Então recebo o codigo "200"

