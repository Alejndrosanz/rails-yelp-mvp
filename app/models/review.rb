class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, presence: { message: ' cannot be blank' }
  validates :rating, inclusion: { in: 0..5, message: ' should be between 0 to 5', allow_nil: false }
  validates :rating, numericality: { only_integer: true, message: ' should be a number' }
end
