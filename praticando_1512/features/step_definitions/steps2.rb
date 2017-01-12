Dado(/^que eu acessar o facebook$/) do
 visit('https://www.facebook.com/')
end

Quando(/^eu preencher os campos de login$/) do
  fill_in('email', :with => 'rodrigocandidocosta@gmail.com')
  fill_in('pass', :with => 'lorena09')
end

Quando(/^clicar em Entrar$/) do
  click_button('u_0_l')
end

Então(/^vejo meu perfil$/) do
  sleep(2)
end

Dado(/^que eu esteja logado no Facebook$/) do
 visit('https://www.facebook.com/')
end

Quando(/^eu clicar no menu de configurações$/) do
#  binding.pry
  find("#userNavigationLabel").click

end

Quando(/^clicar em sair$/) do
  click_link('Sair')
end

Então(/^vejo a tela inicial do Facebook$/) do
  sleep(15)
end

=begin
  Botao de entrar no face: u_0_l  
  Botão do menu do face: //*[@id="userNavigationLabel"]
  Botão de sar do face: show_me_how_logout_1
=end