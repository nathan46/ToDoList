class Line < ApplicationRecord
  validates :id, presence: true
  validates :text, presence: true
  validates :coche, presence: true
end
