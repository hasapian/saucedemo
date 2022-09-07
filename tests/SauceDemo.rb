require 'selenium-webdriver'
require_relative '../pages/login_page'
require_relative '../pages/products_page'
require_relative '../pages/cart_page'
require_relative '../helper/helper_methods'

@driver = Selenium::WebDriver.for :chrome
@url = "https://www.saucedemo.com/"
@driver.navigate.to @url

login_page = LoginPage.new(@driver)
login_page.login("standard_user", "secret_sauce")

products_page = ProductsPage.new(@driver)
products_page.add_all_products_to_cart
products_page.navigate_to_cart

carts_page = CartPage.new(@driver)
hash_array = carts_page.store_name_and_prices

hash_array.sort_by! { |hash| hash[:price] }.reverse!

helper = HelperMethods.new
helper.print_hash_array(hash_array)


