class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_one_attached :attachment_file
  has_many :offers, dependent: :delete_all
  has_many :orders

  validates :title, presence: { message: "no puede estar vacio" }
  validates :description, presence: { message: "no puede estar vacio" }
  validates :delivery, numericality: { only_integer: true, message: "debe ser un número" }
end
