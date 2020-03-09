class DropGarments < ActiveRecord::Migration[5.2]
  def change
    drop_table :garments
  end
end
