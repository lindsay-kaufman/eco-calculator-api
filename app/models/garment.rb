class Garment < ApplicationRecord
  belongs_to :users
  has_and_belongs_to_many :textiles
end
