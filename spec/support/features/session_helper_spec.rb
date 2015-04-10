module Features
  module SessionHelpers
    def sign_up_with(name, password)
      visit '/'
      fill_in 'user[name]', with: name
      fill_in 'user[password]', with: password
      fill_in 'user[password_confirmation]', with: password
      find('#hidden-form-button .btn-primary').click
    end

    def sign_in_with(name, password)
      visit new_user_session_path
      fill_in 'Name', with: name
      fill_in 'Password', with: password
      click_button 'Sign in'
    end

    def create_user_and_sign_in
      user = create(:user)
      sign_in_with(user.name, user.password)
    end
  end
end