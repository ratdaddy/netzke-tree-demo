class AddCountToTruffulas < ActiveRecord::Migration
  def change
    add_column :truffulas, :count, :integer
  end
end
