class CreateUserpages < ActiveRecord::Migration
  def change
    create_table :userpages do |t|
      t.string :url
      t.string :pageheader

      t.timestamps null: false
    end
  end
end
