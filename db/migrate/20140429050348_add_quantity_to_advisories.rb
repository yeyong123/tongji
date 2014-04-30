class AddQuantityToAdvisories < ActiveRecord::Migration
  def change
    add_column :advisories, :quantity, :integer, default: 0
  end
end
