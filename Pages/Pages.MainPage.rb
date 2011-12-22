require "#{File.dirname(__FILE__)}/Pages.Base.rb"
require "#{File.dirname(__FILE__)}/../Parms/Parms.Login.rb"

class MainPage < BrowserContainer
  # To change this template use File | Settings | File Templates.
  def loaded?
		@browser.title == get_title
  end

  def logged_in?
		logged_in_element.exists?
	end

  def get_title
    return "yama_chubby - Yahoo! Mail"
  end

  private
  def logged_in_element
		@browser.button(:class, "yucs-sprop-btn")
	end

end