class CreateAnnualBurntAcres < ActiveRecord::Migration
  def change
    create_table :annual_burnt_acres do |t|
      t.decimal :acres_per_sq_miles
      t.integer :year
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
