class ChangeGarmentsIdToGarmentId < ActiveRecord::Migration[5.2]
  def change
    rename_column :components, :garments_id, :garment_id
  end
end
