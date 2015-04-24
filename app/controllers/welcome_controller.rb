class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      render template: "/welcome/static", layout: "logged_in"
    else
      @default_password = PasswordGenerator.generate
    end
  end
end
