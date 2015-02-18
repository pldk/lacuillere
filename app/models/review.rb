class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false}
  validates :content, presence: true
  RATING = ['0', '1', '2', '3', '4','5']
end
