class Offer < ApplicationRecord
  belongs_to :request
  belongs_to :user

  enum status: [:pendiente, :aceptada, :rechazada]
  validates :amount, :days, numericality: { only_integer: true, message: "debe ser un número" }
end
