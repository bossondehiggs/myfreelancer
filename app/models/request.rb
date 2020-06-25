class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_one_attached :attachment_file

  validates :title, presence: { message: "No puede estar vacío" }
  validates :description, presence: { message: "No puede estar vacío" }
  validates :delivery, numericality: { only_integer: true, message: "debe ser un número" }
end
