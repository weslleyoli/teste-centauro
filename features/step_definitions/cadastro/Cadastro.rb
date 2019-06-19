pageCadastro = PageCadastro.new

Dado("que acesso a página do Cadastro da Centauro") do
  pageCadastro.load
end

Quando("a senha atual do usuário cadastrado for preenchida") do
  pageCadastro.preenche_senha_atual
end

Quando("a senha do usuário for alterada para {string}") do |senha|
  pageCadastro.preenche_nova_senha(senha)
  pageCadastro.confirma_cadastro
end

Então("deverá ser visualizada a mensagem {string}") do |mensagem|
  sleep 2
  expect(page).to have_content mensagem
end


