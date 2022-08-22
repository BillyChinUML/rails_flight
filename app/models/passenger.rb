class Passenger < ApplicationRecord
  belongs_to :flight
  belongs_to :booking
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, length: { minimum: 1 }
end
