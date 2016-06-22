
class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :URL
      t.string :topic
      t.string :annotation

      t.timestamps null: false
    end
  end
end
