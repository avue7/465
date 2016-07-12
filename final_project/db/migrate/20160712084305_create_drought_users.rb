class CreateDroughtUsers < ActiveRecord::Migration
  def change
    create_table :drought_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :droughts, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
