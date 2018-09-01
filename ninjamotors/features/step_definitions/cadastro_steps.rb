Dado("que estou na página de cadastro") do
    visit 'http://ninjamotors.herokuapp.com/cadastre-se'
    sleep 5
end

Quando("faço o meu cadastro com") do |table|
    usuario = table.rows_hash

    fill_in 'full-name', with: usuario[:nome]
    fill_in 'email', with: usuario[:email]
    fill_in 'password', with: usuario[:senha]

    click_button 'Cadastrar'
end

Então("sou autenticado com sucesso") do
    within('.navbar') do 
        @menu_usuario = find('#navbarDropdown')
    end
    
    expect(@menu_usuario.text).to eql @usuario[:nome]
end