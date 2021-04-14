#language: pt

Funcionalidade: Editar um usuário no endpoint /empregado/alterar/
Fazer a alteração de um ou mais dados de um usuário já cadastrado usando o verbo PUT.

@put_edit_user
Cenário: Alterar Usuário
Dado que eu queira "alterar um usuário cadastrado"
Quando eu realizar uma requisição para "put"
Então recebo o codigo "202"