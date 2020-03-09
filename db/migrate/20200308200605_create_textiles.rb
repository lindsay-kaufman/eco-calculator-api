class CreateTextiles < ActiveRecord::Migration[5.2]
  def change
    create_table :textiles do |t|
      t.string :name
      t.bigint :impact_score
      t.bigint :benchmark_score

      t.timestamps
    end
  end
end
