class Subject < ApplicationRecord
  belongs_to :students
  validates :title, presence: true
  validates :price, presence: true
end
