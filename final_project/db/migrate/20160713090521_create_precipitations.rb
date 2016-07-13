class CreatePrecipitations < ActiveRecord::Migration
  def change
    create_table :precipitations do |t|
      t.integer :climate_id
      t.decimal :per_year
      t.integer :year
      t.string :state_abbreviation
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
