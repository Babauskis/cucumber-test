class HomePage < BasePage
  attr_accessor :login_button
  def initialize
    @home_login_button = Element.new(:css, '.appButton-3GZ9-9')
    @input_login_email = Element.new(:css, '[type="email"]')
    @input_login_password = Element.new(:css, '[type="password"]')
    @submit_login = Element.new(:css, '[type="submit"]')
    @friends_button = Element.new(:css, '[name="PersonWaving"]')
    @button_skip_tutorial = Element.new(:css, '.btn-default')
  end

  def load
    visit('/')
  end

  def isVisible
    @home_login_button.visible?
  end

  def openLogIn
    @home_login_button.click
    @input_login_email.visible?
    @input_login_password.visible?
    @submit_login.visible?
  end

  def enterLoginEmail(email)
    @input_login_email.send_keys email
  end

  def enterLoginPassword(password)
    @input_login_password.send_keys password
  end

  def submitLogIn
    @submit_login.click
    @friends_button.visible?
  end

  def skipWelcomeToDiscord
    @button_skip_tutorial.visible?
    @button_skip_tutorial.click
  end
end