class AddLastActionAtToCats < ActiveRecord::Migration
  def change
    add_column :user_cats, :last_action_at, :datetime
  end
end
