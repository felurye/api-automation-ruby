#language: pt
#encoding: utf-8

@users
Funcionalidade: Users
Valida operações da API users

@get_users
Cenário: Validar GET API Users
Quando faço uma requisição GET para o serviço Users
Então o serviço Users deve responder com 200
E retorna a lista de usuários

@get_user
Cenário: Validar GET User API Users
Quando faço um GET passando o id
Então o serviço Users deve responder com 200
E retorna os dados do usuário

@post_user
Cenário: Validar POST User API Users
Quando faço um POST passando os dados do usuário
Então o serviço Users deve responder com 201
E retorna a mensagem 'Cadastro realizado com sucesso'
E retonar o id do usuário cadastrado