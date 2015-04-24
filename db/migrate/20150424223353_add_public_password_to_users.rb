class AddPublicPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :public_password, :string
  end
end
