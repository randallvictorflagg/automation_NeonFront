class Perguntas < SitePrism::Page
    element :opcao_cancelamento, :xpath, "//a[contains(text(),'Cancelamento')]"
    element :quero_cancelar, :xpath, "//a[contains(text(),'Quero cancelar minha conta.')]"
    
end
