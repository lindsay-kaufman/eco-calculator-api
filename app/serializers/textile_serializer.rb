class TextileSerializer < ActiveModel::Serializer
  attributes :id, :name, :impact_score, :benchmark_score
end
