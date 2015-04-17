class UserCatsController < ApplicationController
  layout false
  before_action :authenticate_user!, except: [:generate_name]
  respond_to :json

  def show
    @cat = ArchPresenter.present(current_cat)
  end

  def generate_name
    cat_name = GenerateCatNameService.call
    render plain: cat_name
  end
end