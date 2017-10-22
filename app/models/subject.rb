class Subject < ApplicationRecord
  belongs_to :student
  validates :title, presence: true
  validates :price, presence: true
end
