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