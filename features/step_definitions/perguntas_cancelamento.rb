Dado("que eu esteja na homepage do site da Neon") do
  @home = Homepage.new
  @home.load
  page.driver.browser.manage.window.maximize
end

Quando("eu seleciono a opcao perguntas na barra de navegacao") do
  @home.itemmenu_perguntas.click
end

Quando("eu seleciono a opcao Cancelamento") do
  @perguntas = Perguntas.new
  @perguntas.opcao_cancelamento.click
  
end

Quando("seleciono a opcao Quero cancelar minha conta. Como faco?") do
  @perguntas.quero_cancelar.click
end

Então("eu vejo o texto sobre cancelamento") do
  expect(page.has_text?('Não queremos que você nos deixe, mas se quiser cancelar sua conta vamos simplificar o processo!')).to eq true
  expect(page.has_text?('Para cancelar sua conta basta logar no app, clicar em:')).to eq true
  expect(page.has_text?('Meu Neon > Configurações > Cancelar conta.')).to eq true
  expect(page.has_text?('Ah, você pode cancelar se tiver com o saldo da conta e investimentos zerados, nenhuma contestação em andamento e nenhum limite comprometido no cartão de crédito.')).to eq true
  expect(page.has_text?('Não se esqueça que por enquanto, as contas canceladas não podem ser reabertas, ok?')).to eq true
end
