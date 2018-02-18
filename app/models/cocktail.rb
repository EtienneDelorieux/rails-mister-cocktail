class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader

  include PgSearch

  pg_search_scope :search,
   against: [
     [:name, 'A'],
     [:description, 'B']
   ],
   using: {
   tsearch: { prefix: true }
   }
end
