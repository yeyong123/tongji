class AddSapToAdvisories < ActiveRecord::Migration
  def change
    add_column :advisories, :sap, :boolean, default: false
  end
end
