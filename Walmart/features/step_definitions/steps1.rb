Dado(/^que eu acesse o Walmart$/) do
  visit('https://www.walmart.com.br')
end

Quando(/^eu pesquisar "([^"]*)"$/) do |arg1|
	$arg1 = 'TV 32'
	fill_in('ft', :with => $arg1)
	find("#site-topbar>div.wraper-right-icons>form>button").click
end

Quando(/^adicionar ao carrinho$/) do
# 	binding.pry
	find("#product-list>section>ul>li.column.item-0.shelf-product-item").click
	find("#buybox-Walmart>div.content.content-Walmart>div>div.buy-button-wrapper>button").click
	find('#navegaCarrinho').click
	sleep(10)
end

Então(/^confirmo que a TV está no carrinho$/) do
	visit('https://www2.walmart.com.br/checkout/content/carrinho/')
	page.should have_content("TV")
	page.should have_content("32")
end