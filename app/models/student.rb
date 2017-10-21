class Student < ApplicationRecord
  has_many :subjects
  validates :s_class, presence: true
  validates :major, presence: true
end
