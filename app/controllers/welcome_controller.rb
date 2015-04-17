class WelcomeController < ApplicationController
  def index
    render template: "/welcome/static", layout: "logged_in" if user_signed_in?
  end
end
