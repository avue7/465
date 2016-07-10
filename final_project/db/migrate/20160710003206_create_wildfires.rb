class CreateWildfires < ActiveRecord::Migration
  def change
    create_table :wildfires do |t|
      t.decimal :burnt_acreage
      t.integer :year
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
