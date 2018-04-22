class HomePage < SitePrism::Page

    set_url '/'
    element :campo_email, '#teacher_email'
    element :campo_senha, '#teacher_password'
    element :botao_logar, 'input[value="Entrar"]'  

    def Logar_Professor (email, senha)
        campo_email.set email
        campo_senha.set senha
        botao_logar.click
    end

end
