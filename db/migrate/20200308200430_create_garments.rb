class CreateGarments < ActiveRecord::Migration[5.2]
  def change
    create_table :garments do |t|
      t.references :users, foreign_key: true
      t.string :type
      t.string :description
      t.string :rating

      t.timestamps
    end
  end
end
