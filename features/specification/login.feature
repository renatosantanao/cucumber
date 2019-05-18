#language: pt

Funcionalidade: Login
    Para que eu possa cadastrar um processo ou pasta
    Sendo um usuário
    Posso acessar o sistema com meu login e senha cadastrados

    Contexto: Tela de login
        Dado que eu acesso a pagina de login

    @logout
    Cenario: Usuario deve ser autorizado
        Quando eu faco o login com "xxxxx" e "xxxxxx" e "xxxxx"
        Então devo ser autenticado com sucesso
        E devo ver a mensagem "Painel de informações globais"

    Esquema do Cenario: Tentativa do Login
        Quando eu faco o login com "xxxxx" e "<login>" e "<senha>"

    Exemplos:
    |login|senha|
    |xxxxx|xxxxxx|
    |xxxxx|xxxxxx|