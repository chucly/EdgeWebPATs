
class LoginParms
  def self.get_site_url
		if ARGV[1] != nil
			return ARGV[1]
		else
		  return DEFAULT_SITE_URL
		end
	end

	def self.get_username
		return LOGIN_USERNAME
	end

	def self.get_password
		return LOGIN_PASSWORD
  end

  def self.txtusername
		return LOGIN_TXT_USERNAME
	end

	def self.txtpassword
		return LOGIN_TXT_PASSWORD
	end

  def self.btnSignIn
		return LOGIN_BTN_SIGNIN
  end

  def self.get_page_title (site_name)
    case site_name
      when "identifix" then IDENTIFIX_LOGIN_PAGE_TITLE
      when "napafix" then NAPAFIX_LOGIN_PAGE_TITLE
      when "carquestdirecthit" then CARQUEST_LOGIN_PAGE_TITLE
      when "worldpacassist" then WORLDPAC_LOGIN_PAGE_TITLE
      when "tisfix"	then TIS_LOGIN_PAGE_TITLE
      else IDENTIFIX_LOGIN_PAGE_TITLE
    end
  end

	private
=begin
  IDENTIFIX_LOGIN_PAGE_TITLE = "Direct-Hit"
	NAPAFIX_LOGIN_PAGE_TITLE = "NAPAFIX"
  CARQUEST_LOGIN_PAGE_TITLE = "CARQUEST Direct-Hit"
  WORLDPAC_LOGIN_PAGE_TITLE = "WOLRDPAC Assist"
  TIS_LOGIN_PAGE_TITLE = "Direct-Hit for TIS"
=end
  DEFAULT_SITE_URL = "www.mail.yahoo.com"
	LOGIN_USERNAME = "yama_chubby"
	LOGIN_PASSWORD = "1234567"
  LOGIN_TXT_USERNAME ="username"
  LOGIN_TXT_PASSWORD = "passwd"
  LOGIN_BTN_SIGNIN =".save"

end