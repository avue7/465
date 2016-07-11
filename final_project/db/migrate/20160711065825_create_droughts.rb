class CreateDroughts < ActiveRecord::Migration
  def change
    create_table :droughts do |t|
      t.integer :climate_id
      t.decimal :drought_severity
      t.integer :year

      t.timestamps null: false
    end
  end
end
