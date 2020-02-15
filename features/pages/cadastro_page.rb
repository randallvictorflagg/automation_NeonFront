class CadastroPage < SitePrism::Page
    element :botao_conferirlista, :xpath, "//button[contains(text(),'Conferir a lista')]"
    element :itemmenu_documentos, :xpath, "//h3[contains(text(),'Documento de identidade com foto de todos os sócio')]"
    element :texto_itemmenu_documentos, :id,'signup-documents-panel-content-2'
end
