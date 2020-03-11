class GarmentSerializer < ActiveModel::Serializer
  attributes :id, :style, :description, :rating, :editable, :textiles
  has_one :user
  has_many :components
  has_many :textiles

  def editable
    scope == object.user
  end

  def textiles
    object.textiles
  end

end
