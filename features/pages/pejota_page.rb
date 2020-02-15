class Pejotapage < SitePrism::Page
    element :itemmenu_acessarconta, :xpath, "//li[@class='header__nav-list-item']//a[contains(text(),'Acessar conta')]"
    element :botao_abrasuaneonpejota, :xpath, "//a[contains(text(),'ABRA SUA NEON PEJOTA')]"
end
