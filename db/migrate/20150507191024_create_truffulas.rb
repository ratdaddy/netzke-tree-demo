class CreateTruffulas < ActiveRecord::Migration
  def change
    create_table :truffulas do |t|
      t.integer :parent_id, index: true
      t.string :title

      t.timestamps null: false
    end
  end
end
