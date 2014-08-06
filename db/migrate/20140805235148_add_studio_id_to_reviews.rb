class AddStudioIdToReviews < ActiveRecord::Migration
  def change
     add_column :reviews, :studio_id, :integer
  end
end
