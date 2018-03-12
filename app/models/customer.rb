class Customer < ApplicationRecord
  validates :full_name, :phone_number, presence: true
  validates :name, length: { minimum: 2 }
end
