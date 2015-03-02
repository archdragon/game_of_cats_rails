class CreateCat < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :user_id
      t.integer :fur, default: 0
      t.integer :eyes, default: 0
      t.integer :face, default: 0
      t.integer :energy, default: 100
      t.integer :interest1, default: 0
      t.integer :interest2, default: 0
      t.integer :interest3, default: 0
      t.timestamps
    end
  end
end
