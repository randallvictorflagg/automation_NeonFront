class Loginpage < SitePrism::Page
    element :campo_login, :id,'login-form-email'
    element :botao_login, :xpath, "//button[@class='button']"

    def preencher_invalido 
        campo_login.set 'teste@invalido.com'
    end

end
