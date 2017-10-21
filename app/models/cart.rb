class Cart < ApplicationRecord
  validates :uuid, presence: { message: "must be given please" }, uniqueness: { message: "must be unique" }
end
