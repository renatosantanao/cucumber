Dado("que eu acesso a pagina de login") do
    visit 'https://login.xxxxx.com.br'
end

Quando("eu faco o login com {string} e {string} e {string}") do |office,login, senha|
    @login=login
    find('#btn-login-legalOne').click
    find('#Escritorio').set office
    find('#Usuario').set login
    find('#Senha').set senha
    find('#entrar').click
end

Então("devo ser autenticado com sucesso") do
    expect(page).to have_content "Pereira, Saraiva and Xavier LTDA"
end

Então("devo ver a mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
end