class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :text
      t.integer :rating
      t.integer :studio_id

      t.timestamps
    end
  end
end
