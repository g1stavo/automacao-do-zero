class Conta
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        @saldo = saldo # ou self.saldo = saldo
    end
    
    def saque(valor)
        if valor > @saldo
            @mensagem = "Saldo insuficiente."
        else
            @saldo -= valor
            @mensagem = "Saque com sucesso."
        end
    end
end