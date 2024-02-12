$usuarios = []

loop do 
    
    puts"\nSistema De Cadastro"
    puts"Opção 1 Cadastrar  Usuário"
    puts"Opção 0 Sair"
    print"Selecione uma opção acima: "
    cds = gets.chomp.to_i
    def programa()
        loop do
            
            puts"\nCadastrar usuários Digite 1"
            puts"Editar um usuário Digite 2"
            puts"Mostrar Usuários Digite 3"
            puts"Sair Digite 0"
            puts""
            print"Selecione uma opção: "
            op = gets.chomp.to_i
            
            if op == 1

                print"Digite o nome de usuário que você deseja cadastrar: "
                casd = gets.chomp
                $usuarios.push(casd)
                puts"Usuário Cadastrado com sucesso !!"
                puts'<--USUÁRIOS-->'
                $usuarios.each do | usr |
                puts usr
                end
                programa()
            elsif op == 2
                puts"\nSistema para editar usuário"
                print"\nDigite a posição do usuário ao qual você deseja editar: "
                us = gets.chomp.to_i
                print"\nDigite um novo nome de usuário: "
                usn = gets.chomp
                $usuarios[us] = usn
                puts'<--USUÁRIOS-->'
                $usuarios.each do | usr |
                puts usr
                end
                programa()
            elsif op == 3
                puts'<--USUÁRIOS-->'
                $usuarios.each do | usr |
                puts usr
                end
                programa()
            end
            break if op == 0
        end
    end
    break if cds == 0
    if cds == 1
        programa()
    end
end
