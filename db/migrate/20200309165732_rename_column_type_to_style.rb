class RenameColumnTypeToStyle < ActiveRecord::Migration[5.2]
  def change
    rename_column :garments, :type, :style
  end
end
