class PageCadastroPessoaFisica < SitePrism::Page

    element :txt_nome, '#fisica-nome'
    element :txt_sobrenome, '#fisica-sobrenome'
    element :txt_cpf, '#cpf-nregister'
    element :dt_data_nascimento, "#date-nregister"
    element :op_sexo, "select[name='sexo']"
    element :txt_ddd_telefone, '#fisica-telefone-fixo-ddd'
    element :txt_telefone, '#fisica-telefone-fixo'
    element :txt_ddd_celular, '#fisica-telefone-adicional-ddd'
    element :txt_celular, '#fisica-telefone-celular'
    element :txt_senha, '#fisica-senha'
    element :txt_confirma_senha, "input[name='confirmacaoSenha']"
    element :txt_numero_endereco, "input[name='numero']"
    element :btn_cadastrar, '#bt-submit-fisica'

    def preenche_campos_cadastro(dataCadastro)
        unless dataCadastro['nome'].nil?
            txt_nome.set dataCadastro['nome']
        end

        unless dataCadastro['sobrenome'].nil?
            txt_sobrenome.set dataCadastro['sobrenome']
        end

        cpf = UtilMock.gera_cpf
        txt_cpf.set cpf
        

        unless dataCadastro['data_nascimento'].nil?
            dt_data_nascimento.set dataCadastro['data_nascimento']
        end

        unless dataCadastro['sexo'].nil?
            op_sexo.select dataCadastro['sexo']
        end

        unless dataCadastro['ddd_telefone'].nil?
            txt_ddd_telefone.set dataCadastro['ddd_telefone']
        end

        unless dataCadastro['telefone_fixo'].nil?
            txt_telefone.set dataCadastro['telefone_fixo']
        end

        unless dataCadastro['ddd_celular'].nil?
            txt_ddd_celular.set dataCadastro['ddd_celular']
        end

        unless dataCadastro['telefone_celular'].nil?
            txt_celular.set dataCadastro['telefone_celular']
        end

        unless dataCadastro['senha'].nil?
            SessionVariable.class_variable_set(:@@senha, dataCadastro['senha'])
            txt_senha.set dataCadastro['senha']
        end

        unless dataCadastro['confirma_senha'].nil?
            txt_confirma_senha.set dataCadastro['confirma_senha']
        end

        unless dataCadastro['numero_endereco'].nil?
            txt_numero_endereco.set dataCadastro['numero_endereco']
        end
    end

    def clica_cadastrar
        btn_cadastrar.click
    end
end