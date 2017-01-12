#language: pt
#utf-8

Funcionalidade: Aprendendo a trabalhar com capybara

Cenario: login no face

Dado que eu acessar o facebook
Quando eu preencher os campos de login
E clicar em Entrar
Então vejo meu perfil

Cenario: logout do face

Dado que eu esteja logado no Facebook
Quando eu clicar no menu de configurações
E clicar em sair
Então vejo a tela inicial do Facebook