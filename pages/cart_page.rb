require_relative 'page_element'
require_relative 'common_page'

class CartPage < CommonPage

  def initialize(driver)
    @product_name = PageElement.new(:css, ".inventory_item_name")
    @product_price = PageElement.new(:css, ".inventory_item_price")
    @driver = driver
  end

  def store_name_and_prices

    hash_array = []

    names = get_all_elements_for(@product_name)
    prices = get_all_elements_for(@product_price)

    index = 0
    while index < names.size
      name = names[index].text
      price = prices[index].text
      price = price[1..-1]
      hash = {:name => name, :price => price.to_f}
      hash_array.push(hash)
      index+=1
    end

    hash_array

  end

end
