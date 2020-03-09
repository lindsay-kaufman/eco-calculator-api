class GarmentSerializer < ActiveModel::Serializer
  attributes :id, :style, :description, :rating, :editable
  has_one :user
  has_many :components

  def editable
    scope == object.user
  end
end
