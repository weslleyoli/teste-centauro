class PageLogin < SitePrism::Page
    set_url "https://www.centauro.com.br/slogin"

    element :txt_email, '#input-type-1'
    element :txt_cep, '#input-type-3'
    element :btn_cadastrar, '#btn_cadastrar'
    element :btn_entrar, '#btn_Entrar'
    element :txt_senha, '#input-type-4'

    def seleciona_possui_senha(possuiSenha)
        find(:xpath, "//span[text()=\"" + possuiSenha + "\"]").click
    end

    def preenche_campos_login(cep)
        SessionVariable.class_variable_set(:@@email, UtilMock.gera_email)
        txt_email.set SessionVariable.class_variable_get(:@@email)
        txt_cep.set cep
    end

    def clica_cadastrar
        btn_cadastrar.click
    end

    def clica_entrar
        btn_entrar.click
    end

    def preenche_login_senha
        txt_email.set SessionVariable.class_variable_get(:@@email)
        txt_senha.set SessionVariable.class_variable_get(:@@senha)
    end
end