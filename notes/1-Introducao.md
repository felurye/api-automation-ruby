## O que iremos utilizar?

* [Ruby](https://rubyinstaller.org/)
* HTTParty
* RSpec


## HTTParty

O HTTParty, é uma Ruby gem para realizar requisições de web services e examinar as saídas resultantes dessas requisições. 
Por padrão, ele gerará a resposta (resultado produzido) como um objeto Ruby no formato pp (pretty print que é útil para aumentar a estrutura da saída).

O uso do HTTParty pode ser para pequenas consultas formatadas no formato curl ou estruturado para automazar testes de regressão em um API.

### Realiza request do tipo:
* GET
* POST
* PUT
* DELETE

### Instalação

> gem install httparty

Ou adcione o httparty em seu gemfile e execute:

> bundle install

## RSPEC

O rspec é uma gem (library ou biblioteca) entre os mais populares frameworks para a realização de testes automatizados em Ruby.

Diferente de outras abordagens de teste, o rspec foca em testar comportamentos específicos ao invés de testar somente métodos,
ou seja, utiliza a abordagem BDD ou Behaviour Driven Development, em tradução literal, desenvolvimento guiado a comportamento.

## Matchers

Um matcher no rspec é um objeto que serve para verificar o comportamento esperado no nosso teste. 
Ele é usado para montar uma expectation do rspec de dois modos diferentes:

``` ruby 
expect(atual).to match(expected) 
```
``` ruby 
expect(atual).to_not match(expected)
```

[Lista de Matchers](https://rubydoc.info/github/rspec/rspec-expectations/RSpec/Matchers).

### Instalação

> gem install rspec

> rspec --init

Ou adcione-o em seu gemfile e execute:

``` gemspec
source "https://rubygems.org" do
  gem "rspec"
end
```

> bundle install

### Arquitetura

O arquivo spec/spec_helper.rb é responsável por carregar o rspec, além de definir dependências e configurações da aplicação e da própria suíte de exemplos.
Ele é carregado por todos os arquivos de exemplo. 

Seus exemplos são adicionados em arquivos *__spec.rb.

O diretório spec/support guarda arquivos que você utilizará nos seus exemplos, como novos matchers, exemplos compartilhados, classes, etc.

_____
## Referências

Jeremias Araújo, [Virada da Qualidade Extra - Testes de API's usando Ruby + HTTParty e RSpec](https://www.youtube.com/watch?v=UxM3AMLAdEw)
