class Review < ApplicationRecord
  belongs_to :cocktail

  validates :content, presence: true
  validates :stars, numericality: {only_integer: true}
  validates :stars, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
