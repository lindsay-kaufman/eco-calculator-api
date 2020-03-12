class GarmentSerializer < ActiveModel::Serializer
  attributes :id, :style, :description, :rating, :textiles, :weighted, :editable
  has_one :user
  has_many :components
  has_many :textiles

  def editable
    scope == object.user
  end

  def textiles
    object.textiles
  end

  def weighted
    weightedScores = Array.new
    object.textiles.each do |textile| 
      object.components.each do |component|
        if component.percent != nil && textile.id == component.textile_id
          tmp = textile.impact_score * component.percent
          score = tmp / 100
          weightedScores.push(score)
        end
      end
    end
    weightedScores.reduce(:+)
  end

end

