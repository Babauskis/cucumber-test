class LoginTest
    def initialize(pages)
        @pages = pages
    end

    def load_home_page
        @pages.page_home.load
        @pages.page_home.isVisible
    end
    
    def open_log_in
        @pages.page_home.openLogIn
    end

    def enter_login_data()
        user = Users.log_in_form_user
        @pages.page_home.enterLoginEmail(user.email)
        @pages.page_home.enterLoginPassword(user.password)
    end

    def submit_login_form
        @pages.page_home.submitLogIn
    end

    def skip_welcome_screen
        @pages.page_home.skipWelcomeToDiscord
    end
end