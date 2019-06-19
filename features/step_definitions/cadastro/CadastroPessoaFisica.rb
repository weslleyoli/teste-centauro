pageLogin = PageLogin.new
pageCadastroPessoaFisica = PageCadastroPessoaFisica.new


Dado("que acesso a página da Centauro") do
  pageLogin.load
end
  
Quando("seleciono a opção {string}") do |possuiSenha|
  pageLogin.seleciona_possui_senha(possuiSenha)
end
  
Quando("preencho um e=mail genérico válido e CEP {string}") do |cep|
  pageLogin.preenche_campos_login(cep)
end
  
Quando("inicio o cadastro") do
  pageLogin.clica_cadastrar
end
  
Então("o sistema redirecionará para o preenchimento do cadastro") do
  sleep 2
  expect(page).to have_css(".main-nregister")
end
  
Dado("que preencho as informações do novo usuário juntamente com um CPF genérico") do |dadosCadastro|
  dataCadastro = dadosCadastro.rows_hash
  pageCadastroPessoaFisica.preenche_campos_cadastro(dataCadastro)
end
  
Dado("finalizo o cadastro") do
  pageCadastroPessoaFisica.clica_cadastrar
end
  
Então("deverá ser visualizada amensagem {string}") do |mensagem|
  sleep 2
  expect(page).to have_content mensagem
end
  