class AddColumnToComponents < ActiveRecord::Migration[5.2]
  def change
    add_column :components, :percent, :integer
  end
end
