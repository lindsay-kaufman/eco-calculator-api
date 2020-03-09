class DropTextiles < ActiveRecord::Migration[5.2]
  def change
    drop_table :textiles
  end
end
