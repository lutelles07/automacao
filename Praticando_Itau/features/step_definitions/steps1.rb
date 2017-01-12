Dado(/^que eu acesse o Internet Banking do itau$/) do
  visit('https://www.itau.com.br/')
end

Quando(/^eu preencher os campos de agência e conta$/) do
# Insira Agência e Conta
  fill_in('campo_agencia', :with => 'AAAA')
  fill_in('campo_conta', :with => 'CCCCCD')
end

Quando(/^clicar no botão acessar$/) do

  find("#header>div.formLogin>div.loginBtn>a").click
end

Quando(/^eu clicar no nome do usuario$/) do
    find("#MSGBordaEsq>table>tbody>tr:nth-child(3)>td>table>tbody>tr>td>table>tbody>tr>td.MSGTexto8>a").click
end

Quando(/^preencher a senha clicando nos botões$/) do
# Insira sua senha neste array
	@senha = ['1','2','3','4','5','6']
	@par1 = find('#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(1)>strong').text.split("")
	@par2 = find('#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(2)>strong').text.split("")
	@par3 = find('#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(3)>strong').text.split("")
	@par4 = find('#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(4)>strong').text.split("")
	@par5 = find('#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(5)>strong').text.split("")
	
	@senha.each do |x|

		if x == @par1[0] || x == @par1[5] then  
			find("#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(1)>a>img").click
		end

		if x == @par2[0] || x == @par2[5] then 
			find("#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(2)>a>img").click
		end

		if x == @par3[0] || x == @par3[5] then 
			find("#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(3)>a>img").click
		end

		if x == @par4[0] || x == @par4[5] then 
			find("#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(4)>a>img").click
		end

		if x == @par5[0] || x == @par5[5] then 
			find("#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(8)>tbody>tr>td:nth-child(5)>a>img").click
		end
	end
end

Quando(/^clicar no botao ok$/) do
  find("#TecladoFlutuanteBKL>form:nth-child(1)>table>tbody>tr:nth-child(2)>td:nth-child(2)>table:nth-child(9)>tbody>tr>td:nth-child(3)>a>img").click
end

Então(/^confirmo que estou logado no Internet Banking do Itau$/) do
    if page.should have_content('Home  |  Conta Corrente') == true
		puts " Estava no site do Itau"
	else
 	 	puts " Não estava no site do Itau"
	end
	sleep(15)
end