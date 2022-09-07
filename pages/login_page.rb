require_relative 'page_element'
require_relative 'common_page'

class LoginPage < CommonPage

  def initialize(driver)
    @username_field = PageElement.new(:id, 'user-name')
    @password_field = PageElement.new(:id, 'password')
    @login_button = PageElement.new(:id, 'login-button')
    @driver = driver
  end

  def login(username, password)
    user_field = get_single_element_for(@username_field)
    user_field.send_keys(username)
    pass_field = get_single_element_for(@password_field)
    pass_field.send_keys(password)
    get_single_element_for(@login_button).click
  end

end
