class Pricing < ApplicationRecord
  belongs_to :gig
  enum pricing_type: [:básico, :standard, :premium]
end
