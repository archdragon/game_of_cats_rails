require 'rails_helper'

feature 'Registration' do
  scenario 'user creates a new account' do
    @user = build(:user)
    sign_up_with(@user.name, @user.password)
  end
end
