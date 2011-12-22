require 'watir-webdriver'
require 'test/unit'				#includes Ruby's test case functionality
require "#{File.dirname(__FILE__)}/../../Utilities/Common.rb"
require "#{File.dirname(__FILE__)}/../../Utilities/Assertion.rb"
require "#{File.dirname(__FILE__)}/../../Pages/Site.rb"
require "#{File.dirname(__FILE__)}/../../Parms/Parms.Login.rb"

include LogAssertions
include Watir					#include Watir object


=begin
Test Case Number(s): N/A
Title: Login with valid account
Descriptions: Login with site with a given username and password specified from
              LoginParms.get_username()) and  LoginParms.get_password()
Observations:
Requirements: N/A
Created By:
Created Date:
Modification History:
Modified by Date Notes:
=end

class A01Login < Test::Unit::TestCase
	@@specified_browser = Common.get_browser_name()

	def setup
		if $site == nil
      Common.open_browser(@@specified_browser)
		end
	end

	def test_login_validaccount_true
    begin
      @login_page = $site.login_page.open

      @cvp = @login_page.login_as LoginParms.get_username, LoginParms.get_password

      assert_true(@cvp.logged_in?, "Passed", "FAILED: can not login", __method__)
    rescue Exception => e
      raise Exception
      puts "Test case failed, you have logged in with wrong username or password"
    end
  end
end