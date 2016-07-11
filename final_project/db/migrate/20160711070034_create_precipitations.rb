class CreatePrecipitations < ActiveRecord::Migration
  def change
    create_table :precipitations do |t|
      t.integer :climate_id
      t.decimal :inches_per_year
      t.integer :year

      t.timestamps null: false
    end
  end
end
