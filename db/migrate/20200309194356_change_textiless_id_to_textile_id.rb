class ChangeTextilessIdToTextileId < ActiveRecord::Migration[5.2]
  def change
    rename_column :components, :textiles_id, :textile_id
  end
end
