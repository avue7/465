class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.integer :climate_id
      t.string :state_abbreviation
      t.references :state, index: true, foreign_key: true
      t.references :drought, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
