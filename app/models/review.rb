class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, inclusion: { in: [0,1,2,3,4,5]}
  validates :content,  presence: true
  validates :restaurant_id, presence: true
  validates :rating, numericality:  {only_integer: true}
end
