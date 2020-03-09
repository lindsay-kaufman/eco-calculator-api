class Garment < ApplicationRecord
  belongs_to :user
  has_many :components
  has_many :textiles, through: :components
end
