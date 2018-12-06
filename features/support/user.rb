require 'date'

module Users

    def  Users.log_in_form_user
      @log_in_form_user ||= User.new(args = {email: 'babauskis2@inbox.lv', password: 'Parole123'})
      @log_in_form_user
    end

    def  Users.sign_in_form_user
      @sign_in_form_user ||= User.new(args = {})
      @sign_in_form_user
    end

  class User
    attr_reader :email, :password
    def initialize(args = {})
      defaults = {email: DateTime.now.strftime('%Q')+'@test.com', password: DateTime.now}
      args = defaults.merge(args)
      @email = args[:email]
      @password = args[:password]
    end
  end
end