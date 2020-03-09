class CreateComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :components do |t|
      t.references :garments, foreign_key: true
      t.references :textiles, foreign_key: true

      t.timestamps
    end
  end
end
