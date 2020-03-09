class GarmentSerializer < ActiveModel::Serializer
  attributes :id, :type, :description, :rating, :editable
  has_one :user
  has_and_belongs_to_many :textiles

  def editable
    scope == object.user
  end
end
