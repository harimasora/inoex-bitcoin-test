# Bitcoin Script

Este repositório tem como objetivo demonstrar os conhecimentos necessários para a vaga de desenvolvedor fullstack da empresa [INOEX](https://inoex.exchange). O teste consiste das seguintes etapas:

1. Faça um método Ruby que envie 0,1 **BCY** para o endereço **C3qXd3YYRBrZZod5D9GLGhpDNnVfAwpbe2**.
2. Crie testes unitários que cubram o método anterior.
3. Disponibilize o código em um repositório no Github com README descrevendo os passos para execução.
4. Envie o link do repositório para lab44@g44.com.br

Obs.:

- Use Faucet para realizar o envio de BCY.
- Use API da [Blockcypher](https://www.blockcypher.com/dev/bitcoin).
- Use o token f559581fbebb412b9379cd5752bcae49.

## Requisitos

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (script foi escrito usando Ruby 2.4.0).
- [Blockcypher](https://www.blockcypher.com)

## Instalação

```shell
gem install blockcypher-ruby
```

## Utilização

```ruby
$ irb

irb(main):001:0> require_relative 'block_cypher_service.rb'
=> true

irb(main):002:0> bc_test = BlockCypherService.new
=> #<BlockCypherService:0x007fd6f7240538 @version="v1", @currency="bcy", @network="test", @api_token="f559581fbebb412b9379cd5752bcae49">

irb(main):003:0> bc_test.send('C3qXd3YYRBrZZod5D9GLGhpDNnVfAwpbe2', 10_000_000)
=> {"tx_ref"=>"b76c3f90cd18522c40f32bba7b3f82e07c6b11b58cf20b2d38d02fc4f370afae"}
```

## Teste

```ruby
ruby block_cypher_service_test.rb
```
