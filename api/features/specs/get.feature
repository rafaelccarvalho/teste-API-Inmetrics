#language: pt

Funcionalidade: Listar usuário usando o endpoint /empregado/list/
Buscar um ou mais usúarios dentro da API usando o verbo GET

@get_user
Cenário: Listar um usuário cadastrado
Dado que eu queira "solicitar um usuário cadastrado"
Quando eu realizar uma requisição para "get user"
Então recebo o codigo "202"

@get_all_users
Cenário: Listar todos os usuários cadastrados
Dado que eu queira "solicitar a lista de todos os usuários cadastrados"
Quando eu realizar uma requisição para "get all"
Então recebo o codigo "200"
