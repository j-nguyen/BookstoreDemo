class Book < ApplicationRecord
  belongs_to :store

  validates :name, presence: true
  validates :stock, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
