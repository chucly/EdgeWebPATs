require "#{File.dirname(__FILE__)}/../Utilities/Common.rb"
require "#{File.dirname(__FILE__)}/Pages.Base.rb"
require "#{File.dirname(__FILE__)}/Pages.Login.rb"

class Site < BrowserContainer
  def login_page
    @login_page = LoginPage.new(@browser)
  end

  def main_page
    @main_page = MainPage.new(@browser)
  end
end