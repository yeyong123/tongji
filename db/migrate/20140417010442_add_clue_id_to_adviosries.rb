class AddClueIdToAdviosries < ActiveRecord::Migration
  def change
    add_column :advisories, :clue_id, :integer
  end
end
