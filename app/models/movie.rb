class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks

  validates :title, :overview, uniqueness: true, presence: true
end
