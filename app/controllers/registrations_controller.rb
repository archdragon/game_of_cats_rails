class RegistrationsController < Devise::RegistrationsController
  layout "application"

  def new
    super
  end

  def create
    super
    CreateFirstCatService.call(cat_params: params[:cat], user: resource, on_error: :response_object)
  end

  def update
    super
  end

  private

  def after_sign_up_path_for(resource_)
    root_path
  end
end