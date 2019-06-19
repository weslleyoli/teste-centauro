pageCadastro = PageCadastro.new
pageLogin = PageLogin.new

Dado("que deslogo do site da Centauro") do
  pageCadastro.desloga_site
end
  
Quando("preencho o e-mail e senha do usuário cadastrado") do
  pageLogin.preenche_login_senha
end
  
Quando("o login for realizado") do
  pageLogin.clica_entrar
end
  