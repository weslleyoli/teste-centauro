#language:pt

Funcionalidade: Cadastro
    Para que eu possa realizar a alteração do meu cadastro
    Eu sendo um usuário já cadastrado
    Desejo solicitar a alteração dos dados cadastrais afim de que meus dados sejam atualizados

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

    @altera_cadastro @regressivo
    Cenário: Alteração de senha de um cadastro
        Dado que acesso a página do Cadastro da Centauro
        E a senha atual do usuário cadastrado for preenchida
        E a senha do usuário for alterada para "Mudar@1234"
        Então deverá ser visualizada a mensagem "FOI ATUALIZADO COM SUCESSO."






