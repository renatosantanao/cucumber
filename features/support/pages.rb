class LoginPage
    include Capybara::DSL

    def Faz_login(login, senha)
        find('#btn-login-legalOne').click
        find('#Escritorio').set office
        find('#Usuario').set login
        find('#Senha').set senha
        find('#entrar').click
    end

end