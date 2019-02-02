class Line < ApplicationRecord
  validates :text, presence: true
  validates :coche, presence: true
end
