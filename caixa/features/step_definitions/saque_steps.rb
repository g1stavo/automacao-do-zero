require_relative '../../src/conta'

Dado("que eu tenho uma conta com R${int}") do |saldo_inicial|
    @conta = Conta.new(saldo_inicial)
  end
  
Quando("faço um saque no valor de R${int}") do |valor_saque|
    @conta.saque(valor_saque)
end
  
Então("meu saldo final deve ser de R${int}") do |saldo_final|
    expect(@conta.saldo).to eql saldo_final
end

Então("vejo a seguinte mensagem {string}") do |mensagem|
    expect(@conta.mensagem).to eql mensagem
end