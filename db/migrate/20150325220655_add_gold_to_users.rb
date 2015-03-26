class AddGoldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gold, :integer, default: 1
  end
end
