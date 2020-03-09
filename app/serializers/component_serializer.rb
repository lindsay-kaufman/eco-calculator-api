class ComponentSerializer < ActiveModel::Serializer
  attributes :id
  has_one :garment
  has_one :textile
end
