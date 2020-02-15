Quando("eu seleciono a opcao abra sua neon pejota") do
    @pejota= Pejotapage.new
    @pejota.botao_abrasuaneonpejota.click
end

Quando("seleciono a opcao conferir a lista") do
    switch_to_window (windows.last) 
    @cadastro = CadastroPage.new
    @cadastro.botao_conferirlista.click
end

Quando("seleciono a opcao documento de identidade com foto de todos os socios") do
    @cadastro.itemmenu_documentos.click
end

Então("eu vejo os documentos com foto necessarios para abertura de conta") do
    expect(@cadastro.texto_itemmenu_documentos.text).to eq 'São válidos os documentos RG, CNH ou RNE (no caso de estrangeiros).'
end