class AddUnderScoredToTruffulas < ActiveRecord::Migration
  def change
    add_column :truffulas, :under_scored, :string
  end
end
