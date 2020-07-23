class NearestStation < ApplicationRecord
  validates :line, presence: true
  validates :station, presence: true
  validates :on_foot, presence: true
  belongs_to :property
end
