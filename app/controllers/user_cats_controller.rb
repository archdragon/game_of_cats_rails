class UserCatsController < ApplicationController
  layout "logged_in"
  def show
    @cat = present(current_cat)
  end
end