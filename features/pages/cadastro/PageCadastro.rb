class PageCadastro < SitePrism::Page
    set_url "https://www.centauro.com.br/minha-conta/cadastro"

    element :txt_senha, '#fisica-senha'
    element :txt_nova_senha, '#nova-senha-fisica'
    element :txt_confirma_senha, '#confirmar-nova-senha-fisica'

    def preenche_senha_atual
        txt_senha.set SessionVariable.class_variable_get(:@@senha)
    end

    def preenche_nova_senha(senha)
        SessionVariable.class_variable_set(:@@senha, senha)
        txt_nova_senha.set senha
        txt_confirma_senha.set senha
    end

    def confirma_cadastro
        click_button 'Confirmar cadastro'
    end

    def desloga_site
        find(:xpath, "(//*[@class='user-area logged']//i)[2]").click
        sleep 2
        find(:xpath, "(//*[@class='item-logout'])[2]").click
    end


end