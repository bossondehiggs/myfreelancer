class Pricing < ApplicationRecord
  belongs_to :gig
  enum pricing_type: [:basico, :standard, :premium]
end
