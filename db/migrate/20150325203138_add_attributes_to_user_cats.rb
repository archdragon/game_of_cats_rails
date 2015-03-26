class AddAttributesToUserCats < ActiveRecord::Migration
  def change
    add_column :user_cats, :attribute1, :integer, default: 1
    add_column :user_cats, :attribute2, :integer, default: 1
    add_column :user_cats, :attribute3, :integer, default: 1
  end
end
