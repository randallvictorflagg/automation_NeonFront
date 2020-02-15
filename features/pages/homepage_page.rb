class Homepage < SitePrism::Page
    set_url ""
    element :itemmenu_perguntas, :xpath, "//li[@class='header__nav-list-item']//a[contains(text(),'Perguntas')]"
    element :itemmenu_pejota, :xpath, "//li[@class='header__nav-list-item']//a[contains(text(),'Pejota')]"
end
