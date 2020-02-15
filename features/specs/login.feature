#language: pt

Funcionalidade: Realizar Login com email inexistente
    Eu como um usuário do site Banco Neon, gostaria tentar efetuar login com email inexistente

Cenario: Login com Email Inexistente

Dado que eu esteja na homepage do site da Neon
    Quando eu seleciono a opcao pejota na barra de navegacao
    E seleciono a opcao acessar conta na barra de navegacao
    E insiro email inexistente
    E clico em entrar
Então eu vejo mensagem apontando login invalido