require "#{File.dirname(__FILE__)}/../Pages/Pages.Base.rb"

class Common < BrowserContainer
	def self.get_browser_name
		if ARGV[0] != nil
			return ARGV[0]
		else
			return "chrome"
		end
  end
  
=begin
Title: expand_browser
Descriptions:
      1. Expands the browser to be able to have a good visual of the page.  Without this some page objects/elements are not able to be seen.
Observations: This command works with browsers, Firefox 3.X, IE, and Chrome.
Requirements: N/A
Created By:
Created Date:
Modification History:
Modified by Date:
Notes:
=end
  def expand_browser
	  @browser.execute_script('window.resizeTo(1200,1000)')
  end

=begin
Title: open_browser
Descriptions:
      1. Open specific browser for site test
        Parameters:
          browser_name = firefox/ie/chrome
Observations: This command works with browsers, Firefox 3.X, IE, and Chrome.
Requirements: N/A
Created By:
Created Date:
Modification History:
Modified by Date:
Notes:
=end
	def self.open_browser(browser_name)
			case browser_name
				when "ff"
					$site = Site.new(Watir::Browser.new(:ff))
				when "ie"
					$site = Site.new(Watir::Browser.new(:ie))
				when "chrome"
					$site = Site.new(Watir::Browser.new(:chrome))
				when "safari"
					$site = Site.new(Watir::Browser.new(:safari))
				else
					$site = Site.new(Watir::Browser.new(:ff))
			end
  end
end