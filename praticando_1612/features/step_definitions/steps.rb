Dado(/^que eu acesse o Google$/) do
  visit('https://google.com.br')
end

Quando(/^pesquiso pelo site do uol$/) do
  fill_in('q', :with => 'uol.com.br')
end

Quando(/^entro no link$/) do
  click_link('UOL - O melhor conteúdo') 
end

Então(/^confirmo que estou no site do UOL$/) do
	if page.should have_content('UOL - O melhor conteúdo') == true
	 puts " Estava no site da UOL"
	else
 	 puts " Não estava no site da UOL"
	end
end

Dado(/^que eu acesse a pagina de economia do UOL$/) do
  click_link('Economia')
end

Quando(/^comparo se o valor do dolar é menor que (\d+),(\d+)$/) do |v_fix, cot|
  $v_fix =  "3.60"
  $cot = find(:xpath, "//*[@id='cambio']/ul/li[1]/p[2]").text.last(5)
  puts $v_fix
  puts $cot
  binding.pry
end

Então(/^finalizo a execução com uma mensagem com o resultado da comparação$/) do
  expect($cot).to be < $v_fix
  puts " Funcionou "
end