class Textile < ApplicationRecord
  has_many :components
  has_many :garments, through: :components
end
