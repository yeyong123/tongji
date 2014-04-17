class AddKindIdToAdvisories < ActiveRecord::Migration
  def change
    add_column :advisories, :kind_id, :integer
  end
end
