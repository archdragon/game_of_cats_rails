class RegistrationsController < Devise::RegistrationsController
  layout "application"

  def new
    super
  end

  def create
    super
    CreateFirstCatService.call(name: params[:cat_name], user: resource)
  end

  def update
    super
  end

  private

  def after_sign_up_path_for(resource_)
    root_path
  end
end