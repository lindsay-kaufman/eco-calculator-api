class CreateJoinTableGarmentsTextiles < ActiveRecord::Migration[5.2]
  def change
    create_join_table :garments, :textiles do |t|
      # t.index [:garment_id, :textile_id]
      # t.index [:textile_id, :garment_id]
    end
  end
end
