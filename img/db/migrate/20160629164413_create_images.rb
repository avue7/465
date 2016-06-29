class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filname
      t.string :private
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
