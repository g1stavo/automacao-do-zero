# nome do cliente
# saldo do cliente
# metodo para fazer saque recebendo um valor e que subtrai do saldo do cliente

# Feature: Caixa
# Cenário: saque com sucesso
# Dado que eu tenho uma conta corrente com 100 reais
# Quando saco 10 reais
# Então meu saldo será de 90 reais

# Cenário: Sem saldo
# Dado que eu tenho uma conta corrente com 0 reais
# Quando saco 10 reais
# Então devo ver a mensagem "Saldo insuficiente"
# E eu saldo final continua 0 reais

# Email
# instrutor@ninjahouse.com.br
# Assunto: Aula 1 - Caixa
# Código: formato ZIP
# Data de entrega: 30/09/2018

class Caixa
    attr_accessor :nome, :saldo
    
    def initialize(nome, saldo)
        @nome = nome
        @saldo = saldo
    end

    def saque(valor)
        @saldo = @saldo - valor
        puts 'Novo saldo de ' + @nome + ': ' + @saldo.to_s
    end
end

teste = Caixa.new('Teste', 100)
teste.saque(10)

if teste.saldo == 90
    puts "Ok"
else
    puts "Não ok"
end