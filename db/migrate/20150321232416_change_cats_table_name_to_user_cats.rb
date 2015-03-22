class ChangeCatsTableNameToUserCats < ActiveRecord::Migration
  def change
    rename_table :cats, :user_cats
  end
end
