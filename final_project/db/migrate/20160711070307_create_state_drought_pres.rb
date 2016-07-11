class CreateStateDroughtPres < ActiveRecord::Migration
  def change
    create_table :state_drought_pres do |t|
      t.integer :climate_id, foreign_key: true
      t.string :state_abbreviation, foreign_key: true

      t.timestamps null: false
    end
  end
end
