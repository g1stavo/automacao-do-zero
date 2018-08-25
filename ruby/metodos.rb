def imprime_idade
    puts 34
end

def imprime_nome
    puts 'Fernando'
end

imprime_nome
imprime_idade

def soma (v1, v2) # ou def soma v1, v2
    puts v1 + v2
end

soma(5, 2) # ou soma 5, 2

# funcionalidade que deve exibir uma resposta para o usuário
def achou_bug(resposta)
    case resposta
    when 1 
        puts 'Informe o dev.'
    when 0 
        puts 'Pode ir pra produção.'
    else
        puts 'Código inválido'
    end
end

puts 'Olá, Bem vindo ao Teslink.RB v1'
puts 'Informe 0, se o resultado é sem BUG'
puts 'Informe 1, se ocorreu bugs.'

resultado = STDIN.gets.to_i # to_f float, to_s string
puts resultado.class
achou_bug(resultado)
