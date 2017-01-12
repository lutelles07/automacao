Dado(/^que eu acesse o Internet Banking do Santander$/) do
  visit('https://www.santander.com.br/')
end

Quando(/^eu preencher o campo de cpf$/) do
  fill_in('txtCPF', :with => '35476510850')
end

Quando(/^clicar no botão ok$/) do
  find(:xpath, "#header>div.formLogin>div.loginBtn>a").click
end

Quando(/^eu preencher o campo de senha$/) do
  within_frame('Principal') do
    within_frame('MainFrame') do
       click_link('Lembrar mais tarde')
    end
  end
  within_frame('Principal') do
    within_frame('MainFrame') do
  	   fill_in('txtSenha', :with => '232616')	
    end
  end
end

Quando(/^clicar no botão continuar$/) do
  within_frame('Principal') do
    within_frame('MainFrame') do
      find(:xpath, "//*[@id='divBotoes']/a[1]").click 
    end
  end
end

Então(/^confirmo que estou logado no Internet Banking$/) do
  if page.should have_content('Principais Transações') == true
		puts " Estava no site do Santander"
	else
 	 	puts " Não estava no site do Santander"
	end
	sleep(15)
end