Quando("eu seleciono a opcao pejota na barra de navegacao") do
    @home.itemmenu_pejota.click
end

Quando("seleciono a opcao acessar conta na barra de navegacao") do
  @pejota= Pejotapage.new
  @pejota.itemmenu_acessarconta.click
end

Quando("insiro email inexistente") do
  switch_to_window (windows.last) 
  @login = Loginpage.new
  @login.preencher_invalido
end

Quando("clico em entrar") do
  @login.botao_login.click
end

Então("eu vejo mensagem apontando login invalido") do
    expect(find(class: "parsley-static").text).to eq 'Login inválido.'
end
  