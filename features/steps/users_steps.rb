Quando('faço uma requisição GET para o serviço Users') do
    @request_users = users.get_users
end
  
Quando('faço um GET passando o id') do
    @request_users = users.get_user("0uxuPY0cbmQhpEz1")
end

Então('retorna a lista de usuários') do
    expect(@request_users.message).not_to be_empty
end

Então('retorna os dados do usuário') do
    expect(@request_users.parsed_response['_id']).to eq "0uxuPY0cbmQhpEz1"
end

Então('o serviço Users deve responder com {int}') do |status_code|
    expect(@request_users.code).to eql status_code
end

Quando('faço um POST passando os dados do usuário') do
    @payload_user = build(:user).user_hash
    @request_users = users.post_user(@payload_user)
end

Então('retorna a mensagem {string}') do |message|
    expect(@request_users.parsed_response['message']).to eq message
end

Então('retonar o id do usuário cadastrado') do
    expect(@request_users.parsed_response['_id']).not_to be_empty
end