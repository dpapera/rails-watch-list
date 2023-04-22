class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, :list_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
  validates :comment, length: { minimum: 6,
    too_short: "the comment needs t be at least 6 characters long" }
end
