#language: pt
#utf-8

Funcionalidade: Aprendendo a trabalhar com capybara

Cenario: Acessar Site da UOL

Dado que eu acesse o Google
Quando pesquiso pelo site do uol
E entro no link
Então confirmo que estou no site do UOL

Cenario: Comparar cotação do Dólar

Dado que eu acesse a pagina de economia do UOL
Quando comparo se o valor do dolar é menor que 3,60
Então finalizo a execução com uma mensagem com o resultado da comparação