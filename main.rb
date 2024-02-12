puts 'Digite sua data de nascimento: '
mes = gets.chomp.to_i

case mes 
when 1..3
    puts'Você nasceu no primeiro trismetre do ano'


when 4..6
    puts'Você nasceu no primeiro semestre do ano'
        
else
    puts'O valor que você digitou é inválido'
end