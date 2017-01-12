Dado(/^que eu acesse o facebook$/) do
  visit('https://www.facebook.com/')
end

Quando(/^eu preencher os campos de cadastro$/) do
 # binding.pry
  @email1 = FFaker::Internet.email
  @fname  = FFaker::Name.first_name
  @lname  = FFaker::Name.last_name
  @pass   = FFaker::Internet.password
  @bday   = Faker::Date.birthday(18,200).strftime("%d/%m/%Y")
  fill_in('firstname', :with => @fname)
  fill_in('lastname', :with => @lname)
  fill_in('reg_email__', :with => @email1)
  fill_in('reg_email_confirmation__', :with => @email1)
  fill_in('reg_passwd__', :with => @pass)

  select('23', :from => 'birthday_day')
  select('Fev', :from => 'birthday_month')
  select('1986', :from => 'birthday_year')
  choose('u_0_i')
end

Quando(/^clicar em Abrir uma conta$/) do
  click_button('u_0_e') 
end

Então(/^primeiro cadastro completo$/) do
  sleep(15)
end

=begin
@bday = Faker::Date.birthday(18,65)
strftime("%d/%m/%Y")
=end