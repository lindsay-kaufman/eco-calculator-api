class DropJoinsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :garments_textiles
  end
end
