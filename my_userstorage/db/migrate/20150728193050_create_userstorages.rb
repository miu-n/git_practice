class CreateUserstorages < ActiveRecord::Migration
  def change
    create_table :userstorages do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
