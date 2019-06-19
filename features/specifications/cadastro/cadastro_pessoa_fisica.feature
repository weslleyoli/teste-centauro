#language:pt

Funcionalidade: Cadastro Pessoa Fisica
    Para que eu possa realizar um novo Cadastro
    Eu sendo um novo usuário
    Desejo preencher as informações solicitadas afim de realizar um cadastro com suceso
    

    @novo_cadastro @regressivo
    Cenário: Novo cadastro de usuário
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
        





