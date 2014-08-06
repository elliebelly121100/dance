class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :studio
  
  validates_presence_of :studio
  validates_presence_of :text
  validates_presence_of :rating
  validates_presence_of :user_id

end
