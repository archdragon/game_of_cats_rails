class RegistrationsController < Devise::RegistrationsController
  layout "application"

  def new
    super
  end

  def create
    @cat_name = BeastElement.find_by_allowed_code_name(params[:element])

    super

    if @user.persisted?
      @beast = Beast.new(name: "Dragon", element: @beast_element.id, user: @user)
      @beast.save
    end
  end

  def update
    super
  end

  private

  def after_sign_up_path_for(resource_)
    root_path
  end
end