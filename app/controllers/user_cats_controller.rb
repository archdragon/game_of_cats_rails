class UserCatsController < ApplicationController
  layout "logged_in"

  def show
    @cat = ArchPresenter.present(current_cat)
  end
end