class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :img
      t.string :password_digest

      t.timestamps
    end
  end
end
