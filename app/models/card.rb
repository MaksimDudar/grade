class Card < ApplicationRecord
  validates  :strana, :strana1, :truck, :driver, :manager, :rating, presence: true
end
