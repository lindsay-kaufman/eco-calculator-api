class ComponentSerializer < ActiveModel::Serializer
  attributes :id, :percent
  has_one :garment
  has_one :textile
end
