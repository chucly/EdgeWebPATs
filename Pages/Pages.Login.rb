require "#{File.dirname(__FILE__)}/Pages.Base.rb"
require "#{File.dirname(__FILE__)}/Pages.MainPage.rb"
require "#{File.dirname(__FILE__)}/../Parms/Parms.Login.rb"

class LoginPage < BrowserContainer
  # To change this template use File | Settings | File Templates.
  def loaded?
		@browser.title == title
	end

	def open
		@browser.goto LoginParms.get_site_url()
		self
	end

	def title
		_sitename = @browser.url.split(".")[1]
		LoginParms.get_page_title(_sitename)
	end

=begin
Descriptions: Login into site with given username and password
              user = username
              pass = password
Observations:
Requirements: N/A
Created By:
Created Date:
Modification History:
Modified by Date Notes:
=end
	def login_as(user, pass)
		user_field.set user
		password_field.set pass

		go_button.fire_event("onclick")

    begin
      next_page = MainPage.new(@browser)
		  Watir::Wait.until { next_page.loaded? }
		  return next_page
    end
	end

  private

	def user_field
		@browser.text_field(:id => LoginParms.txtusername)
	end

	def password_field
		@browser.text_field(:id => LoginParms.txtpassword)
	end

  def go_button
    @browser.button(:id => LoginParms.btnSignIn)
  end
end