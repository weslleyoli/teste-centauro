#language:pt

Funcionalidade: Login
    Para que eu possa realizar o login com sucesso
    Eu sendo um usuário já cadastrado
    Desejo realizar o preenchimento válido do login afim de obter acesso ao sistema

     Contexto:
        Dado que acesso a página da Centauro
        Quando seleciono a opção " Não, sou um novo cliente."
        E preencho um e=mail genérico válido e CEP "09784000"
        E inicio o cadastro
        Então o sistema redirecionará para o preenchimento do cadastro
        Dado que preencho as informações do novo usuário juntamente com um CPF genérico
            | nome             | Fulano     |
            | sobrenome        | de Ciclano |
            | data_nascimento  | 10071990   |
            | sexo             | Masculino  |
            | ddd_telefone     | 11         |
            | telefone_fixo    | 43374848   |
            | ddd_celular      | 11         |
            | telefone_celular | 960774333  |
            | senha            | Mudar@123  |
            | confirma_senha   | Mudar@123  |
            | numero_endereco  | 88         |
        E finalizo o cadastro
        Então deverá ser visualizada a mensagem "Olá, Fulano"
        
    @login @regressivo
    Cenário: Login com sucesso
        Dado que deslogo do site da Centauro
        E que acesso a página da Centauro
        Quando seleciono a opção " Sim, já tenho um cadastro."
        E preencho o e-mail e senha do usuário cadastrado
        Quando o login for realizado
        Então deverá ser visualizada a mensagem "Olá, Fulano"







