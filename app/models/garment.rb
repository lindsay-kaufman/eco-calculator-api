class Garment < ApplicationRecord
  belongs_to :user
  has_many :components, dependent: :destroy
  has_many :textiles, through: :components
end
