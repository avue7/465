class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_name
      t.string :state_abbreviation
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
