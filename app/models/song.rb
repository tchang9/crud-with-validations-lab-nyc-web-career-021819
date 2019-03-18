class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: { scope: :release_year }
    validates :released, inclusion: { in: [true, false]}
    validates :release_year, presence: true, if: :released
    validates :release_year, numericality: { less_than_or_equal_to: DateTime.now.year }, allow_nil: true
end
